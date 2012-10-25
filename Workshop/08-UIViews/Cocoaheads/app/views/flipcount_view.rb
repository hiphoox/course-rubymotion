class FlipCountView < UIView
	
  attr_accessor :days_left

  def initWithFrame(frame)
    super
    self.backgroundColor = UIColor.clearColor
    @days_left = 0

    #TODO agregar imagen de fondo
    #TODO pintar borde interior con CoreGraphics
    self
  end

  def drawRect(rect)
    drawBackgroundImageInRect rect
    drawDaysLeftLegendInRect rect
    drawDaysLeftInRect rect
  end


  def drawBackgroundImageInRect( rect )
    
    backgroundImage = UIImage.imageNamed( "flipDateImage" )
    backgroundImage.drawInRect( rect )
  end

  def drawDaysLeftLegendInRect( rect )
    small_font = UIFont.fontWithName("HelveticaNeue", size:12)
    "days left".drawAtPoint([11, rect.size.height - 24 ], withFont:small_font)
  end	

  def drawDaysLeftInRect( rect )
    big_font = UIFont.fontWithName("HelveticaNeue-Bold", size:54)
    @days_left.to_s.drawAtPoint([20, 0 ], withFont:big_font)
  end  

    

end