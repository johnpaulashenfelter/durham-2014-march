class Bottles
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    case number
    when 0
      "No more #{container}s of #{contents} #{location}, no more #{container}s of #{contents}.\nGo to the store and buy some more, 99 #{container}s of #{contents} #{location}.\n"
    when 1
      "#{number} #{container} of #{contents} #{location}, #{number} #{container} of #{contents}.\nTake it down and pass it around, no more #{container}s of #{contents} #{location}.\n"
    when 2
      "#{number} #{container}s of #{contents} #{location}, #{number} #{container}s of #{contents}.\nTake one down and pass it around, #{number} #{container} of #{contents} #{location}.\n"
    else
      "#{number} #{container}s of #{contents} #{location}, #{number} #{container}s of #{contents}.\nTake one down and pass it around, #{number-1} #{container}s of #{contents} #{location}.\n"
    end
  end
end

private

def container
  "bottle"
end

def contents
  "beer"
end

def location
  "on the wall"
end