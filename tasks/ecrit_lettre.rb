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
 world = Robota::World
  karelh = HRobot.new(7, 2, Robota::SOUTH, 12)
  karele = ERobot.new(7, 7, Robota::SOUTH, 11)
  karell1 = LRobot.new(7, 11, Robota::SOUTH, 7)
  karell2 = LRobot.new(7, 15, Robota::SOUTH, 7)
  karelo = ORobot.new(7, 19, Robota::SOUTH, 12)

  karelh.ecrit_lettre
  karele.ecrit_lettre
  karell1.ecrit_lettre
  karell2.ecrit_lettre
  karelo.ecrit_lettre

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