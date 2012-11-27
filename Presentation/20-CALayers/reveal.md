# CALayers

<slide>
## CALayers

![](calayers.png "CALayers") 

</slide>

<slide>
## CALayer

![](image.png "CALayers") 

</slide>

<slide>
## Layers are Hierarchical

![](layerdiagram.pdf "CALayers") 

</slide>

<slide>
## Explicitly Creating a CALayer

    # Create the new layer object 
    aLayer = CALayer.alloc.init 

    # Give it a size 
    aLayer.setBounds(CGRectMake(0, 0, 85, 85))

    # Give it a location 
    aLayer.setPosition(CGPointMake(160, 100))
            
    # Make it a sublayer of the view's layer 
    aView.layer.addSublayer(aLayer)

</slide>

<slide>
## Drawing on a Layer

    aLayer.setDelegate(self)

    def drawLayer(layer, inContext:ctx)
      ...drawing with Core Graphics...
    end

</slide>

<slide>
## Other Properties

    contents # CGImageRef, typically
    contentsRect
    contentsGravity

    backgroundColor;

</slide>
    
<slide>
## CALayers

![](calayers.png "CALayers") 

[Chapters](../reveal.html) | 
[CoreAnimation](../21-CoreAnimation/reveal.html)

</slide>
