class String

  @colors_list = {
    :red => 31,
    :green => 32,
    :yellow => 33,
    :blue => 34,
    :pink => 35,
    :light_blue => 94,
    :white => 97,
    :light_grey => 37,
    :black => 30
  }

  # Class method to create the color instance methods
    def self.create_colors
      @colors_list.each do |color,value|
        self.send(:define_method, "#{color}") do
          "\e[#{value}m" + self + "\e[0m"
        end
      end
    end

    # Class method to return an array of available colors
    def self.colors
      @colors_list.keys
    end

    # Class method to output a sample of each available color
    def self.sample_colors
      @colors_list.each do |color,value|
        puts "This is " + "#{color}".send(color)
      end
    end

    # code to generate all color methods
    String.create_colors

end
