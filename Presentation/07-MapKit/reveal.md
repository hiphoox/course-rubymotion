# MapKit

<slide>
## MapKit

![](mapkit.jpeg "MapKit") 

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
       attr_accessor coordinate
       attr_accessor title
       attr_accessor subtitle
    end 

That's it!

</slide>

<slide>
## Using the Annotation

    theDock = Venue.new("theDock")

    mapView.addAnnotation(theDock)

</slide>

<slide>
## Object Diagram

![](objectdiagram.png "Exercise") 

</slide>

<slide>
# MapKit

![](mapkit.jpeg "MapKit") 

</slide>
