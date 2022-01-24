from action.battle.battle import Battle
import time

class ChipFarm(Battle):
    def __init__(self, chip_type, times, use_potion=False, use_stone=False):
        super().__init__(times, use_potion, use_stone)
        self.chip_type = chip_type

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/resourceGain.png", 0.8)
        if (self.chip_type == "mage_sniper"):
            self.clickOnImg("./botImg/battle/chips/airDmg.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/battle/chips/PR-B-2.png", 0.8)
        elif (self.chip_type == "healer_defender"):
            self.clickOnImg("./botImg/battle/chips/defenceAndHeal.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/battle/chips/PR-A-2.png", 0.8)
        elif (self.chip_type == "baseBuildRecource"):
            self.clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/battle/SK-5.png", 0.8)

        self.battleControl()
