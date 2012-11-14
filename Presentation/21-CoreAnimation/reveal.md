# CoreAnimation

<slide>
## CoreAnimation

![](tableview.png "CoreAnimation") 

</slide>

<slide>
## What You Just Learned

+ Creating a CALayer
+ Making it a sublayer
+ Drawing
+ Moving

</slide>

<slide>
## Example CAAnimation

    move = CABasicAnimation.animationWithKeyPath('position')
    move.setFromValue(NSValue.valueWithCGPoint(here))
    move.setToValue(NSValue.valueWithCGPoint(there)
    move.setDuration(5.0)
                
    // Make it move the layer
    layer.addAnimation(move, forKey:'foo')
    layer.setPosition(there)

</slide>

<slide>
## CAAnimation Family Tree

![](animationinheritance.pdf "Animations")

</slide>

<slide>
## Animated properties

+ CGColorRef: ***shadowColor***, ***borderColor***, ***backgroundColor***
+ NSNumber (float): ***opacity***, ***shadowRadius***, ***zPosition***, ***cornerRadius***
+ NSValue (CGRect): ***bounds***, ***contentsRect***
+ NSValue (CGPoint): ***anchorPoint***, ***position***
+ NSValue (CATransform3D): ***transform***

</slide>

<slide>
## CATransform3D
    
    struct CATransform3D
    {
        CGFloat m11, m12, m13, m14;
        CGFloat m21, m22, m23, m24;
        CGFloat m31, m32, m33, m34;
        CGFloat m41, m42, m43, m44;
    };    
            
    t = CATransform3DMakeRotation(M_PI, 0, 0, 1);        
    CATransform3DScale(t, 1.0, 2.0, 1.0);
    
</slide>
    
<slide>
## CoreAnimation

![](tableview.png "CoreAnimation") 

</slide>
