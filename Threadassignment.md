Name: Vamshi Krishna Kurupati

Date: 04-08-2016

M20228730

#####1)Explain the differences between Threads1 and Threads2 using lines from the code and a precise explanation?


In thread1.py all the instructions are atomic instructions which means operations carried out in a single step without any chance that another can get control over it,so there is no mischanging of value of a shared resource.Where as in thread2.py the run() uses counter increment whose execution is done within three steps.
     
           sharedCounter += 1

* First the interpreter fetches the counter value.

* calculates the new  counter value. 

* writes back the new counter value back to the variable.

while one thread is executing that instruction before it writes back the new counter value if someother thread writes the shared resource the n the value gets mischanged.

#####2)After running Thread3.py does it fix the problems that occured in Threads2.py? What's the down-side?


In thread3.py we have used  thread synchronizing  mechanisam ,Inorder to order to overcome mischanging a value attribute we need to synchronize threads.In thread3.py we have made a syncronization between threads by using Lock().At any time, a lock can be held by a single thread, or not at all. If a thread attempts to hold a lock that’s already held by some other thread, execution of the first thread is halted until the lock is released.For each shared resource, create a Lock object. When you need to access the resource, call acquire to hold the lock (this will wait for the lock to be released, if necessary), and call release to release it.

#####3)Comment out the join statements at the bottom of the program and describe what happens?


If we do not use join(),in thread3.py then the main thread terminates first before the termination of its child threads ie;Thread A&Thread B. This join() blocks the calling thread until the thread whose join() method is called terminates, either normally or through an unhandled exception,or until the optional timeout occurs.

#####4)What happens if you try to Ctrl-C out of the program before it terminates?

Pressing *Ctrl + c* while a python program is running will cause python to raise a KeyboardInterupt exception.But the interrupt is not handled as there is suitable catch block for that exception, it will catch all exceptions including the KeyboardInterupt that you just caused.If keyboard interrupt exception occurs rapidly then it comes out of the program and terminates it.

#####5)Read and run Threads4.py. This generates a different and more ridiculous race condition. Write concise explanation of what's happening to cause this bizarre behavior using lines from the code and precise explanation?

In thread4.py in the following code lock is issued on the shared resource by name sharedNumber but none of the threads are acquiring that lock,hence any of the threads can use the same resource at same time.


          global sharedNumber
            for k in range(10000000):
          
                sharedNumber = 1
                 if sharedNumber != 1:
                    print 'A: that was weird'
            
               print 'Goodbye from thread A'


#####6)Does uncommenting the lock operations clear up the problem in question 5?


In thread4.py after calling a lock on a shared resource,  if we use lock.acquire()method for a specific thread then that particular thread access the resource and uses it,after its usage if we call release() so that any other thread can access the same source if needed one after the other which thread acquires the lock first.



     def run(self):
            global sharedNumber
            for k in xrange(10000000):
                self.lock.acquire()
                sharedNumber = 1
               if sharedNumber != 1:
                    print 'A: that was weird'
               self.lock.release()
          print 'Goodbye from thread A'
        
        
     def run(self):
         global sharedNumber
         for k in xrange(10000000):
            self.lock.acquire()
            sharedNumber = 2
            if sharedNumber != 2:
                print 'B: that was weird'
            self.lock.release()
        print 'Goodbye from thread B'


