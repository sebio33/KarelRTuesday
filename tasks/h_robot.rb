#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/lettre"
require_relative "e_robot"
require_relative "l_robot"
require_relative "o_robot"
# A class whose robots know how to sweep a short staircase of beepers
 class HRobot < UrRobot
	 include Lettre
      def ecrit_lettre
 	     ligne5
 	     turn_around
 	     4.times {move}
 	     turn_right
 	     move
 	     move
 	     move
 	     turn_right
 	     ligne5
 	     turn_around
 	     move
 	     move
 	     turn_left
 	     move
 	     ligne2
         end
     end
  class Gerant

     def tache
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
     end
