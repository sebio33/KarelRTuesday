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
