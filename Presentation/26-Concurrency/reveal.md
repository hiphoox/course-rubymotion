# Concurrency

<slide>
## Concurrency

![](concurrency.png "Concurrency") 

</slide>

<slide>
## Technologies

* NSOperation

* Grand Central Dispatch (GCD)

</slide>

<slide>
## Grand Central Dispatch

* C API

* Blocks (Ruby lambdas)
  
* Queues
	- Normal
	- Serial

</slide>


<slide>
## Examples

		# High Priority Queue (:low, :default, :high)
		high_priority_queue = Dispatch::Queue.concurrent(priority=:high)
		high_priority_queue.async { 
							#Your code
								}

		# Main Queue (main thread)
		main_queue = Dispatch::Queue.main
		main_queue.async {
					#Your code
					 }


</slide>


<slide>
## NSOperation

* Objects 
	- NSOperation
	- NSOperationQueue
	- NSInvocationOperation

* Task Dependencies
  
</slide>


<slide>
## NSOperationQueue

		# Adding tasks
		addOperation()
		addOperationWithBlock()

		# Managing queues
		operations
		cancelAllOperations
		waitUntilAllOperationsAreFinished

</slide>


<slide>
## NSOperation

		# Managing tasks
		start
		cancel

		# Task status
		isReady
		isExecuting
		isFinished
		isCancelled

</slide>


<slide>
## Examples

      # Create a new NSOperationQueue for excecuting the
      # filter intensity changes
      @filter_intensity_queue = NSOperationQueue.new

      # Add the Invocation Operation to the NSOperationQueue
      @filter_intensity_queue.addOperation(increase_image_filter_operation)

      # Create a NSInvocationOperation that will allow us to run some method
      # on another thread
      filter_operation = NSInvocationOperation.alloc.initWithTarget(self, 
                                        selector:'increase_image_filter', 
                                                              object:nil)

</slide>


<slide>
## Concurrency

![](concurrency.png "Concurrency") 

[Chapters](../reveal.html) 

</slide>
