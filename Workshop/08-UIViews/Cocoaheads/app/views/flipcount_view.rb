class FlipCountView < UIView
	
  attr_accessor :days_left

  def initWithFrame(frame)
    super
    self.backgroundColor = UIColor.whiteColor
    @days_left = 0
    @container_view = viewWithMainContainerUsingRect( frame )
    #self.addSubview( @container_view )
    self
  end

  def drawRect(rect)
    drawDaysLeftLegendInRect rect
    drawDaysLeftInRect rect
  end
  
  def drawDaysLeftLegendInRect( rect )
    small_font = UIFont.fontWithName("HelveticaNeue", size:12)
    "days left".drawAtPoint([11, rect.size.height - 14 ], withFont:small_font)
  end	

  def drawDaysLeftInRect( rect )
    big_font = UIFont.fontWithName("HelveticaNeue-Bold", size:54)
    @days_left.to_s.drawAtPoint([20, 0 ], withFont:big_font)
  end  

  def viewWithMainContainerUsingRect( rect )
    p "viewWithMainContainerUsingRect #{rect}"
    container_rect = [[10,10], [rect[1][0] - 10, rect[1][1] - 10]]
    #container_rect.size.width = rect.size.width - 10
    #container_rect.size.height = rect.size.height - 10
    
    container_view = UIView.alloc.initWithFrame( container_rect )
    container_view.backgroundColor = UIColor.lightGrayColor
    container_view
  end  

end