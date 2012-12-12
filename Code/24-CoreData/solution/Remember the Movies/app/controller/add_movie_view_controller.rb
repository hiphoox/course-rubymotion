class AddMovieViewController < UITableViewController

  attr_accessor :managed_object_context

  def loadView

    # Set up the title for the View Controller
    self.title = 'Add Movie'

    # Create a new Table View for showing the Text Fields
    table_view = UITableView.alloc.initWithFrame(UIScreen.mainScreen.bounds,
                                                 style:UITableViewStyleGrouped)

    # Set up the view controller as a Data Source
    # of the table view
    table_view.dataSource = self

    # Set up the view controller as a Delegate
    # of the table view
    table_view.delegate = self

    # Add the table view as view of the view controller
    self.view = table_view
  end


  # UITableView Data Source

  def numberOfSectionsInTableView(tableView)

    # Lets set two sections one for the Movie General
    # Data and another for a list of Directors
    2
  end


  def tableView(tableView, titleForHeaderInSection: section)

    # Create a new variable to store our header title
    title_for_header = ''


    # If the section is the Directors One
    if section == 1

      # Set the title to the title variable
      title_for_header = 'Choose a Director...'
    end

    # Return the title variable
    title_for_header
  end


  def tableView(tableView, numberOfRowsInSection: section)

    # Lets create a new instance variable for storing 
    # the number of rows in the section
    number_of_rows = 0

    # If the section is General Data
    if section == 0

      # We need two rows
      number_of_rows = 2

    else

      # If the section is Directors we need only one
      number_of_rows = 1

    end

    # Return the number of rows for the section
    number_of_rows
  end


  def tableView(tableView, cellForRowAtIndexPath: indexPath)

    # If the section is General Data
    if indexPath.section == 0

      # Return a General Data Cell
      general_information_cell_for_table_view(tableView, index_path: indexPath)
    else

      # Return a Add Director Cell
      add_director_cell_for_table_view(tableView)
    end
  end


  def general_information_cell_for_table_view(tableView, index_path: index_path)

    # Create a cell identifier for the General Information Cell
    cell_identifier = 'GeneralInformationCell'

    # Dequeue a cell with the identifier
    cell = tableView.dequeueReusableCellWithIdentifier(cell_identifier)


    # If we are not cells to use we need to create one
    if cell == nil

      # Lets create a new UITableViewCell with the identifier
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:cell_identifier)
      cell.selectionStyle = UITableViewCellSelectionStyleNone

      # Instantiate a new UITextField for editing some values
      cell_text_field = UITextField.alloc.initWithFrame(CGRectMake(100, 11, 200, 30))
      cell_text_field.autocorrectionType = UITextAutocorrectionTypeNo;
      cell_text_field.placeholder = 'Required'
      cell_text_field.textColor = UIColor.colorWithRed(0.235, green:0.325, blue:0.506, alpha:1.000)

      # Set the view controller as delegate of the Text Field
      cell_text_field.delegate = self

      # Add the Text Field into the cell view
      cell.addSubview(cell_text_field)
    end


    # If the row is the first one
    if index_path.row == 0

      # Set the title to Name
      cell.textLabel.text = 'Name'
    else

      # Else set the title to Year
      cell.textLabel.text = 'Year'
    end

    cell
  end


  def add_director_cell_for_table_view(tableView)

    #Create a cell identifier for the Add Director Cell
    cell_identifier = 'AddDirectorCell'

    # Dequeue a cell with the identifier
    cell = tableView.dequeueReusableCellWithIdentifier(cell_identifier)


    # If we are not cells to use we need to create one
    if cell == nil

      # Lets create a new UITableViewCell with the identifier
      cell = UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:cell_identifier)
      cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator
    end

    # Add text to the cell
    cell.textLabel.text = 'Add Director...'

    cell
  end


  # UITextField Delegate
  def textFieldShouldReturn(textField)

    # Resign the UITextField as first responder to hide
    # the keyboard
    textField.resignFirstResponder

    true
  end


  # UITableView Delegate

  def tableView(tableView, didSelectRowAtIndexPath: indexPath)

    # If the section is the Directors one
    if indexPath.section == 1 

      # Create a new AddDirectorViewController
      add_director_view_controller = AddDirectorViewController.alloc.init

      # We need to pass the Managed Object Context to the next controller
      # so we can use it later for creating, fetching or deleting objects
      add_director_view_controller.managed_object_context = @managed_object_context 

      # Push it using the Navigation Controller
      self.navigationController.pushViewController(add_director_view_controller, 
                                                   animated:true)
    end

  end

end
