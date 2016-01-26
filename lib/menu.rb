class Menu
  def initialize(window)
    @window = window
    @title = Image.new(
      @window,
      "media/menu.jpg"
    )
  end

  def draw
    @title.draw(0,(HEIGHT - 300) / 2,0) #title.draw(0,0,0) TODO make full size image for each menu
  end

  def update ; end

  def button_down(id)
    if id == Gosu::KbEscape || id == Gosu::KbQ
      @window.close
    elsif id == Gosu::KbSpace
      @window.show_next_level
    end
  end
end
