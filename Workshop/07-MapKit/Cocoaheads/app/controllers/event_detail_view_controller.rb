class EventDetailViewController < UIViewController


  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ))
    @event_date_label = labelForEventDate
    @event_address_label = labelForEventAddress
    @first_talk_label = labelForFirstTalk
    @second_talk_label = labelForSecondTalk
    @location_label = labelForLocation

    self.view.addSubview( @event_date_label )
    self.view.addSubview( @event_address_label )
    self.view.addSubview( @first_talk_label )
    self.view.addSubview( @second_talk_label )
    self.view.addSubview( @location_label )
  end  
    
  def labelForEventDate
    event_date_label = UILabel.alloc.initWithFrame([ [25,20], [140, 100]])
    event_date_label.numberOfLines = 2
    event_date_label.backgroundColor = UIColor.clearColor
    event_date_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_date_label    
  end

  def labelForEventAddress
    event_address_label = UILabel.alloc.initWithFrame([ [165,20], [140, 100]])
    event_address_label.numberOfLines = 2
    event_address_label.backgroundColor = UIColor.clearColor
    event_address_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_address_label
  end

  def labelForFirstTalk
    first_talk_label = UILabel.alloc.initWithFrame([ [25,180], [200, 100]])
    first_talk_label.numberOfLines = 2
    first_talk_label.backgroundColor = UIColor.clearColor
    first_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    first_talk_label
  end

  def labelForSecondTalk
    second_talk_label = UILabel.alloc.initWithFrame([ [25,260], [200, 100]])
    second_talk_label.numberOfLines = 2
    second_talk_label.backgroundColor = UIColor.clearColor
    second_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    second_talk_label
  end

  def labelForLocation
    label_for_location = UILabel.alloc.initWithFrame([ [25,60], [290, 100]])
    label_for_location.backgroundColor = UIColor.clearColor
    label_for_location.font = UIFont.fontWithName('Helvetica', size:10.0)    
    label_for_location
  end  

  def buttonForBooking
    
  end  

  def viewDidLoad
    super
    self.title = "November meeting"
    @event_date_label.text = "Saturday 14th November 2012"
    @event_address_label.text = "Main Street 107, Capital City"
    @first_talk_label.text = "Introduction to CocoaTouch John Doe"
    @second_talk_label.text = "Mastering CoreLocation Will Smith"
    requestUserCurrenLocation
  end

  def viewDidUnload
    super    
    @location_manager.stopUpdatingLocation
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end

  

  def requestUserCurrenLocation
    if (CLLocationManager.locationServicesEnabled)
      @location_manager = CLLocationManager.alloc.init
      @location_manager.delegate = self

      @location_manager.purpose = "To provide functionality based on user's current location" 
      @location_manager.startUpdatingLocation
    else
      showAlertWithTitle('Location Error', 'Please enable the Location Services for this app in Settings.')  
    end    
  end  

  def showAlertWithTitle(title, andMessage:message)
    alert_view = UIAlertView.alloc.initWithTitle( title, 
                                                  message:message, 
                                                  delegate:nil, 
                                                  cancelButtonTitle:"Ok", 
                                                  otherButtonTitles:nil)
    alert_view.show
  end 

  #location manager delegate methods
  def locationManager(manager, didUpdateToLocation:newLocation, fromLocation:oldLocation)    
    @location_label.text = "Latitude:#{newLocation.coordinate.latitude} Longitude:#{newLocation.coordinate.longitude}"   
  end

  def locationManager(manager, didFailWithError:error)
    showAlertWithTitle( "Error", andMessage:error.description)
  end
end
