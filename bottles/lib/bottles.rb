class Bottles
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    if number == 0
      "#{line1(number).capitalize}#{first_action(number)} and buy some more, 99 #{container} of #{contents} #{location}.\n"
    else
      "#{line1(number).capitalize}#{first_action(number)} and #{second_action}, #{say_count(number-1)} #{container(number-1)} of #{contents} #{location}.\n"
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

def first_action(number=99)
  if number == 1
    "Take it down"
  elsif number == 0
    "Go to the store"
  else
    "Take one down"
  end
end

def second_action
  "pass it around"
end

def line1(number)
"#{say_count(number)} #{container(number)} of #{contents} #{location}, #{say_count(number)} #{container(number)} of #{contents}.\n"
end