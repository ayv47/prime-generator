require 'prime'
require 'rspec'

class PrimeGenerator
  def prime_generator (start_point, end_point)
    #should take both end points, run through all numbers, return a list of all prime numbers inclusive of those points
    #checks to verify that both points are valid
    unless start_point.is_a? Integer and end_point.is_a? Integer
      raise "Invalid input detected."
    end

    if start_point < 0 or end_point < 0
      raise "Negative numbers disallowed."
    end

    if start_point - end_point == 0
      raise "Range nonexistent as both points are equal"
    end

    if start_point > end_point
      arr = (end_point..start_point).to_a
    else
      arr = (start_point..end_point).to_a
    end
    filtered_arr = arr.select { |pr| pr if Prime.prime?(pr)}
    return filtered_arr
  end

  def prime_request_module
    #where the user enters in the prime numbers
    puts "Prime Number Generator v0.1"
    print "Enter in the starting value(integer): "
    sv = verify_integer
    print "Enter in the ending value(integer): "
    ev = verify_integer
    puts "The primes for the specified numbers are: "
    puts prime_generator(sv, ev).join(', ')
  end

  def verify_integer
    #to catch any possible non-integer values and avoid errors
    begin
      entered_value = Integer(gets)
    rescue
      print "Invalid input entered. Please enter in an integer: "
      retry
    end
    return entered_value
  end

end

