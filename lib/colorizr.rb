class String

  @@colors_list = {
    :red => 31,
    :green => 32,
    :yellow => 33,
    :blue => 34,
    :pink => 35,
    :light_bkue => 94,
    :white => 97,
    :light_grey => 37,
    :black => 30
  }

  #A String.color method which returns a list of color methods available
  def self.colors
    @@colors.keys
  end

  #A String.sample_colors method which outputs sample text showcasing all colors
  def self.sample_colors

  end


end
