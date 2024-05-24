#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/grinch"
# A class whose robots know how to sweep a short staircase of beepers
class GrinchRobot < UrRobot
include Grinch
def execute
	row_grab
	turn_left
	9.times {move}
	turn_left
	6.times {move}
	turn_left
	3.times {move}
	turn_right
	row_grab
	turn_right
	move
	turn_right
	move
	move
	move
	turn_left
	move
	turn_right
	move
	move
	24.times {put_beeper}
end
end