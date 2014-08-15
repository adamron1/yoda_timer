class Yoda
  attr_reader :task, :list 

  def initialize 
    start_day 
    @list = [["do this"], ["do that"]]
     
  end 

  def start_day
    @new_day = YodaSpeak.new.welcome  
    @list = List.new.enter_task 
  end 
end 

##########################
class List 

  def initilalize 
    @list << Task.new 
  end 

  def enter_task 
    YodaSpeak.new.enter_task
  end 
end 

########
class Task 
  attr_reader :gets_task, :select_task 
  
 def gets_task(user_input)
    Task.new
    @task
  end 
  
  def select_task 
  #Timer.new 
  end

  def return_tasks(user_input)
  @tasks 
  end 
end 


##########
class Timer 
end

class YodaSpeak 
attr_reader :welcome, :enter_task, :select_task, :break, :continue, :well_done 

   
  def welcome
    puts "Welcomes you, Yoda does"
    puts "Many challenges you may face today.. The winding path to peace is always a worthy one, regardless of how many turns it takes."
    puts @list 
  end 


  def enter_task 
    puts "Speak now your yoda code - list the tasks you wish to complete" 
    puts "----------------------------------------------------"
  end 

  def select_task 
    puts "Worthy is your time, choose your challenge to begin"
    puts @list 
  end 

  def break
    puts "Take a break you must "
    puts "Feel the force around you. Here. There. Between you, me, the tree, the rock. Everywhere, yes." 
    puts "----------------------------------------------------"
    
  end 

  def continue 
    puts "A single chance is a galaxy of hope."
    puts "would you like to move forward to task new or continue again the previous one ?"
    puts @list 
    select 
  end 

  def well_done
    puts "you have completed many challenges young one"
  end 

  def random_quote 
    puts 
  end 
end 


jaims = Yoda.new 




