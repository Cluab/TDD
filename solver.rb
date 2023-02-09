class Solver
  def factorial(num)
    if [0, 1].include?(num)
      1
    elsif num.negative?
      raise 'Invalid argument: only positive integers and 0 are allowed'
    else
      num * factorial(num - 1)
    end
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end
