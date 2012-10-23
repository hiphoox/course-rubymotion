class NextEventViewController < UIViewController
  
  def init
    p 'Initializing NextEventViewController'
    super
    @days_left = 0
    self
  end  

  def loadView    
    #TODO meter todo en un scrollview con delegate = self
    
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.colorWithPatternImage( UIImage.imageNamed( "handmadepaper" ) )
    
    self.view.addSubview( imageViewWithStars )

    @next_event_name_label = labelWithNextEventName
    @days_left_view = viewWithDaysLeft
    self.view.addSubview( @next_event_name_label )
    self.view.addSubview( @days_left_view )
    
    self.view.addSubview( buttonForSignIn )
    self.view.addSubview( buttonForSignUp )
    self.view.addSubview( buttonToChangeDaysLeft )

  end

  def labelWithNextEventName
    next_event_name_label = UILabel.alloc.initWithFrame( [[25, 25], [295, 40]] )
    #list of font names available in iOS http://iosfonts.com
    next_event_name_label.font = UIFont.fontWithName("Helvetica", size:22)
    next_event_name_label.backgroundColor = UIColor.clearColor
    next_event_name_label.textAlignment = UITextAlignmentCenter
    next_event_name_label.textColor = UIColor.colorWithRed(170.0/255.0, green:32.0/255.0, blue:0, alpha:1.0)
    next_event_name_label

  end

  def viewWithDaysLeft
    days_left_view = FlipCountView.alloc.initWithFrame( [[25, 200], [68, 74]] )    
    
    days_left_view
  end  

  def imageViewWithStars
    stars_imageview = UIImageView.alloc.initWithImage( UIImage.imageNamed('stars.png') )
    stars_imageview.alpha = 0.4
    stars_imageview
  end  

  def buttonForSignIn
    sign_in_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    sign_in_button.frame = [[15, 280], [295, 40]]
    sign_in_button.setTitle("I have an account, sign-in to book", forState:UIControlStateNormal)
    sign_in_button.setTitle("is Highlighted", forState:UIControlStateHighlighted)

    sign_in_button.addTarget(self, action:'sign_in:', forControlEvents:UIControlEventTouchUpInside)
    sign_in_button.tintColor = UIColor.yellowColor
    sign_in_button
  end  

  def buttonForSignUp
    sign_up_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)    
    sign_up_button.frame = [[15, 335], [295, 40]]    
    sign_up_button.setTitle("Don't have an account, sign-up", forState:UIControlStateNormal)
    sign_up_button.tintColor = UIColor.redColor
    
    sign_up_button
  end  

  def buttonToChangeDaysLeft
    change_days_left_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)    
    change_days_left_button.frame = [[15, 390], [295, 40]]    
    change_days_left_button.setTitle("Change days left", forState:UIControlStateNormal)    
    change_days_left_button.addTarget(self, action:'change_days_left', forControlEvents:UIControlEventTouchUpInside)
    change_days_left_button
  end  

  def change_days_left
    @days_left = @days_left + 1 
    @days_left_view.days_left = @days_left
    @days_left_view.setNeedsDisplay
  end  
    
  def viewDidLoad    
    super
    
    @next_event_name_label.text = "November meeting."    
  end

  
  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    #change this to enable rotation to landscape orientation    
    interfaceOrientation == UIInterfaceOrientationPortrait
  end

  def sign_in( button )
    p "sign in button pressed #{button}"
  end
     
end
