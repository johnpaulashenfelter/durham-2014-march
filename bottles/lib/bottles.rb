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
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_s
    verse(number)
  end

  def verse(number)
    "#{inventory(number)} #{container(number)} #{liquid} #{location}, ".capitalize +
    "#{inventory(number)} #{container(number)} #{liquid}.\n" +
    "#{action}, " +
    "#{inventory(number-1)} #{container(number-1)} #{liquid} #{location}.\n"
  end

  private

  def inventory(number)
    case number
    when -1
      99
    when 0
      'no more'
    else
      number
    end
  end

  def container(number)
    case number
    when 1
      'bottle'
    else
      'bottles'
    end
  end

  def action
    case number
    when 0
      'Go to the store and buy some more'
    when 1
      'Take it down and pass it around'
    else
      'Take one down and pass it around'
    end
  end

  def liquid
    'of beer'
  end

  def location
    'on the wall'
  end
end