#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "Q1_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
def task()
 
  karel = Q1Robot.new(3, 3, Robota::NORTH, 5)
 karel.place_beepers
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