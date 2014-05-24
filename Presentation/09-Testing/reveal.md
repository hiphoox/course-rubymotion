# Testing

<slide>
## Testing

![](testing.png "Testing")

</slide>

<slide>
## Testing

+ Bacon
+ Spec Files
+ Spec Helpers
+ Context
+ Device Events
+ Finding Views
+ UIAutomation

</slide>

<slide>
## Bacon

RubyMotion uses a version of Bacon called MacBacon, a small clone of the popular RSpec framework


</slide>

<slide>
## Spec Files

- are in the `spec/` folder
- end in `_spec.rb`
- helpers (extensions to MacBacon) are *usually* in `spec/helpers/`

</slide>

<slide>
## Spec Files

```ruby
describe "Application 'foo'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end
end
```
</slide>

<slide>
## Spec Files

```
> rake spec
Application 'foo'
  - has one window [FAILED - 0.==(1) failed]

Bacon::Error: 0.==(1) failed
  spec.rb:700:in `satisfy:': Application 'foo' - has one window
  ...

1 specifications (1 requirements), 1 failures, 0 errors
```
</slide>

<slide>
## Spec Files
###### Let's fix it!
```ruby
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    true
  end
end
```
</slide>

<slide>
## Spec Files
###### Let's fix it!
```ruby
class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    ctlr = UIViewController.new
    @window.rootViewController = ctlr
    @window.makeKeyAndVisible
    true
  end
end
```
</slide>

<slide>
## Spec Files

```
> rake spec
Application 'foo'
  - has one window

1 specifications (1 requirements), 0 failures, 0 errors
```
</slide>

<slide>
## Context

</slide>

<slide>
## Device Events

</slide>

<slide>
## Finding Views


</slide>

<slide>
## UIAutomation


</slide>

<slide>
## Testing

![](testing.png "Testing")

[Chapters](../reveal.html) |
[Interface Builder](../10-InterfaceBuilder/reveal.html)

</slide>

