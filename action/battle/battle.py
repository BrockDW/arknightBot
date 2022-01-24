from action.action import Action
import time

class Battle(Action):
    def __init__(self, times, use_potion=False, use_stone=False, confidenceValue=0.8):
        super().__init__(confidenceValue=confidenceValue)
        self.use_potion = use_potion
        self.use_stone = use_stone
        self.times = times
        pass

    def battleControl(self):
        while (self.times > 0):
            if self.checkExist("./botImg/homePage/battle.png", 0.8):
                self.instruction()
                break
            else:
                self.clickOnImg("./botImg/battle/autoPlay.png", 0.8)
                self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                if (self.checkExist("./botImg/battle/stoneTrade.png", 0.7)):
                    if self.use_stone:
                        self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                        self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                    else:
                        self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                        print("refuse stone trade")
                        break

                elif (self.checkExist("./botImg/battle/potionTrade.png", 0.7)):
                    if self.use_potion:
                        self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                        self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                    else:
                        self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                        print("refuse potion trade")
                        break

                if (self.checkExist("./botImg/battle/killMissionEnd.png", 0.7)):
                    self.click_screen()

                time.sleep(self.sleep_radio * 2)

                self.clickOnImg("./botImg/battle/depart.png", 0.8)

                time.sleep((self.sleep_radio + 5) * 4)

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
