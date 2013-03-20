module UI_Elements 

  def time_label(xPosition,yPosition)

    label = UILabel.alloc.initWithFrame(CGRectMake(xPosition,yPosition,200,50))
    label.backgroundColor = UIColor.clearColor;
    label.text = "UTC offset"
    label.textColor = UIColor.whiteColor;
    label.font = UIFont.fontWithName("Noteworthy-Bold",size:18)
    label

  end

  def select_time_zone_Button (xPosition,yPosition)
    
    button = UIButton.buttonWithType(UIButtonTypeCustom)
    button.frame = CGRectMake(xPosition,yPosition,85,73)
    button.setBackgroundImage (UIImage.imageNamed("btnSelect.png"),forState:UIControlStateNormal)
    button.setTitle("Convert",forState:UIControlStateNormal)
    button

  end


  def time_zone_text_field (xPosition,yPosition)

    textField = UITextField.alloc.initWithFrame(CGRectMake(xPosition,yPosition, 170, 30))
    textField.borderStyle = UITextBorderStyleRoundedRect
    textField.font = UIFont.systemFontOfSize(15)
    #textField.setUserInteractionEnabled (false)

    textField

  end

  def ui_stepper (xPosition,yPosition)

    stepper = UIStepper.alloc.initWithFrame (CGRectMake(xPosition,yPosition, 30, 30))
    
    minusUnSelected = UIImage.imageNamed("btnMinusUnselected.png")
    minusSelected = UIImage.imageNamed("btnMinusSelected.png")
    plusUnSelected  = UIImage.imageNamed("btnPlusUnselected.png")
    plusSelected  = UIImage.imageNamed("btnPlusSelected.png")
    divider = UIImage.imageNamed("bgDivider.png")

    stepper.setBackgroundColor(UIColor.clearColor)
    stepper.setDecrementImage(minusUnSelected, forState:UIControlStateNormal)
    stepper.setDecrementImage(minusSelected, forState:UIControlStateHighlighted)

    stepper.setIncrementImage(plusUnSelected, forState:UIControlStateNormal)
    stepper.setIncrementImage(plusSelected, forState:UIControlStateHighlighted)

    stepper.setDividerImage(divider, forLeftSegmentState:UIControlStateNormal, rightSegmentState:UIControlStateNormal)

    stepper.addTarget(self ,action: :'stepperPressed:', forControlEvents:UIControlEventValueChanged)

    stepper

  end

end
