from action.battle.battle import Battle
import time

class ResourceFarm(Battle):
    def __init__(self, battleType, times, use_potion=False, use_stone=False):
        super().__init__(times, use_potion, use_stone)
        self.battleType = battleType


    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        oktofarm = True
        # self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/resourceGain.png", 0.9)
        if (self.battleType == "levelUp"):
            self.clickOnImg("./botImg/battle/levelUp.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/battle/LS-5.png", 0.8)
        elif (self.battleType == "coin"):
            self.clickOnImg("./botImg/battle/coin.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/battle/CE-5.png", 0.8)
        elif (self.battleType == "baseBuildRecource"):
            self.clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
            time.sleep(self.sleep_radio*2)
        elif (self.battleType == "elite_pass"):
            if self.seek_image("./botImg/battle/redTicket.png", 0.8):
                self.clickOnImg("./botImg/battle/redTicket.png", 0.8)
                self.clickOnImg("./botImg/battle/AP-5.png", 0.8)
            else:
                oktofarm = False

            # self.clickOnImg("./botImg/battle/SK-5.png", 0.8)
        if oktofarm:
            self.battleControl()
