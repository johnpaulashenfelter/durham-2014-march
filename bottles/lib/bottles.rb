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
      "No more #{container} of #{contents} #{location}, no more #{container} of #{contents}.\nGo to the store and buy some more, 99 #{container} of #{contents} #{location}.\n"
    when 1
      "#{number} #{container(number)} of #{contents} #{location}, #{number} #{container(number)} of #{contents}.\nTake it down and pass it around, no more #{container} of #{contents} #{location}.\n"
    else
      "#{number} #{container} of #{contents} #{location}, #{number} #{container} of #{contents}.\nTake one down and pass it around, #{number-1} #{container(number-1)} of #{contents} #{location}.\n"
    end
  end
end

private

def container(count=99)
  count > 1 ? "bottles" : "bottle"
end

def contents
  "beer"
end

def location
  "on the wall"
end

def action
end