class Bottles
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    "#{line1(number).capitalize}#{line2(number).capitalize}"
  end
end

private

def say_count(count)
  if count == 0
    'no more'
  elsif count < 0
    '99'
  else
    count
  end
end

def container(count)
  count == 1 ? "bottle" : "bottles"
end

def contents
  "beer"
end

def location
  "on the wall"
end

def first_action(number)
  if number == 1
    "Take it down"
  elsif number == 0
    "Go to the store"
  else
    "Take one down"
  end
end

def second_action(number)
  number == 0 ? "buy some more" : "pass it around"
end

def line1(number)
"#{say_count(number)} #{container(number)} of #{contents} #{location}, #{say_count(number)} #{container(number)} of #{contents}.\n"
end

def line2(number)
  "#{first_action(number)} and #{second_action(number)}, #{say_count(number-1)} #{container(number-1)} of #{contents} #{location}.\n"
end