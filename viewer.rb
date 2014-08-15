class YodaSpeak
attr_reader :welcome, :enter_task, :select_task, :break, :continue, :well_done

  def initialize
  end

  def welcome
    puts "Welcomes you, Yoda does"
    puts "Many challenges you may face today.. The winding path to peace is always a worthy one, regardless of how many turns it takes."
    puts @list
  end

  def display_list
    puts "-"*30
    our_list = List.new.list
    puts "no.\tDescription\t\t\tFinished?\tAttempted?"
    our_list.each_with_index {|item,i| puts "#{i+1}.\t#{item.description},\t\t#{item.complete},\t\t#{item.attempted} "}
    puts "-"*30
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
  end

  def well_done
    puts "you have completed many challenges young one"
  end

  def random_quote
    puts
  end
end
