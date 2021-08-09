# prime-generator
Prime generator project in Ruby that displays a list of primes between two numbers.

## Criteria
Implement a prime number generator that returns a list of prime numbers inclusive of two specified endpoints.
The code must be able to 
- handle inverse ranges (1-10 and 10-1 should produce the same output)
- when run against the range 7900 through 7920 inclusive, must 
return 7901, 7907, and 7919.

All unit tests should pass and provide 100% code coverage.

## Execution
1. Either clone the repository using the IDE or command line interface of your choice, or download the code directly from github by clicking on the Code button and selecting 'Download Zip'.
2. Verify that the required gems have been installed (in this case, rspec). Run bundle install to install the required gems.
3. In RubyMine, open the main.rb file within the 'lib' directory and click the Run button OR if running from the command line, navigate to where the repository was placed. Navigate further to the 'lib' directory and then type ||ruby main.rb||.  
The rspec tests should run first, and then should prompt the user for the first and second integers with which to create a range.
