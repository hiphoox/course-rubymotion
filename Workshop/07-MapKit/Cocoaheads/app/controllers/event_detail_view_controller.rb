class EventDetailViewController < UIViewController


  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ))
    @event_date_label = labelWithEventDate
    @event_address_label = labelWithEventAddress
    @first_talk_label = labelWithFirstTalk
    @second_talk_label = labelWithSecondTalk
    
    self.view.addSubview( @event_date_label )
    self.view.addSubview( @event_address_label )
    self.view.addSubview( @first_talk_label )
    self.view.addSubview( @second_talk_label )
  end  


  
  
  def labelWithEventDate
    event_date_label = UILabel.alloc.initWithFrame([ [25,20], [140, 100]])
    event_date_label.numberOfLines = 2
    event_date_label.backgroundColor = UIColor.clearColor
    event_date_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_date_label

    
  end

  def labelWithEventAddress
    event_address_label = UILabel.alloc.initWithFrame([ [165,20], [140, 100]])
    event_address_label.numberOfLines = 2
    event_address_label.backgroundColor = UIColor.clearColor
    event_address_label.font = UIFont.fontWithName('Helvetica', size:16.0)    
    event_address_label
  end

  def labelWithFirstTalk
    first_talk_label = UILabel.alloc.initWithFrame([ [25,180], [200, 100]])
    first_talk_label.numberOfLines = 2
    first_talk_label.backgroundColor = UIColor.clearColor
    first_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    first_talk_label
  end

  def labelWithSecondTalk
    second_talk_label = UILabel.alloc.initWithFrame([ [25,260], [200, 100]])
    second_talk_label.numberOfLines = 2
    second_talk_label.backgroundColor = UIColor.clearColor
    second_talk_label.font = UIFont.fontWithName('Helvetica', size:18.0)    
    second_talk_label
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
  end

  def viewDidUnload
    super
    # Release any retained subviews of the main view.
  end

  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end
end
