#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/sensor_pack.rb"
require_relative "../mixins/turner.rb"
# A class whose robots know how to sweep a short staircase of beepers
class Tache12Robot < UrRobot
include SensorPack 
include Turner
def randnumb
	
end
num1 = rand(0..20)  //valeur entre 0 et 20

  
end