class NextEventViewController < UIViewController
  

  def loadView
    self.view = UIView.alloc.init
    self.view.backgroundColor = UIColor.whiteColor
    @next_event_name_label = labelWithNextEventName
    @days_left_label = labelWithDaysLeft
    self.view.addSubview( @next_event_name_label )
    self.view.addSubview( @days_left_label )
    
    self.view.addSubview( buttonForSignIn )
    self.view.addSubview( buttonForSignUp )
  end

  def labelWithNextEventName
    next_event_name_label = UILabel.alloc.initWithFrame( [[25, 25], [295, 40]] )
    #list of font names available in iOS http://iosfonts.com
    next_event_name_label.font = UIFont.fontWithName("Helvetica", size:22)
    next_event_name_label.textAlignment = UITextAlignmentCenter
    next_event_name_label
  end

  def labelWithDaysLeft
    days_left_label = UILabel.alloc.initWithFrame( [[25, 200], [200, 40]] )    
    days_left_label.font = UIFont.fontWithName("Thonburi", size:20)    
    days_left_label
  end  

  def buttonForSignIn
    sign_in_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    sign_in_button.frame = [[15, 250], [295, 40]]
    sign_in_button.setTitle("I have an account, sign-in to book", forState:UIControlStateNormal)
    sign_in_button.setTitle("is Highlighted", forState:UIControlStateHighlighted)

    sign_in_button.addTarget(self, action:'sign_in:', forControlEvents:UIControlEventTouchUpInside)
  end  

  def buttonForSignUp
    sign_up_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    sign_up_button.frame = [[15, 310], [295, 40]]
    sign_up_button.setTitle("Don't have an account, sign-up", forState:UIControlStateNormal)
  end  
    
  def viewDidLoad
    super
    @days_left_label.text = "20 Days Left"
    @next_event_name_label.text = "November meeting."    
  end

  def viewDidUnload
    super
    # Release any retained subviews of the main view.
  end

  


  def shouldAutorotateToInterfaceOrientation(interfaceOrientation)
    interfaceOrientation == UIInterfaceOrientationPortrait
  end

  def sign_in( button )
    p "sign in button pressed #{button}"
  end
     
end
