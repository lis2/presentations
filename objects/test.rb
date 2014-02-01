class Car
  attr_accessor :color

  def initialize(color)
    @color = color
  end

  def some_class_method
    puts "instance method"
  end

  class << self
    def some_class_method
      puts "class method"
    end
  end


end

class Mazda < Car
  attr_accessor :how_many_wheels

  def initialize(color, how_many_wheels)
    @how_many_wheels = how_many_wheels
    super(color)
  end

  def mazda_method
    puts self
    another_method
  end

  def another_method
    puts "Something in another method"
  end
  puts ancestors.inspect
  class << self
    puts ancestors.inspect
  end
end

Mazda.some_class_method
