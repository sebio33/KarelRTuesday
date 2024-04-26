#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "c8_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
   karel1 = C8Robot.new(1, 1, Robota::NORTH, 1, :red)
    karel5 = C8Robot.new(1, 1, Robota::NORTH, 0, :yellow)
     karel2 = C8Robot.new(6, 1, Robota::EAST, 0, :blue)
      karel3 = C8Robot.new(6, 6, Robota::SOUTH, 0, :green)
       karel4 = C8Robot.new(1, 6, Robota::WEST, 0, :black)
karel1.go
karel1.put_beeper
karel1.turn_right
karel2.pick_beeper
karel2.go
karel2.put_beeper
karel2.turn_right
karel3.pick_beeper
karel3.go
karel3.put_beeper
karel3.turn_right
karel4.pick_beeper
karel4.go
karel4.put_beeper
karel4.turn_right
karel5.pick_beeper
karel5.go
karel5.put_beeper
karel5.turn_right

end
if __FILE__ == $0
  if $graphical
     screen = window(18, 85) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end