from action.action import Action
import time

class HandleBasement(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)
        # return 0
    
    def local_action(self):
        self.clickOnImg("./botImg/homePage/base.png", 0.8)
        self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(self.sleep_radio*2)

        if (self.checkExist("./botImg/base/baseNotif.png", 0.8)):
            self.clickOnImg("./botImg/base/baseNotif.png", 0.8)
            self.clickOnImg("./botImg/base/collectGroup.png", 0.8)
            self.clickOnImg("./botImg/base/tradingGroup.png", 0.8)
            self.clickOnImg("./botImg/base/collect_trust.png", 0.8)
            time.sleep(self.sleep_radio*2)
            self.clickOnImg("./botImg/base/baseNotifEnd.png", 0.8)
