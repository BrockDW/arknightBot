from action.action import Action
import time

class HandleFriend(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)
    
    def local_action(self):
        self.clickOnImg("./botImg/homePage/friend.png", 0.8)
        time.sleep(self.sleep_radio * 2)
        self.clickOnImg("./botImg/homePage/friend_list.png", 0.8)
        time.sleep(self.sleep_radio * 2)
        self.clickOnImg("./botImg/homePage/visite_base.png", 0.8)
        time.sleep(self.sleep_radio * 2)

        while self.checkExist("./botImg/homePage/visit_next_friend.png", 0.8):
            self.clickOnImg("./botImg/homePage/visit_next_friend.png", 0.8)
            time.sleep(self.sleep_radio)
