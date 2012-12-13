class RootLViewController < UIViewController
  
 #dafault 
  def set_default_time_zone

    @defaultTimeZoneLabel.text =  NSTimeZone.localTimeZone.name
    @converTimeZoneLabel.text =  NSTimeZone.localTimeZone.name

  end

  def set_default_time

    defaultTimeZone = NSTimeZone.localTimeZone

    formatter = NSDateFormatter.alloc.init
    formatter.setDateFormat('HH:mm')
    formatter.setTimeZone(defaultTimeZone) 
    dateFormat = formatter.stringFromDate(NSDate.date)
    @defaultTimeLabel.text = "UTC "+(NSTimeZone.localTimeZone.secondsFromGMT/3600).to_s + "  "+dateFormat
    @convertTimeLabel.text = "UTC "+(NSTimeZone.localTimeZone.secondsFromGMT/3600).to_s + "  "+dateFormat

    @defaultDate = formatter.dateFromString(dateFormat)
    @convertDate = formatter.dateFromString(dateFormat)

  end

  
  def present_local_zone_picker(sender)
    
    button = sender
    @zonePicker.frame = CGRectMake(0,244, 320, 216)
    @currentZoneLabel = @defaultTimeZoneLabel

    if @zonePicker.isHidden
      
      @zonePicker.hidden = false
      button.setTitle("Choose",forState:UIControlStateNormal)

    else 
      
      @zonePicker.hidden = true
      button.setTitle("Select",forState:UIControlStateNormal)

      localZone = NSTimeZone.timeZoneWithName(@defaultTimeZoneLabel.text)

      formatter = NSDateFormatter.alloc.init
      formatter.setDateFormat('HH:mm')
      formatter.setTimeZone(localZone) 
      dateFormat = formatter.stringFromDate(NSDate.date)
      @defaultDate = formatter.dateFromString(dateFormat)
      
      @defaultTimeLabel.text = "UTC "+(localZone.secondsFromGMT/3600).to_s + "  "+ dateFormat

    end

    calculate_diference_between_time_zones

  end

  def present_convert_zone_picker(sender)
    
    button = sender
    @zonePicker.frame = CGRectMake(0,0, 320, 216)
    @currentZoneLabel = @converTimeZoneLabel

    if @zonePicker.isHidden
      
      @zonePicker.hidden = false
      button.setTitle("Choose",forState:UIControlStateNormal)



    else 
      
      @zonePicker.hidden = true
      button.setTitle("Select",forState:UIControlStateNormal)

      convertZone = NSTimeZone.timeZoneWithName(@converTimeZoneLabel.text)

      formatter = NSDateFormatter.alloc.init
      formatter.setDateFormat('HH:mm')
      formatter.setTimeZone(convertZone) 
      dateFormat = formatter.stringFromDate(NSDate.date)
      
      @convertDate = formatter.dateFromString(dateFormat)


      @convertTimeLabel.text = "UTC "+(convertZone.secondsFromGMT/3600).to_s + "  "+ dateFormat

    end

    calculate_diference_between_time_zones

  end


 
  def calculate_diference_between_time_zones

    calendar = NSCalendar.alloc.initWithCalendarIdentifier(NSGregorianCalendar)
    components = calendar.components(NSHourCalendarUnit, fromDate:@defaultDate, toDate:@convertDate, options:0)
    
    puts components.hour  
    
  end




  def numberOfComponentsInPickerView(pickerView) 

    1

  end

  def pickerView(pickerView,numberOfRowsInComponent:component)
    
    NSTimeZone.knownTimeZoneNames.count

  end

  def pickerView(pickerView, titleForRow:row,forComponent:component) 

    NSTimeZone.knownTimeZoneNames[row]

  end

  def pickerView(pickerView, didSelectRow:row, inComponent:component)
      
    @currentZoneLabel.text = NSTimeZone.knownTimeZoneNames[row]

  end


  def viewDidLoad


    view.backgroundColor = UIColor.scrollViewTexturedBackgroundColor
    
   

    @defaultTimeZoneLabel = location_label(10,40)

    
    @defaultTimeLabel = time_label(10,70)


    chooseLocalButton = select_time_zone_Button(200,50)
    chooseLocalButton.addTarget(self, action: :'present_local_zone_picker:', forControlEvents:UIControlEventTouchUpInside)


    @converTimeZoneLabel =  location_label(10,230)


    @convertTimeLabel = time_label(10,260)
    chooseconvertButton = select_time_zone_Button(200,240)

    chooseconvertButton.addTarget(self, action: :'present_convert_zone_picker:', forControlEvents:UIControlEventTouchUpInside)

    

   


    @zonePicker = zone_picker(0,244)

    @zonePicker.dataSource = self
    @zonePicker.delegate = self


    view.addSubview(@defaultTimeZoneLabel)

    view.addSubview(@defaultTimeLabel) 
    
    view.addSubview(chooseLocalButton) 


    view.addSubview(@converTimeZoneLabel) 
    view.addSubview(@convertTimeLabel)

    view.addSubview(chooseconvertButton)

    
    view.addSubview(@zonePicker)


    set_default_time_zone
    set_default_time
           
  end

end
