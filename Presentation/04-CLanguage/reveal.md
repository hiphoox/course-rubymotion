# C Language

<slide>
## C Language

![](clanguage.jpeg "C Language") 

</slide>

<slide>
## Basic Types

C, and indirectly Objective-C, has a set of basic types. 

Example:

    handle = NSFileHandle.alloc.initWithFileDescriptor(2)
    handle.fileDescriptor # => 2

Basic C types cannot be created from Ruby directly, but are automatically converted from and to equivalent Ruby types.

When an API returns the void C type, RubyMotion will return nil.

</slide>

<slide>
## Structures

C structures are mapped to classes in RubyMotion. Structures can be created in Ruby and passed to APIs expecting C structures.

A structure class has an accessor method for each field of the C structure it wraps.

    pt = CGPoint.new
    pt.x = 100
    pt.y = 200
    'Hello'.drawAtPoint(pt, withFont: font)
        

</slide>
    
<slide>
It is possible to pass the field values directly to the constructor.
  
    # Creating a CGPoint
    pt = CGPoint.new(100, 200)
    'Hello'.drawAtPoint(pt, withFont: font)

RubyMotion will also accept arrays as a convenience. They must contain the same number and type of objects expected in the structure.

    # Using and array
    'Hello'.drawAtPoint([100, 200], withFont: font)

</slide>

<slide>
## Enumerations & Constants

C enumerations and constants are mapped as constants of the Object class.

    if ary.indexOfObject(obj) == NSNotFound
      # ...
    end
    # ...
    view = UIView.alloc.initWithFrame(CGRectNull)

</slide>

<slide>
## Functions

C functions are available as methods of the Object class.

Example:

    # Calling a function
    pt = CGPointMake(100, 200)
    'Hello'.drawAtPoint(pt, withFont: font)

Most functions in the iOS SDK start by a capital letter. For those who accept no argument, you must use parentheses when calling them, in order to avoid evaluate the expression as a constant lookup.

</slide>

<slide>
## Pointers

Pointers are a very basic data type of the C language. RubyMotion introduces the Pointer class in order to create and manipulate pointers. 

    # Create a new pointer to the object type.
    error_ptr = Pointer.new(:object)

    unless data.writeToFile(path, options: mask, error: error_ptr)
      # De-reference the pointer.
      error = error_ptr[0]

      # Now we can use the `error' object.
      $stderr.puts "Error when writing data: #{error}"
    end

The error argument of this NSData method expects a pointer that will be set to an NSError object in case of failure.

</slide>

<slide>
RubyMotion supports the creation of structure pointers, by passing their runtime type accordingly to Pointer.new, which can be retrieved by sending the type message to the structure class in question.
 

    # Pointer to a Struct
    rect_ptr = Pointer.new(CGRect.type)

Pointers to C characters, also called C strings, are automatically converted from and to String objects by RubyMotion.

</slide>

<slide>
## Function Pointers and Blocks

C or Objective-C APIs accepting C function pointers or C blocks can be called by RubyMotion, by passing a Proc object instead.
C blocks are an extension of the C language defined by Apple. 

</slide>

<slide>
The caret (^) character is used to define C blocks.

    notification_center.addObserverForName(name, object:object, 
                                                  queue:queue,
                                             usingBlock:
                                             lambda do |notification|
        # Handle notification here...
    end)


    array.enumerateObjectsWithOptions(options, usingBlock:
                                            lambda do |obj, idx, stop_ptr|
         stop_ptr[0] = true if idx == 9
    end)

The Proc object must have the same number of arguments as the C function pointer or block, otherwise an exception will be raised at runtime.

</slide>

<slide>
## C Language

![](clanguage.jpeg "C Language") 

</slide>

