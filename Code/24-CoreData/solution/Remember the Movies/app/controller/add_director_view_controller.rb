class AddDirectorViewController < UITableViewController

  attr_accessor :managed_object_context

  def loadView

    # Set up the title for the View Controller
    self.title = 'Add Director'

    # Create a new Table View for showing the Text Fields
    table_view = UITableView.alloc.initWithFrame(UIScreen.mainScreen.bounds,
                                                 style:UITableViewStyleGrouped)

    # Set up the view controller as a Data Source
    # of the table view
    table_view.dataSource = self

    # Add the table view as view of the view controller
    self.view = table_view


    save_bar_button_item = UIBarButtonItem.alloc.initWithTitle('Save',
                                                               style: UIBarButtonItemStyleDone,
                                                               target: self,
                                                               action: 'save')

    self.navigationItem.rightBarButtonItem = save_bar_button_item

    self.navigationItem.rightBarButtonItem.enabled = false;
  end


  def save

    director = NSEntityDescription.insertNewObjectForEntityForName(Director.name, 
                                                                   inManagedObjectContext: @managed_object_context)

    director.name = @name_text_field.text
 

    error_pointer = Pointer.new(:object)

    unless @managed_object_context.save(error_pointer)

      raise "Error saving a new Director: #{error_pointer[0].description}"
    end
  end


  def textField(textField, shouldChangeCharactersInRange: range, replacementString: string)

    text_length = textField.text.length + string.length - range.length


    if text_length > 0

      self.navigationItem.rightBarButtonItem.enabled = true;
    else

      self.navigationItem.rightBarButtonItem.enabled = false;
    end

    true
  end


  # UITableView Data Source

  def tableView(tableView, numberOfRowsInSection: section)

    # Because the Director only has one attribute, we only
    # need one cell
    1
  end


  def tableView(tableView, cellForRowAtIndexPath: indexPath)

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
      @name_text_field = UITextField.alloc.initWithFrame(CGRectMake(100, 11, 200, 30))
      @name_text_field.autocorrectionType = UITextAutocorrectionTypeNo;
      @name_text_field.placeholder = 'Required'
      @name_text_field.textColor = UIColor.colorWithRed(0.235, green:0.325, blue:0.506, alpha:1.000)

      # Set the view controller as delegate of the Text Field
      @name_text_field.delegate = self

      # Add the Text Field into the cell view
      cell.addSubview(@name_text_field)
    end


    # Set the title to Name
    cell.textLabel.text = 'Name'

    cell
  end


  # UITextField Delegate
  def textFieldShouldReturn(textField)

    # Resign the UITextField as first responder to hide
    # the keyboard
    textField.resignFirstResponder

    true
  end


end
