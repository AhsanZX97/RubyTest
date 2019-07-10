Running Program:
    In command line type "ruby lib/main.rb lib/webserver.log"
    To run tests, in command line type "rspec"

My thinking behind the program was reading the test and making all my methods and classes be based on the task required at hand. I put methods I found being repeated into a module called "methods.rb". The tests were done with a ruby gem called rspec and basic testing was done to ensure everything works in order. There is no method that is big in order to keep it simple. Validation is performed to check if the file in the argument is a .log file or not.

To improve, I would've built an application with GUI to do the test as it would make the program more user-friendly. With an approach like that, I'd be more than likely to include gemfiles and subjects in testing as I couldn't find a use for them doing the test like this.