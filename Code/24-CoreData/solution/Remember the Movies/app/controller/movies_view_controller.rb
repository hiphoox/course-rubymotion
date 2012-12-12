class MoviesViewController < UIViewController

  attr_accessor :managed_object_context

  def loadView

    # Create a new Bar Button Item with the Add System Default
    add_movie_bar_button_item = UIBarButtonItem.alloc.initWithBarButtonSystemItem(UIBarButtonSystemItemAdd,
                                                                                  target: self,
                                                                                  action: 'add_new_movie')

    # Add the Bar Button Item to the Navigation Bar
    self.navigationItem.rightBarButtonItem = add_movie_bar_button_item
  end

  def add_new_movie

    # Create a new AddMovieViewController
    add_movie_view_controller = AddMovieViewController.alloc.init

    # We need to pass the Managed Object Context to the next controller
    # so we can use it later for creating, fetching or deleting objects
    add_movie_view_controller.managed_object_context = @managed_object_context


    # Push it using the Navigation Controller
    self.navigationController.pushViewController(add_movie_view_controller, 
                                                 animated:true)
  end

end
