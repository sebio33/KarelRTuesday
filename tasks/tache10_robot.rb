#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"
# A class whose robots know how to sweep a short staircase of beepers
class Tache10Robot < UrRobot
include SensorPack 

def turn_right
	turn_left
	turn_left
	turn_left
	
end

  def move_without_hitting_wall
        # Vérifie si Karel peut avancer sans heurter le mur
        if front_is_clear?
            # Si le chemin est libre, avance
            move
  		end
  end
  def move_without_hitting_wall_u
  	unless front_is_clear? == false
  		move
  	end
  end
  def execute
	until @beepers == 23
		if next_to_a_beeper?
			pick_beeper
		end
		if front_is_clear?
			move
		elsif @direction == Robota::EAST
			turn_left
			move
			turn_left
		else
			turn_right
			move
			turn_right
		end

	end
  end
end