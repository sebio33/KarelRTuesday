#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "tache10_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/aleatoire.kwld")
  karel = Tache10Robot.new(2, 2, Robota::EAST, 0)
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