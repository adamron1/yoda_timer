require 'csv'


class List

  attr_reader :list

  def initialize
    @list = []
    CSV.foreach("data.csv") do |row|
      @list << Task.new(row)
    end
    p @list
  end

  def add(arg)
    @list << Task.new([nil,arg,false,false])
    save
  end

  def save
    CSV.open("data.csv", "wb") do |csv|
      list.each {|row| csv << [row.number, row.description, row.complete, row.attempted] }
    end
  end

  def select(arg)
    @list[arg.to_i-1].been_attempted
    save
  end

end

class Task
  attr_reader :number, :description, :complete, :attempted

  def initialize(arg)
    @@item_num ||= 1
    @number = @@item_num
    @@item_num +=1
    @description = arg[1]
    @complete = arg[2] == 'true'
    @attempted =  arg[3] == 'true'
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

