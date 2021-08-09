require_relative 'prime_generator'
require 'rspec'


prime_gen = PrimeGenerator.new

#running the tests prior to the program
cli_args = ['../spec/prime_generator_spec.rb']
RSpec::Core::Runner.run(cli_args)

prime_gen.prime_request_module