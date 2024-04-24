#Copyright 2010 Joseph Bergin
#License: Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States License


require_relative "../karel/ur_robot"
require_relative "../mixins/turner7b"
# A class whose robots know how to sweep a short staircase of beepers
class Seba7bRobot < UrRobot
include Turner7b



end