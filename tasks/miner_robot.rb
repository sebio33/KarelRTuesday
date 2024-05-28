#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/miner"
# A class whose robots know how to sweep a short staircase of beepers
class MinerRobot < UrRobot
include Miner
def execute
	3.times {go}
	big_cave_grab
	turn_right
	8.times {move}
	turn_right
	move
	small_cave_grab
	move
	move
	move
	turn_left
	move
	move
	move
	turn_right
	5.times {move}
	turn_right
	move
	turn_left
	bouger_dans_usine
	move
	turn_right
	move
	turn_right
	move
	move
	turn_right
	move
	move
	move
	turn_left
	move
	turn_left
	move
	move
	move
	turn_right
	bouger_dans_usine
	move
	turn_right
	move
	turn_right
	move
	move
	turn_right
	move
	turn_left
	move
	60.times {put_beeper}
	turn_left
	turn_left
	move
end
end