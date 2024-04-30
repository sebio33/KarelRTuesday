#!/opt/local/bin/ruby
#Copyright 2012 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License

$graphical = true

require_relative "h_robot"
require_relative "e_robot"
require_relative "l_robot"
require_relative "o_robot"
require_relative "../karel/robota"

# a task for a stair sweeper
 def task()
   karel = Gerant.new
   karel.tache

 end
if __FILE__ == $0
  if $graphical
     screen = window(22, 95) # (size, speed)
     screen.run do
       task
     end
   else
     task
   end
end