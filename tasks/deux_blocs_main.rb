#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "deux_blocs_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
   karel = DeuxBlocsRobot.new(1, 1, Robota::EAST, 28)
 4.times { karel.move
 karel.move
 karel.turn_left }
 
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