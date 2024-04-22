#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
# A class whose robots know how to sweep a short staircase of beepers
class SebaRobot < UrRobot

def turn_right
   turn_left;
   turn_left;
   turn_left;
end
def reculer
	turn_left
	turn_left
	move
	turn_left
	turn_left
end
def pick_beeper
	pick_beeper
	move
end
def prochaine_rangee
	turn_left
	
end
end