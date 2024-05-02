#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"

class Quiz1Robot < UrRobot

def turn_right
	turn_left
	turn_left
	turn_left
end

def executer
	7.times { put_beeper
		move  }
	put_beeper
	turn_left
	move
	turn_left
	move
	5.times {
		put_beeper
		move}
	put_beeper
	turn_right
	move
	put_beeper
	turn_right
	move
	put_beeper
	turn_left
	move
	turn_left
	move
	put_beeper
	turn_left
	4.times {move}
	put_beeper
	move
	put_beeper
	move
	put_beeper
	turn_left
	move
	turn_left
	move
	put_beeper
	move
	put_beeper
	turn_right
	4.times {move
		put_beeper}
end

end