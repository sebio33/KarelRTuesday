#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"
# A class whose robots know how to sweep a short staircase of beepers
class TFinaleRobot < UrRobot
include SensorPack

	def turn_right
	    3.times { turn_left }
	end

	def turn_around
		turn_left
		turn_left
	end

	def execute
		puts "Combien de colonnes^"
    	num = gets.chomp.to_i 
    	x = 1
    	y = 0
        13.times do
		    12.times do 
		        while next_to_a_beeper?
			        pick_beeper
			        y = y + 1
    			end
    			if front_is_clear?
    				move
    			end
			end
			turn_around
			12.times { move }
			turn_right
			move
			turn_right
		end
		turn_right
		13.times { move }
		turn_around
		until @beepers == 0
			until x == num + 1
				x.times {   if y != 0
								put_beeper 
								y = y - 1
							end
							
							move }
				turn_around
				x.times { move  }
				turn_left
				move
				turn_left
				x = x + 1
			end
		end 
	end
end 