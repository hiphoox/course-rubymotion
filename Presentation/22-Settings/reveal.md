# Settings

<slide>
## Settings

![](tableview.png "Settings") 

</slide>

<slide>
## Preferences

+ Factory Settings
+ Changing the Application's Defaults
+ The iPhone's Settings application

</slide>

<slide>
## NSUserDefaults    

    # class method to get the defaults
    NSUserDefaults.standardUserDefaults

+ Uniform system of storing defaults
+ Clear Distinction between Factory and User Settings
+ Based on Bundle ID: com.bignerdranch.superapp
+ A dictionary with keys and values

</slide>

<slide>
## Factory Settings

Takes an NSDictionary with the factory defaults. These will be used if no other values have been set.

    registerDefaults(dictionary)

</slide>

<slide>
## Setting Defaults

    setObject(value, forKey:defaultName)

    setInteger(value, forKey:defaultName)
    setFloat(value, forKey:defaultName)
    setDouble(value, forKey:defaultName)
    setBool(value, forKey:defaultName)

    removeObjectForKey(defaultName)

</slide>

<slide>
## Reading Defaults

    # General
    objectForKey(defaultName)

    # Specifics
    stringForKey(defaultName)
    arrayForKey(defaultName)
    dictionaryForKey(defaultName)
    dataForKey(defaultName)
    stringArrayForKey(defaultName)
    integerForKey(defaultName)
    floatForKey(defaultName)
    doubleForKey(defaultName)
    boolForKey(defaultName)

</slide>

    
<slide>
## Settings

![](tableview.png "Settings") 

</slide>
