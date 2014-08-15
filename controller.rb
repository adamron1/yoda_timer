
class Controller

  def initialize
  end

  def add(arg)
    #successfully gets this far
    @list = List.new
    @list.add(arg)
  end

  def select(arg)
    @list = List.new
    @list.select(arg)
  end

end
