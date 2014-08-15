require_relative 'controller'
require_relative 'list'

class Yoda

  def initialize
    #things_to_say
  end

  ADD_COMMAND = 'add'
  QUIT_COMMAND = 'exit'
  DISPLAY_COMMAND = 'display'
  SELECT_COMMAND = 'select'
  YES = 'y'


  def start
    @controller = Controller.new
    puts "What do you want to do? (add, exit, select, display)"
    user_input = gets.chomp.split(" ")
    @command = user_input.shift.downcase
    @arguement = user_input.join(" ")
    to_controller
  end

  def to_controller
    if @command == ADD_COMMAND
      @controller.add(@arguement)
      puts "ADDING #{@arguement}"
      start
    elsif @command == SELECT_COMMAND
      @controller.select(@arguement)
      puts "SELECTING #{@arguement}"
      start
    elsif @command == DISPLAY_COMMAND
      controller.display
    elsif @command == QUIT_COMMAND
      puts "EXITING YODA"
    else
      puts "Invalid command"
      start
    end
  end

  def finished?
    puts "Are you finished with the exercise (y/n)?"
    new_input = gets.chomp
  end

  def things_to_say
    puts "-"*30
    puts "Welcome to YODA"
    puts "Do or do not; there is no try"
    puts "To do today, what do you want?"
    puts "Your options are: 'add', 'view'."
  end


end

yoda = Yoda.new
yoda.start
