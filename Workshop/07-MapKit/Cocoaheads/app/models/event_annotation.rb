class EventAnnotation

  def coordinate 
    @coordinate 
  end
  
  def title 
    @title
  end
  
  def subtitle 
    @subtitle 
  end

  def initWithCoordinate( coordinate, title:title, subTitle:subtitle)        
    @coordinate = coordinate
    @title = title
    @subtitle = subtitle
    
    self
  end

end