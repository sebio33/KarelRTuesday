#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "miner_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
 world.read_world("../karel/miner.kwld")
  karel = MinerRobot.new(19, 4, Robota::WEST, 0)
  karel.execute
end
if __FILE__ == $0
  if $graphical
     screen = window(20, 80) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end