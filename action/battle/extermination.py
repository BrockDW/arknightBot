from action.battle.battle import Battle

class Extermination(Battle):
    def __init__(self, times, use_potion=False, use_stone=False):
        super().__init__(times, use_potion, use_stone)
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/extermination.png", 0.8)
        self.clickOnImg("./botImg/battle/dragon_door.png", 0.8)
        self.clickOnImg("./botImg/battle/dragon_door_city.png", 0.8)
        self.clickOnImg("./botImg/battle/extermination_progress.png", 0.8)

        self.battleControl()