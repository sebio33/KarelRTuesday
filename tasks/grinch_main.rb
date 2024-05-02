#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "grinch_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/grinch.kwld")
  karel = GrinchRobot.new(12, 4, Robota::SOUTH, 0)
  karel.execute
end
if __FILE__ == $0
  if $graphical
     screen = window(15, 75) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end