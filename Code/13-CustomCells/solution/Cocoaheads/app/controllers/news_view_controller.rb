class NewsViewController < UITableViewController

  def initWithStyle( style )
    super    
    self.title = "News"
    setupTabBarItem
    self
  end  

  def viewWillAppear( animated )
    super
    load_latest_news    
  end  

  def setupTabBarItem  
    tab_bar_item = UITabBarItem.alloc.initWithTitle("", 
      image:nil, tag:1)
    tab_bar_item.setFinishedSelectedImage(UIImage.imageNamed("icnNews"), withFinishedUnselectedImage:UIImage.imageNamed("icnNews"))
    self.tabBarItem = tab_bar_item
  end

  def load_latest_news
    @news = News.news_mock
    self.tableView.reloadData
  end  

  def tableView(tableView, numberOfRowsInSection:section)
    @news.length
  end
  
  def tableView(tableView, cellForRowAtIndexPath:indexPath)    
    news_item = @news[ indexPath.row ]      
    NewsTableViewCell.cellForNewsItem( news_item, inTableView:tableView)
  end  

  def tableView(tableView, didSelectRowAtIndexPath:indexPath)
    p "row #{indexPath.row} selected"
  end

  def tableView(tableView, viewForHeaderInSection:section)
    buttonsView
  end  

  def buttonsView
    buttons_view = UIImageView.alloc.initWithImage(UIImage.imageNamed("bgTitleBar"))
    buttons_view.frame = [[0,0], [320, 44]]    
    buttons_view.setUserInteractionEnabled(true)
    buttons_view.addSubview( deleteButton )
    buttons_view.addSubview( addButton )
    buttons_view
  end  

  def deleteButton
    delete_button = UIButton.buttonWithType(UIButtonTypeCustom)
    delete_button.setTitle("Delete", forState:UIControlStateNormal)
    delete_button.frame = [[10, 12], [56, 41]]
    delete_button.setBackgroundImage(UIImage.imageNamed("btnBarRed"), forState:UIControlStateNormal)
    delete_button.addTarget(self, 
      action:"delete_selected_cell", 
      forControlEvents:UIControlEventTouchUpInside)
    delete_button
  end    

  def addButton
    add_button = UIButton.buttonWithType(UIButtonTypeCustom)
    add_button.setTitle("Add", forState:UIControlStateNormal)
    add_button.frame = [[250, 12], [56, 41]]
    add_button.setBackgroundImage(UIImage.imageNamed("btnBarRed"), forState:UIControlStateNormal)
    add_button.addTarget(self, 
      action:"add_cell", 
      forControlEvents:UIControlEventTouchUpInside)
    add_button
  end    

  def delete_selected_cell   
    selected_cell_index_path = self.tableView.indexPathForSelectedRow    
    if selected_cell_index_path
      news_item = @news[selected_cell_index_path.row]
      @news.delete( news_item )    
      self.tableView.deleteRowsAtIndexPaths( [selected_cell_index_path], 
        withRowAnimation:UITableViewRowAnimationMiddle )
    end
  end
  
  def add_cell    
    random_item = News.self.news_mock[(0..5).to_a.sample]    
    index_path = NSIndexPath.indexPathForRow( @news.length, inSection:0 )
    @news << random_item
    self.tableView.insertRowsAtIndexPaths([index_path], 
      withRowAnimation:UITableViewRowAnimationRight)
  end  

  def tableView(tableView, heightForHeaderInSection:section)
    64.0
  end  

  def tableView(tableView, heightForRowAtIndexPath:indexPath)
    200.0
  end  
end  