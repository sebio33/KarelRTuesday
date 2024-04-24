#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "seba7b_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/sebasworld7b")
  karel = Seba7bRobot.new(5, 3, Robota::NORTH, 12)
  karel.action
end
if __FILE__ == $0
  if $graphical
     screen = window(12, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end