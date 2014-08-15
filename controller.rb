

class Controller

  def initialize
    @yoda_speak = YodaSpeak.new
  end

  def welcome
    @yoda_speak.welcome
  end

  def enter_task
    @yoda_speak.enter_task
  end

  def add(arg)
    #successfully gets this far
    @list = List.new
    @list.add(arg)
  end

  def select(arg)
    @list = List.new
    @list.select(arg)
    timer
  end

  def display
    @yoda_speak.display_list
  end

  def timer
    Timer.new
  end

end
