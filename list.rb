require 'csv'

class List

  attr_reader :list

  def initialize
    @list = []
    CSV.foreach("data.csv") do |row|
      @list << Task.new(row)
    end
  end

  def add(arg)
    @list << Task.new([arg,false,false])
    save
  end

  def save
    CSV.open("data.csv", "wb") do |csv|
      list.each {|row| csv <<  [row.description, row.complete, row.attempted] }
    end
  end

  def select(arg)
    @list[arg.to_i-1].been_attempted
    save
  end

end

class Task
  attr_reader :description, :complete, :attempted

  def initialize(arg)
    @description = arg[0]
    @complete = arg[1] == 'true'
    @attempted =  arg[2] == 'true'
  end



  def check_off
    @complete = true
  end

  def been_attempted
    @attempted=true
  end

end

# my_list = List.new
# p my_list.list

