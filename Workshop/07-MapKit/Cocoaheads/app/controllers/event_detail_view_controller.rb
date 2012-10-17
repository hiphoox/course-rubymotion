class EventDetailViewController < UIViewController

  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ))
    @event_date_label = labelForEventDate
    @event_address_label = labelForEventAddress
    @first_talk_label = labelForFirstTalk
    @second_talk_label = labelForSecondTalk
    @location_label = labelForLocation
    @map_view_for_event = mapViewForEvent
    
    self.view.addSubview( @event_date_label )
    self.view.addSubview( @event_address_label )
    self.view.addSubview( @first_talk_label )
    self.view.addSubview( @second_talk_label )
    self.view.addSubview( @location_label )
    self.view.addSubview( @map_view_for_event )
    self.view.addSubview( buttonForMap )
    self.view.addSubview( buttonForBooking )
    
  end  
    
  def labelForEventDate
    event_date_label = UILabel.alloc.initWithFrame([ [25,10], [140, 100]])
    event_date_label.numberOfLines = 2
    event_date_label.backgroundColor = UIColor.clearColor
    event_date_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_date_label    
  end

  def labelForEventAddress
    event_address_label = UILabel.alloc.initWithFrame([ [165,10], [140, 100]])
    event_address_label.numberOfLines = 2
    event_address_label.backgroundColor = UIColor.clearColor
    event_address_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_address_label
  end

  def labelForFirstTalk
    first_talk_label = UILabel.alloc.initWithFrame([ [25,200], [200, 100]])
    first_talk_label.numberOfLines = 2
    first_talk_label.backgroundColor = UIColor.clearColor
    first_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    first_talk_label
  end

  def labelForSecondTalk
    second_talk_label = UILabel.alloc.initWithFrame([ [25,255], [200, 100]])
    second_talk_label.numberOfLines = 2
    second_talk_label.backgroundColor = UIColor.clearColor
    second_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    second_talk_label
  end

  def labelForLocation
    label_for_location = UILabel.alloc.initWithFrame([[25,80], [290, 40]])
    label_for_location.backgroundColor = UIColor.clearColor
    label_for_location.font = UIFont.fontWithName('Helvetica', size:10.0)    
    label_for_location
  end  

  def buttonForMap
    button_for_map = UIButton.buttonWithType( UIButtonTypeRoundedRect )
    button_for_map.frame = [[25, 350], [110, 40]]
    button_for_map.setTitle("View Map", forState:UIControlStateNormal)
    button_for_map.addTarget(self, action:'viewMap', forControlEvents:UIControlEventTouchUpInside)
    
    button_for_map
  end  

  def buttonForBooking
    button_for_booking = UIButton.buttonWithType( UIButtonTypeRoundedRect )
    button_for_booking.frame = [[180, 350], [110, 40]]
    button_for_booking.setTitle("Book Event", forState:UIControlStateNormal)
    button_for_booking.addTarget(self, action:'viewMap', forControlEvents:UIControlEventTouchUpInside)
    
    button_for_booking
  end  

  def viewMap
    event_map_view_controller = EventMapViewController.alloc.init
    event_map_view_controller.event = @event
    self.navigationController.pushViewController(event_map_view_controller, animated:true)
  end  

  def mapViewForEvent
    map_view_for_event = MKMapView.alloc.initWithFrame( [[25,130], [270, 80]] )
    map_view_for_event.mapType = MKMapTypeStandard    
    map_view_for_event
  end  
   
  def viewDidLoad

    super
    self.title = "November meeting"
    @event_date_label.text = "Saturday 14th November 2012"
    @event_address_label.text = "Main Street 107, Capital City"
    @first_talk_label.text = "Introduction to CocoaTouch John Doe"
    @second_talk_label.text = "Mastering CoreLocation Will Smith"
    @event = Event.mock_event
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
                                                  otherButtonTitles:nil )
    alert_view.show
  end 

  #location manager delegate methods
  def locationManager(manager, didUpdateToLocation:newLocation, fromLocation:oldLocation)    
    @location_label.text = "Latitude:#{newLocation.coordinate.latitude} Longitude:#{newLocation.coordinate.longitude}"   
  end

  def locationManager(manager, didFailWithError:error)
    showAlertWithTitle( "Error", andMessage:error.description )
  end
end
