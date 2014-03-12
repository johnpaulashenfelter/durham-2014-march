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
      "No more #{container}s of #{contents} on the wall, no more #{container}s of #{contents}.\nGo to the store and buy some more, 99 #{container}s of #{contents} on the wall.\n"
    when 1
      "1 #{container} of #{contents} on the wall, 1 #{container} of #{contents}.\nTake it down and pass it around, no more #{container}s of #{contents} on the wall.\n"
    when 2
      "2 #{container}s of #{contents} on the wall, 2 #{container}s of #{contents}.\nTake one down and pass it around, 1 #{container} of #{contents} on the wall.\n"
    else
      "#{number} #{container}s of #{contents} on the wall, #{number} #{container}s of #{contents}.\nTake one down and pass it around, #{number-1} #{container}s of #{contents} on the wall.\n"
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