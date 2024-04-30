#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/lettre"
# A class whose robots know how to sweep a short staircase of beepers
class LRobot < UrRobot
	include Lettre
 def ecrit_lettre
 	ligne5
 	turn_left
 	move
 	ligne2
 end
end