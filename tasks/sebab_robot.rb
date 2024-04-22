#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
# A class whose robots know how to sweep a short staircase of beepers
class SebabRobot < UrRobot

def turn_right
   turn_left;
   turn_left;
   turn_left;
end
def pick_beepers1
	move
	pick_beeper
	turn_left
	move
	turn_right
	move
	turn_right
end
def pick_beepers2
	pick_beeper
	move
	move
	pick_beeper
	move
	turn_left
	move
	turn_left
end
def pick_beepers3
	pick_beeper
	move
	move
	pick_beeper
	move
	move
	pick_beeper
	move
	turn_right
	move
	turn_right
end
def pick_beepers4
	pick_beeper
	move
	move
	pick_beeper
	move
	move
	pick_beeper
	move
	move
	pick_beeper
	turn_left
	move
	turn_left
	move
end
def pick_beepers5
	pick_beeper
	move
	move
	pick_beeper
	move
	move
	pick_beeper
	turn_right
	move
	turn_right
	move
end
def pick_beepers6
	pick_beeper
	move
	move
	pick_beeper
	turn_left
	move
	turn_left
	move
end
def pick_beepers7
	pick_beeper
end
end