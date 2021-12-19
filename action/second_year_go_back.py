from action.action import Action
import time

class SecondYearGoBack(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        if (self.checkExist("./botImg/homePage/2nd_yeah_reword.png", 0.8)):
            self.clickOnImg("./botImg/homePage/2nd_yeah_reword.png", 0.8)
            self.click_screen()
            self.clickOnImg("./botImg/closePanel.png", 0.8)
        if (self.checkExist("./botImg/homePage/mining_reward.png", 0.8)):
            self.clickOnImg("./botImg/homePage/begin_mining.png", 0.8)
            time.sleep(self.sleep_radio*8)
            self.click_screen()
            self.clickOnImg("./botImg/closePanel.png", 0.8)