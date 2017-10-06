require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end
  
  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do
    
    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do
    
    it 'both over 21' do
      blackjack(22, 24).must_equal(0)
    end

    it 'both less 21' do
      blackjack(3, 19).must_equal(19)
    end

    it 'one less 21' do
      blackjack(20, 25).must_equal(20)
    end

  end

  describe 'n_twice' do

    
    it 'string of 6' do
      n_twice([1,2,3,4,5,6], 0).must_equal([])
    end

    it 'string of 12' do
      n_twice([3,5,6,3,8,5,6,5,2,6,4,8], 3).must_equal([3,5,6,6,4,8])
    end

    it 'string of 7' do
      n_twice([4,6,3,1,3,5,3], 2).must_equal([4,6,5,3])
    end

  end

  describe 'close_far' do
    
    it 'close .5' do
      close_far(0.5,1,1.5).must_equal("close")
    end

    it 'far 2 ' do
      close_far(2,4,6).must_equal("far")
    end

    it 'far 3' do
      close_far(3,6,9).must_equal("far")
    end

  end
end
