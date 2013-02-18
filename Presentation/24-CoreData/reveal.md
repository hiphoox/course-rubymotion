# CoreData

<slide>
## CoreData

![](coredata.png "CoreData") 


</slide>

<slide>
## CoreData

An object graph manager with lifecycle, searching and persistence features

* Fetches objects from store (file)
* Tracks changes made to objects
* Saves changes to store (file)

</slide>


<slide>
## CoreData

Store types 

* SQLite
*	Binary file
* XML file (Not on iPhone)

</slide>


<slide>
## Predicates

		predicate = NSPredicate.predicateWithFormat("budget > 1000 AND name like[c] s*")

</slide>


<slide>
## Fetching

		# Create fetch request
		request = NSFetchRequest.alloc.init
		request.setEntity(entity)

		sd = NSSortDescriptor.alloc.initWithKey(@"budget", ascending:NO)
		request.setSortDescriptors([sd])

		p = NSPredicate.predicateWithFormat(@"budget > 1000")
		request.setPredicate(p)

		# Execute the request
		error = Pointer(:object)
		departments = moc.executeFetchRequest(request, error:error]

</slide>


<slide>
## NSManagedObject

Class capable of storing the data for an instance of any entity. 

Access properties (attributes, relationships) via key-value coding methods (valueForKey:, setValue:forKey:).

Want special behavior methods? 

Write a custom NSManagedObject subclass.

</slide>

<slide>
## Relationships

Delete Rule:
"If an attempt is made to delete the source object..."

* Nullify (the inverse relationship)
* Deny (if any destination relationships)
* Cascade (delete any destination relationships, too)
* No Action

</slide>
   
<slide>
## CoreData

![](coredata.png "CoreData") 

[Chapters](../reveal.html) | 
[Third Party Libraries](../25-ThirdPartyLibraries/reveal.html)

</slide>
