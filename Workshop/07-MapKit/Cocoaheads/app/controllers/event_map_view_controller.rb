class EventMapViewController < UIViewController

  attr_accessor :event


  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ))
    @map_view_for_event = mapViewWithEventLocation
    self.view.addSubview( @map_view_for_event )
    #TODO meter toggle button para cambiar tipo de mapa
    #TODO meter textfield al annotation para usar un uitextfielddelegate atrapar el enter y cambiar el label
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

  def viewDidLoad
    super    
    annotation = EventAnnotation.alloc.initWithCoordinate(@event.location, title:event.name, andSubTitle:event.address)
    @map_view_for_event.addAnnotation(annotation)    
    region = MKCoordinateRegionMake(@event.location, MKCoordinateSpanMake(0.7, 0.7)) 
    @map_view_for_event.setRegion(region)
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end
end
