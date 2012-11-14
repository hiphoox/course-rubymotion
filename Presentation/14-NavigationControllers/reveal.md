# Navigation Controllers

<slide>
## Navigation Controllers

![](tableview.png "Navigation Controllers") 

</slide>

<slide>
## Navigation Controllers

Navigation Controllers allows us to animate a view controller on to the screen that shows us more detailed information about a selection on the previous screen and then allow the user to jump back to the previous one.

![](navcontroller.png "Navigation Controllers") 

</slide>

<slide>
## UINavigationController

![](navcontrollerstack.pdf "Navigation Controllers Stack") 

</slide>    

<slide>
## Example

![](navcontrollerexample.pdf "Navigation Controllers Example") 

</slide>    

<slide>
## Creating a Navigation Controller
  
    # In your AppDelegate
    def application(app, didFinishLaunchingWithOptions:options)
      rootVC = MyViewController.alloc.init
      navController = UINavigationController.alloc.initWithRootViewController(rootVC)

      window.setRootViewController(navController)
      window.makeKeyAndVisible
      
      true
    end

</slide>  

<slide>
## Pushing a ViewController

    class MyViewController

      def drillDown
        detailVC = DetailViewController.alloc.init
        
        self.navigationController.pushViewController(detailVC, animated:true)
      end
    end

</slide>  

<slide>
## Passing Data

![](datadrilldown.pdf "Passing Data") 

</slide>   

<slide>
## Contrast with UITabBarController
UITabBarController

    - A LIST of UIViewControllers
    - List is typically static
    - Has a UITabBar with access to all VCs

UINavigationController

    - A STACK of UIViewControllers
    - List is dynamic
    - UINavigationBar with access to previous VC

viewWillAppear/viewWillDisappear work the same

</slide>

<slide>
## UINavigationBar

![](navbar.pdf "Navigation Bar") 

</slide> 

<slide>
## Creating Navigation Items

In the subclass of your Navigation Controller

    def initWithNibName(nibName, bundle:bundle)
      self = super.initWithNibName("ContactsViewController", bundle:nil)
      if (self)
        item = self.navigationItem
        item.setTitle("All Contacts")

        plusButton = UIBarButtonItem.alloc.initWithSystemItem(UIBarButtonSystemItemAdd, target: self, action: :'addNewContact:')
        item.setRightBarButtonItem(plusButton)
      end

      self
    end

</slide> 

<slide>
## Navigation Controllers

![](tableview.png "Navigation Controllers") 

</slide>
