#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/lettre"
# A class whose robots know how to sweep a short staircase of beepers
class ORobot < UrRobot
	include Lettre
 def ecrit_lettre
 	
 	2.times {ligne5
 	turn_left
 	move
 	put_beeper
 	move
 	turn_left}

 	
 end
end