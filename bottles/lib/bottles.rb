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
      "#{line1(number).capitalize}Go to the store and buy some more, 99 #{container} of #{contents} #{location}.\n"
    when 1
      "#{line1(number).capitalize}Take it down and #{action}, #{say_count(number-1)} #{container} of #{contents} #{location}.\n"
    else
      "#{line1(number).capitalize}Take one down and #{action}, #{say_count(number-1)} #{container(number-1)} of #{contents} #{location}.\n"
    end
  end
end

private

def say_count(count)
  count == 0 ? 'no more' : count
end

def container(count=99)
  count == 1 ? "bottle" : "bottles"
end

def contents
  "beer"
end

def location
  "on the wall"
end

def action
  "pass it around"
end

def line1(number)
"#{say_count(number)} #{container(number)} of #{contents} #{location}, #{say_count(number)} #{container(number)} of #{contents}.\n"
end