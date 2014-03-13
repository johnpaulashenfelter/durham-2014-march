class Bottles
  def sing
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|n| verse(n) + "\n"}.join
  end

  def verse(number)
    Verse.new(number).to_s
  end
end

class Verse
  attr_reader :number, :verse_number
  def initialize(number)
    @number = number
    @verse_number = case number
    when 0
      VerseNumber0.new(number)
    when 1
      VerseNumber1.new(number)
    when 2
      VerseNumber2.new(number)
    else
      VerseNumber.new(number)
    end
  end

  def to_s
    "#{verse_number.current_inventory} #{verse_number.current_container} #{liquid} #{location}, ".capitalize +
    "#{verse_number.current_inventory} #{verse_number.current_container} #{liquid}.\n" +
    "#{verse_number.action}, " +
    "#{verse_number.next_inventory} #{verse_number.next_container} #{liquid} #{location}.\n"
  end

  private

  def liquid
    'of beer'
  end

  def location
    'on the wall'
  end
end

class VerseNumber
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def current_inventory
    number
  end

  def next_inventory
    number - 1
  end

  def current_container
    'bottles'
  end

  def next_container
    'bottles'
  end

  def action
    "Take one down and pass it around"
  end

end

class VerseNumber0 < VerseNumber
  def next_inventory
    99
  end

  def current_inventory
    'no more'
  end

  def action
    'Go to the store and buy some more'
  end
end

class VerseNumber1 < VerseNumber
  def action
    "Take it down and pass it around"
  end

  def current_container
    'bottle'
  end

  def next_inventory
    'no more'
  end
end

class VerseNumber2 < VerseNumber
  def next_container
    'bottle'
  end
end