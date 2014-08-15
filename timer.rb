#require 'rails-timeago'

class Timer
attr_accessor

 def initialize
  run
 end

 def run
  start_timing_task
  stop_timing_task
 end


 def start_timing_task
  @started_at = Time.now.strftime("%H:%M:%S")
  puts "Starting task at #{@started_at}"

 end

 def stop_timing_task
   #sleep 1500
   sleep 10
   YodaSpeak.new.break
   break_timer
 end

  def break_timer
   @started_at = Time.new
   #sleep 300
   sleep 5
   YodaSpeak.new.continue
  end
end
