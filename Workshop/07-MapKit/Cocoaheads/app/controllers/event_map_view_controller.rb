class EventMapViewController < UIViewController

  attr_accessor :event_coordinate


  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ))
    @map_view_for_event = mapViewWithEventLocation
    self.view.addSubview( @map_view_for_event )
  end
    
  def viewDidLoad
    super
    # Do any additional setup after loading the view.
  end

  def mapViewWithEventLocation
    map_view_for_event = MKMapView.alloc.initWithFrame( [[0,0], [320, 416]] )
    map_view_for_event.mapType = MKMapTypeStandard  
    map_view_for_event.showsUserLocation = true  
    map_view_for_event
  end  

  def viewDidUnload
    super
    # Release any retained subviews of the main view.
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end
end
