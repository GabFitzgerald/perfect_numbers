# Please implement your solution to perfect-numbers in this file
module PerfectNumbers
  def self.factors_of(num : Int32) : Array
    factors = [0]
    (1..(num - 1)).each { |i|
      if num % i == 0
        factors.push(i)
      end
    }
    return factors
  end

  def self.aliquot_sum_of(num)
    aliquot_sum = 0
    factors_of(num).each { |factor|
      aliquot_sum += factor
    }
    return aliquot_sum
  end

  def self.classify(num : Int32) : String
    raise ArgumentError.new("must be a positive number") if num <= 0

    if aliquot_sum_of(num) == num
      "perfect"
    elsif aliquot_sum_of(num) > num
      "abundant"
    else
      "deficient"
    end
  end
end
