from action.action import Action
import time

class Battle(Action):
    def __init__(self, times, use_potion=False, use_stone=False):
        super().__init__()
        self.use_potion = use_potion
        self.use_stone = use_stone
        self.times = times
        pass

    def battleControl(self):
        # logging.info("I am here")
        while (self.times > 0):
            self.clickOnImg("./botImg/battle/autoPlay.png", 0.8)
            self.clickOnImg("./botImg/battle/opStart.png", 0.8)
            if (self.checkExist("./botImg/battle/stoneTrade.png", 0.7)):
                if self.use_stone:
                    self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                    self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                else:
                    self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                    break
                    # return 0

            elif (self.checkExist("./botImg/battle/potionTrade.png", 0.7)):
                if self.use_potion:
                    self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                    self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                else:
                    self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                    break
                    # return 0

            if (self.checkExist("./botImg/battle/killMissionEnd.png", 0.7)):
                self.click_screen()

            time.sleep(self.sleep_radio * 2)

            self.clickOnImg("./botImg/battle/depart.png", 0.8)

            time.sleep((self.sleep_radio + 5) * 2)

            self.waitForImg("./botImg/battle/autoPlayIcon.png", 5, 0.8)

            time.sleep(self.sleep_radio * 2)

            self.clickOnImg("./botImg/battle/extermination_end.png", 0.8)

            time.sleep(self.sleep_radio * 2)

            self.clickOnImg("./botImg/battle/extermination_progress.png", 0.8)

            time.sleep(self.sleep_radio * 2)

            if (self.checkExist("./botImg/battle/missionFailed.png", 0.7)):
                self.clickOnImg("./botImg/battle/giveUpMission.png", 0.8)
                time.sleep(self.sleep_radio * 4)
                self.clickOnImg("./botImg/battle/missionFailedExit.png", 0.8)
                time.sleep(self.sleep_radio * 4)
            else:
                self.clickOnImg("./botImg/battle/leveledUp.png", 0.8)
                time.sleep(self.sleep_radio * 4)
                self.clickOnImg("./botImg/battle/endOfGame.png", 0.8)
                time.sleep(self.sleep_radio * 4)
                self.times -= 1
        # self.check_new_day_update()
