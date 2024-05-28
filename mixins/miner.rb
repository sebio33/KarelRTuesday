#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

=begin
 The beginnings of a student defined module to be mixed in to other classes to provide
 auxiliary methods that are generally useful.  
=end
require_relative "../mixins/sensor_pack.rb"
module Miner
include SensorPack

  # Turn right by executing three turn left actions
  def turn_right
    turn_left
    turn_left
    turn_left
  end
  
  # Turn around by executing two turn left actions
  def turn_around
    turn_left
    turn_left
  end
  
  # Back up by turning around, moving and again turning around. Robot
  # will be left facing the original direction. Might fail if there is 
  # a wall immediately behind the robot at the start. 
  def back_up
    turn_around
    move
    turn_around
  end

def big_cave_grab
 move
 turn_right
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_left
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_left
 move
 if next_to_a_beeper?
   pick_beeper
 end
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_left
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_right
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_right
 move
 if next_to_a_beeper?
   pick_beeper
 end
 move
 if next_to_a_beeper?
   pick_beeper
 end
 turn_right
 move
 if next_to_a_beeper?
   pick_beeper
 end
 move
 if next_to_a_beeper?
   pick_beeper
 end
 move
 10.times {pick_beeper}
 turn_around
 move
 move
 move
 turn_left
 move
 move
 turn_left
 move
 turn_left
 move
 turn_right
 move
 move 
 turn_right
 move
 turn_right 
 move
 turn_left
 move

end
def small_cave_grab
  move
  turn_left
  move
  turn_right
  move
  turn_right
  move
  3.times {pick_beeper}
  turn_around
  move
  turn_left
  move
  turn_left
  move
  turn_right
  move
end
def go
  big_cave_grab
  turn_right
  8.times {move}
  turn_right
  move
  small_cave_grab
  turn_right
  7.times {move}
  turn_right
  move
  turn_left
end
def bouger_dans_usine
  move
  2.times {move
  turn_right
  move
  turn_right
  move
  turn_left
  move
  turn_left}
end
end