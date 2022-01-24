from action.battle.battle import Battle
import time

class Extermination(Battle):
    def __init__(self, use_potion=False, use_stone=False):
        super().__init__(1, use_potion, use_stone)
        self.sleep_radio = 5
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        # self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/extermination.png", 0.8)
        time.sleep((self.sleep_radio + 3) * 2)
        self.click_screen()
        time.sleep((self.sleep_radio + 3) * 2)
        self.clickOnImg("./botImg/battle/switch_extermination.png", 0.8)
        # self.clickOnImg("./botImg/battle/dragon_door.png", 0.8)
        self.clickOnImg("./botImg/battle/dragon_door_city_switch.png", 0.8)
        # self.clickOnImg("./botImg/battle/extermination_progress.png", 0.8)

        self.battleControl()

        time.sleep((self.sleep_radio + 3) * 6)
        self.click_screen()
        time.sleep((self.sleep_radio + 3) * 6)

        time.sleep((self.sleep_radio + 3) * 6)
        self.click_screen()
        time.sleep((self.sleep_radio + 3) * 6)