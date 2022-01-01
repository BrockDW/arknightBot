from action.battle.battle import Battle
import time

class FXGJResourceFarm(Battle):
    def __init__(self, episod, times, use_potion=False, use_stone=False, confidenceValue = 0.8):
        super().__init__(times, use_potion, use_stone, confidenceValue)
        self.episod = episod

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        self.clickOnImg("./botImg/side_story/fxgj/home_page_jump.png", self.confidenceValue)
        self.clickOnImg("./botImg/side_story/fxgj/entrance.png", self.confidenceValue)
        self.clickOnImg("./botImg/side_story/fxgj/"+ self.episod + ".png", self.confidenceValue+0.1)

        self.battleControl()
