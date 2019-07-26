I am providing methods to test whether a class reacts as expected to a method call. Therefore I am catching the calls to the myself (the invoker) made by the tested class and evaluate them. 

Instance Variables
	calls:		OrderedCollection of Messages
	depth:		Integer

calls
	- This is a collection of all calls caught by the tested class.

depth
	- This is the number of catched calls.
