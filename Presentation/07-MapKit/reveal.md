# MapKit

<slide>
## MapKit

![](mapkit.png "MapKit") 

</slide>

<slide>
## CocoaHeads App

![](cocoaheads.png "CocoaHeads App") 

</slide>

<slide>
## MapKit
        
MapKit includes some classes that allow us to put a map on the screen

Main classes:

+ MKMapView (The map area)
+ MKAnnotationView (The pin)
        
</slide>
    
<slide>
## MKAnnotation 

MKAnnotation is a protocol. 

    @protocol MKAnnotation <NSObject>

    @property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

    @optional

    @property (nonatomic, readonly) NSString *title;
    @property (nonatomic, readonly) NSString *subtitle;

    @end    

</slide>

<slide>
## Creating an MKAnnotation-conforming class

    class Venue
       def coordinate
       end

       def coordinate=(new_coordinate)
       end

       def title
       end

       def title=(new_title)
       end

       def subtitle
       end

       def subtitle=(new_subtitle)
       end
    end 

That's it!

</slide>

<slide>
## Using the Annotation

    theDock = Venue.new("theDock")

    mapView.addAnnotation(theDock)

</slide>

<slide>
# MapKit

![](mapkit.png "MapKit") 

[Chapters](../reveal.html) | 
[UIViews](../08-UIViews/reveal.html)

</slide>
