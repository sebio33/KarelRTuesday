#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "face_nord_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
   karel = FaceNordRobot.new(5, 5, Robota::EAST, 0)
2.times { karel.turn_left
4.times {karel.move
} }
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