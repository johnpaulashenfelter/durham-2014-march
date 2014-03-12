class Bottles

  MAX=99
  MIN=1
  GONE=0

  def sing
    verses(Bottles::MAX, Bottles::GONE)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    "#{line1(number)}#{line2(number)}"
  end
end

private

def say_count(count)
  if count < Bottles::GONE
    Bottles::MAX
  elsif count == Bottles::GONE
    'no more'
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
  if number == Bottles::GONE
    "Go to the store"
  elsif number == Bottles::MIN
    "Take it down"
  else
    "Take one down"
  end
end

def second_action(number)
  number == Bottles::GONE ? "buy some more" : "pass it around"
end

def line1(number)
  "#{say_count(number)} #{container(number)} of #{contents} #{location}, #{say_count(number)} #{container(number)} of #{contents}.\n".capitalize
end

def line2(number)
  "#{first_action(number)} and #{second_action(number)}, #{say_count(number-1)} #{container(number-1)} of #{contents} #{location}.\n".capitalize
end