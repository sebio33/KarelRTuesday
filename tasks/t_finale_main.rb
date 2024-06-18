#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "t_finale_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/tache_finale_b.kwld")
  karel = TFinaleRobot.new(1, 1, Robota::EAST, 0)
 karel.execute 
end
if __FILE__ == $0
  if $graphical
     screen = window(13, 95) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end