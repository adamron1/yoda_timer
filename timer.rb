require 'rails-timeago'

class Timer
	attr_accessor :break_timer, :minutes

	def start_timing_task
		@started_at = Time.now
		puts "Starting task at #{@started_at}"
		@started_at
	end

	def stop_timing_task
		sleep 1500
		YodaSpeak.new.break 
		break_timer
	end


	def break_timer
		@started_at = Time.new
		sleep 300 
		YodaSpeak.new.continue 
	end
end

