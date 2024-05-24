#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "q14_3_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 world = Robota::World
   karel = Q143Robot.new(1, 1, Robota::NORTH, 1, :red)  
   karel.send ("go")
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