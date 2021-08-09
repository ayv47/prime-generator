require 'prime_generator'

describe PrimeGenerator do
  before do
    @test_pg = PrimeGenerator.new
  end

  describe "required criteria:" do
    context "given the range from 1 to 102" do
      it "should return 26 values" do
        expect(@test_pg.prime_generator(1,102).length).to eq(26)
        expect(@test_pg.prime_generator(1,102)).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47,
                                                       53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101])
      end
    end

    context "given an inverse range" do
      it "should run the code gracefully" do
        expect(@test_pg.prime_generator(10, 1)).to eq([2,3,5,7])
      end
    end

    context "given the range between 7900 and 7920" do
      it "should return 7901, 7907 and 7919" do
        expect(@test_pg.prime_generator(7900, 7920)).to eq([7901, 7907, 7919])
      end
    end
  end

  describe "error handling:" do
    context "given a string value" do
      it 'should raise an error' do
        expect{@test_pg.prime_generator("bbb", 24)}.to raise_error(/Invalid input detected/)
        expect{@test_pg.prime_generator(2, "abcde")}.to raise_error(/Invalid input detected/)
        expect{@test_pg.prime_generator("bbb", "abcde")}.to raise_error(/Invalid input detected/)
      end
    end

    context "given a double or float value" do
      it 'should raise an error' do
        expect{@test_pg.prime_generator(77.3, 53)}.to raise_error(/Invalid input detected/)
        expect{@test_pg.prime_generator(1, 168.6642)}.to raise_error(/Invalid input detected/)
        expect{@test_pg.prime_generator(4.3, 17.72)}.to raise_error(/Invalid input detected/)
      end
    end

    context "given a negative value" do
      it 'should raise an error stating negative numbers are disallowed' do
        expect{@test_pg.prime_generator(-2, 70)}.to raise_error(/Negative numbers disallowed/)
        expect{@test_pg.prime_generator(90, -5)}.to raise_error(/Negative numbers disallowed/)
        expect{@test_pg.prime_generator(-100, -999)}.to raise_error(/Negative numbers disallowed/)
      end
    end
  end

  describe "other prime tests:" do
    context "given two endpoints equal to each other" do
      it 'should raise an error stating there is no range available' do
        expect{@test_pg.prime_generator(2,2).to raise_error(/Range nonexistent/)}
      end
    end

    context 'given a range of 0 to 1' do
      it 'should not return any values' do
        expect{@test_pg.prime_generator(0,1).to be_empty}
      end
    end

    context 'given large prime numbers'
      it 'should return the proper values' do
        expect{@test_pg.prime_generator(1000000, 1000500).to eq([1000003, 1000033, 1000037, 1000039, 1000081, 1000099,
                                                                 1000117, 1000121, 1000133, 1000151, 1000159, 1000171,
                                                                 1000183, 1000187, 1000193, 1000199, 1000211, 1000213,
                                                                 1000231, 1000249, 1000253, 1000273, 1000289, 1000291,
                                                                 1000303, 1000313, 1000333, 1000357, 1000367, 1000381,
                                                                 1000393, 1000397, 1000403, 1000409, 1000423, 1000427,
                                                                 11000429, 1000453, 1000457])}
    end
  end
end
