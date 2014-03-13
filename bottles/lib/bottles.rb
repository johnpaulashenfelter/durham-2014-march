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
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    when 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    when 2
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    else
      "#{number} bottles of beer on the wall, #{number} bottles of beer.\nTake one down and pass it around, #{number-1} bottles of beer on the wall.\n"
    end

    "#{inventory(number)} #{container(number)} #{liquid} #{location}, ".capitalize +
    "#{inventory(number)} #{container(number)} #{liquid}.\n" +
    "#{action(number)}, " +
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

  def action(number)
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
