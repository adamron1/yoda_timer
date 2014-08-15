require_relative 'controller'
require_relative 'list'
require_relative 'router'
require_relative 'viewer'
require_relative 'timer'

class Yoda

  def initialize
    @controller = Controller.new
    @controller.welcome
  end

  ADD_COMMAND = 'add'
  QUIT_COMMAND = 'exit'
  DISPLAY_COMMAND = 'display'
  SELECT_COMMAND = 'select'
  YES = 'y'
  NO = 'n'


  def start
    @controller.enter_task
    user_input = gets.chomp.split(" ")
    @command = user_input.shift.downcase
    @arguement = user_input.join(" ")
    to_controller
  end

  def to_controller
    if @command == ADD_COMMAND
      @controller.add(@arguement)
      start
    elsif @command == SELECT_COMMAND
      @controller.select(@arguement)
      start
    elsif @command == DISPLAY_COMMAND
      @controller.display
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
    if new_input == no

    end
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
