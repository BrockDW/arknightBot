from action.action import Action
import time

class HandleMission(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        # self.goback()
        self.clickOnImg("./botImg/homePage/mission.png", 0.8)
        time.sleep(self.sleep_radio*2)
        self.clickOnImg("./botImg/homePage/daily_mission.png", 0.8)
        self.click_mission()
        self.clickOnImg("./botImg/homePage/weekly_mission.png", 0.8)
        self.click_mission()



    def click_mission(self):
        while (self.checkExist("./botImg/homePage/mission_complete.png", 0.8)):
            if self.checkExist("./botImg/mission_end.png", 0.8):
                break
            self.clickOnImg("./botImg/homePage/mission_complete.png", 0.8)
            time.sleep(self.sleep_radio*5)
            self.click_screen()
            time.sleep(self.sleep_radio*5)
            self.click_screen()