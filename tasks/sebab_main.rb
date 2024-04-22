#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "sebab_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/sebasworldb")
  karel = SebabRobot.new(1, 6, Robota::NORTH, 0)
  karel.pick_beepers1
  karel.pick_beepers2
  karel.pick_beepers3
  karel.pick_beepers4
  karel.pick_beepers5
  karel.pick_beepers6
  karel.pick_beepers7
end

if __FILE__ == $0
  if $graphical
     screen = window(8, 40) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end