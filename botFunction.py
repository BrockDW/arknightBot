import cv2
import pyautogui
import time
# import logging

# logging.basicConfig(format='%(name)s - %(levelname)s - %(message)s')
log_format = "{:>40} -- {:>10}"
starCount = 100
from datetime import datetime



class Action:
    def __init__(self):
        self.sleepTime = 6
        pass

    def perform_action(self):
        pass

    def clickOnImg(self, imgUrl, confidenceValue):
        if self.checkExist("./botImg/connection_lost.png", 0.8):
            self.clickOnImg("./botImg/connection_lost_confirm.png", 0.8)
            time.sleep(100)
        try:
            centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
            else:
                print(log_format.format(imgUrl, "button not found, please adjust your screen"))
        except OSError:
            print(log_format.format(imgUrl, "image file did not exists"))
        time.sleep(2)

        self.waitForImg("./botImg/waitingIcon.png", 5, 0.7)
        self.waitForImg("./botImg/battle/endGameCutPic.png", 5, 0.8)
        self.waitForImg("./botImg/baseIntro.png", 5, 0.8)
        print("*"*starCount)

    def checkExist(self, imgUrl, confidenceValue):
        try:
            centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
            if (centerPoint):
                return True
            else:
                print(log_format.format(imgUrl, "did not exist on screen"))
                return False
        except OSError:
            print(log_format.format(imgUrl, "image file did not exists"))
            return False

    def waitForImg(self, imgUrl, waitTime, curConf):
        counter = 0
        while (pyautogui.locateCenterOnScreen(imgUrl, confidence=curConf) != None):
            print(log_format.format(imgUrl, "iteration: " + str(counter)))
            counter += 1
            time.sleep(waitTime)
        print(log_format.format(imgUrl, "has stopped"))
        # print()

    def goback(self):
        # time.sleep(30)
        self.clickOnImg("./botImg/quickJump.png", 0.8)
        self.clickOnImg("./botImg/quickJumpHome.png", 0.8)
        time.sleep(30)
        if self.checkExist("./botImg/closePanel.png", 0.8):
            self.clickOnImg("./botImg/closePanel.png", 0.8)
            self.clickOnImg("./botImg/supplyIcon.png", 0.8)
            self.clickOnImg("./botImg/closePanelSecond.png", 0.8)
            HandlePurchase().perform_action()




class Battle(Action):
    def __init__(self):
        pass

    def battleControl(self, times, enablePotion, enableStone):
        # logging.info("I am here")
        while (times > 0):
            self.clickOnImg("./botImg/battle/autoPlay.png", 0.8)
            
            self.clickOnImg("./botImg/battle/opStart.png", 0.8)
            if (self.checkExist("./botImg/battle/stoneTrade.png", 0.7)):
                if enableStone:
                    self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                    self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                else:
                    self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                    return 0
            
            elif (self.checkExist("./botImg/battle/potionTrade.png", 0.7)):
                if enablePotion:
                    self.clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
                    self.clickOnImg("./botImg/battle/opStart.png", 0.8)
                else:
                    self.clickOnImg("./botImg/battle/refuse_trade.png", 0.9)
                    return 0
            
            if (self.checkExist("./botImg/battle/killMissionEnd.png", 0.7)):
                pyautogui.click(10, 10)

            time.sleep(10)

            self.clickOnImg("./botImg/battle/depart.png", 0.8)

            time.sleep(10)

            self.waitForImg("./botImg/battle/autoPlayIcon.png", 5, 0.8)

            time.sleep(10)

            self.clickOnImg("./botImg/battle/extermination_end.png", 0.8)

            time.sleep(10)

            if (self.checkExist("./botImg/battle/missionFailed.png", 0.7)):
                self.clickOnImg("./botImg/battle/giveUpMission.png", 0.8)
                time.sleep(20)
                self.clickOnImg("./botImg/battle/missionFailedExit.png", 0.8)
                time.sleep(20)
            else:
                self.clickOnImg("./botImg/battle/leveledUp.png", 0.8)
                time.sleep(20)
                self.clickOnImg("./botImg/battle/endOfGame.png", 0.8)
                time.sleep(20)
                times -= 1

class HandlePublicRecrute(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/publicRecrute.png", 0.8)
        while self.checkExist("./botImg/homePage/recrute_confirm.png", 0.8):
            self.clickOnImg("./botImg/homePage/recrute_confirm.png", 0.8)
            self.clickOnImg("./botImg/draw_confirm.png", 0.8)
            pyautogui.click(50, 50)
            time.sleep(5)

        while self.checkExist("./botImg/homePage/begin_new_recrute.png", 0.8):
            self.clickOnImg("./botImg/homePage/begin_new_recrute.png", 0.8)
            self.clickOnImg("./botImg/draw_confirm.png", 0.8)
            pyautogui.click(50, 50)

class HandleBasement(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/base.png", 0.8)
        self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(10)

        if (self.checkExist("./botImg/base/baseNotif.png", 0.8)):
            self.clickOnImg("./botImg/base/baseNotif.png", 0.8)
            self.clickOnImg("./botImg/base/collectGroup.png", 0.8)
            self.clickOnImg("./botImg/base/tradingGroup.png", 0.8)
            self.clickOnImg("./botImg/base/collect_trust.png", 0.8)
            time.sleep(10)
            self.clickOnImg("./botImg/base/baseNotifEnd.png", 0.8)


class HandlePurchase(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/shopping.png", 0.8)
        self.clickOnImg("./botImg/homePage/credit_purchase.png", 0.8)
        # self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(10)

        self.clickOnImg("./botImg/homePage/get_credit.png", 0.8)

        time.sleep(10)

        pyautogui.click(5,5)

        self.continue_purchase("./botImg/homePage/recrute_pass.png")
        self.continue_purchase("./botImg/homePage/75_discount.png")
        self.continue_purchase("./botImg/homePage/50_discount.png")

    def continue_purchase(self, image_url):
        i = 0
        while (self.checkExist(image_url, 0.8) and i <=5):
            self.clickOnImg(image_url, 0.8)
            self.clickOnImg("./botImg/homePage/confirm_purchase.png", 0.8)
            pyautogui.click(5,5)
            time.sleep(5)
            i = i + 1


class HandleMission(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/mission.png", 0.8)
        time.sleep(10)

        while (self.checkExist("./botImg/homePage/mission_complete.png", 0.8)):
            self.clickOnImg("./botImg/homePage/mission_complete.png", 0.8)
            time.sleep(10)
            pyautogui.click(5,5)
            time.sleep(5)



class ResourceFarm(Battle):
    def __init__(self, battleType, times):
        self.battleType = battleType
        self.times = times

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/resourceGain.png", 0.8)
        if (self.battleType == "levelUp"):
            self.clickOnImg("./botImg/battle/levelUp.png", 0.8)
            time.sleep(5)
            self.clickOnImg("./botImg/battle/LS-5.png", 0.8)
        elif (self.battleType == "coin"):
            self.clickOnImg("./botImg/battle/coin.png", 0.8)
            time.sleep(5)
            self.clickOnImg("./botImg/battle/CE-5.png", 0.8)
        elif (self.battleType == "baseBuildRecource"):
            self.clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
            time.sleep(5)

            self.clickOnImg("./botImg/battle/SK-5.png", 0.8)

        self.battleControl(self.times, True, False)


class Extermination(Battle):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/extermination.png", 0.8)
        self.clickOnImg("./botImg/battle/dragon_door.png", 0.8)
        self.clickOnImg("./botImg/battle/dragon_door_city.png", 0.8)
        self.clickOnImg("./botImg/battle/extermination_progress.png", 0.8)

        self.battleControl(1, True, False)







if __name__ == '__main__':
    nine_hour_period = datetime.now()
    tw_hour_period = datetime.now()
    tf_hour_period = datetime.now()
    action_queue = [ResourceFarm("levelUp", 10), HandleMission()]

    while True:
        try:
            current_action = action_queue.pop(0)
            current_action.perform_action()
            # print(current_action)
        except:
            ## do nothing
            time.sleep(60 * 60)

        now = datetime.now()
        print(log_format.format(str(now.time()), "working"))
        if now.time().hour - nine_hour_period.time().hour == 9:
            action_queue.append(HandleBasement())
            nine_hour_period = now

        if now.time().hour - tw_hour_period.time().hour == 12:
            action_queue.append(ResourceFarm("levelUp", 10))
            action_queue.append(HandleMission())
            tw_hour_period = now





# baseButtonLocation = pyautogui.locateOnScreen("C:/Users/Brock/OneDrive/Documents/python/arknightBot/venv/Include/botImg/homePage/base.png", confidence = 0.5)
sleepTime = 6

def waitForImg(imgUrl, waitTime, curConf):
    counter = 0
    while (pyautogui.locateCenterOnScreen(imgUrl, confidence=curConf) != None):
        print(imgUrl + " \t\t\titeration " + str(counter))
        counter+=1
        time.sleep(3)
    print(imgUrl + " \t\t\thas stopped")
    print()

def clickOnImg(imgUrl, confidenceValue):
    try:
        centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence = confidenceValue)
        if(centerPoint):
            pyautogui.click(centerPoint[0], centerPoint[1])
        else:
            print(log_format.format(imgUrl, "button not found, please adjust your screen"))
            print(imgUrl + "\t\t\tbutton not found, please adjust your screen")
    except OSError:
        print(imgUrl + "\t\t\tdid not exists")
    time.sleep(2)

    waitForImg("./botImg/waitingIcon.png", 5, 0.7)
    waitForImg("./botImg/battle/endGameCutPic.png", 5, 0.8)
    waitForImg("./botImg/baseIntro.png", 5, 0.8)
    print()

def checkExist(imgUrl, confidenceValue):
    try:
        centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence = confidenceValue)
        if(centerPoint):
            return True
        else:
            print(imgUrl + "\t\t\t did not exist on screen")
            return False
    except OSError:
        print(imgUrl + "\t\t\tdid not exists")
        return False

def clickGoBack():
    clickOnImg("./botImg/goBack.png", 0.8)


# clickOnImg("./botImg/homePage/base.png", 0.8)
# clickOnImg("./botImg/base/baseNotif.png", 0.8)
# clickOnImg("./botImg/base/collectGroup.png", 0.8)
# clickOnImg("./botImg/base/tradingGroup.png", 0.8)
# clickOnImg("./botImg/base/memberManage.png", 0.8)

def click(x, y):
    pyautogui.click(x, y)
    time.sleep(1)

def battleControl(times):
    # logging.info("I am here")
    while (times > 0):
        clickOnImg("./botImg/battle/autoPlay.png", 0.8)
        clickOnImg("./botImg/battle/opStart.png", 0.8)
        if (checkExist("./botImg/battle/stoneTrade.png", 0.7)):
            clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
            clickOnImg("./botImg/battle/opStart.png", 0.8)
        elif (checkExist("./botImg/battle/potionTrade.png", 0.7)):
            clickOnImg("./botImg/battle/acceptTrade.png", 0.8)
            clickOnImg("./botImg/battle/opStart.png", 0.8)
        if (checkExist("./botImg/battle/killMissionEnd.png", 0.7)):
            click(10, 10)

        time.sleep(5)

        clickOnImg("./botImg/battle/depart.png", 0.8)

        time.sleep(20)

        waitForImg("./botImg/battle/autoPlayIcon.png", 5, 0.8)

        time.sleep(5)

        if (checkExist("./botImg/battle/missionFailed.png", 0.7)):
            clickOnImg("./botImg/battle/giveUpMission.png", 0.8)
            time.sleep(5)
            clickOnImg("./botImg/battle/missionFailedExit.png", 0.8)
            time.sleep(5)
        else:
            clickOnImg("./botImg/battle/leveledUp.png", 0.8)
            time.sleep(5)
            clickOnImg("./botImg/battle/endOfGame.png", 0.8)
            times -= 1

def resourceFarm(resourceType, times=10):
    if (resourceType == "levelUp"):
        clickOnImg("./botImg/battle/levelUp.png", 0.8)
        time.sleep(5)
        clickOnImg("./botImg/battle/LS-5.png", 0.8)
    elif (resourceType == "coin"):
        clickOnImg("./botImg/battle/coin.png", 0.8)
        time.sleep(5)
        clickOnImg("./botImg/battle/CE-5.png", 0.8)
    elif (resourceType == "baseBuildRecource"):
        clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
        time.sleep(5)

        clickOnImg("./botImg/battle/SK-5.png", 0.8)

    battleControl(times)

# def materialFarm(chapter, num, times=10):
#

def chipFarm(chipType, bigChip, times=10):
    if (chipType == "airDmg"):
        clickOnImg("./botImg/battle/chips/airDmg.png", 0.8)
        time.sleep(5)
        if(bigChip):
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)
        else:
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)

    elif (chipType == "costAndSupport"):
        clickOnImg("./botImg/battle/chips/costAndSupport.png", 0.8)
        time.sleep(5)
        clickOnImg("./botImg/battle/CE-5.png", 0.8)
        if (bigChip):
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)
        else:
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)

    elif (chipType == "groundDmg"):
        clickOnImg("./botImg/battle/chips/groundDmg.png", 0.8)
        time.sleep(5)
        if (bigChip):
            clickOnImg("./botImg/battle/chips/PR-D-2.png", 0.8)
        else:
            clickOnImg("./botImg/battle/chips/PR-D-1.png", 0.8)

    elif (chipType == "defenceAndHeal"):
        clickOnImg("./botImg/battle/chips/defenceAndHeal.png", 0.8)
        time.sleep(5)
        clickOnImg("./botImg/battle/SK-5.png", 0.8)
        if (bigChip):
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)
        else:
            clickOnImg("./botImg/battle/chips/LS-5.png", 0.8)

    battleControl(times)

#
# clickOnImg("./botImg/battle/material/4-4.png", 0.9)
# battleControl(10)
# pyautogui.sleep(5)
# clickOnImg("./botImg/goBack.png", 0.8)
# pyautogui.sleep(2)
#
# pyautogui.mouseDown(800, 200)
# pyautogui.moveTo(200, 200, duration=1)
# pyautogui.mouseUp()
#

# pyautogui.sleep(5)
# clickOnImg("./botImg/goBack.png", 0.8)
# pyautogui.sleep(5)
# clickOnImg("./botImg/battle/material/6-3.png", 0.8)
# pyautogui.sleep(5)
# battleControl(10)

# clickOnImg("./botImg/battle/material/4-8.png", 0.9)
# battleControl(10)
# pyautogui.sleep(5)
# clickOnImg("./botImg/goBack.png", 0.8)
# pyautogui.sleep(2)
#
# clickOnImg("./botImg/battle/material/4-9.png", 0.9)
# battleControl(10)
# pyautogui.sleep(5)
# clickOnImg("./botImg/goBack.png", 0.8)
# pyautogui.sleep(2)
#
# pyautogui.mouseDown(1000, 200)
# pyautogui.moveTo(200, 200, duration=1)
# pyautogui.mouseUp()
#
# pyautogui.sleep(5)
# clickOnImg("./botImg/battle/material/4-10.png", 0.9)
# battleControl(20)
# pyautogui.sleep(5)
# clickOnImg("./botImg/goBack.png", 0.8)
# pyautogui.sleep(2)

# pyautogui.dragTo(200, 200)

# battleControl(8)


# clickOnImg("./botImg/homePage/base.png", 0.8)
# if (checkExist("./botImg/base/baseNotif.png", 0.8)):
#     clickOnImg("./botImg/base/baseNotif.png", 0.8)
#     clickOnImg("./botImg/base/collectGroup.png", 0.8)
#     clickOnImg("./botImg/base/tradingGroup.png", 0.8)
#     clickOnImg("./botImg/base/baseNotifEnd.png", 0.8)

# clickOnImg("./botImg/base/memberManage.png", 0.8)
# allLocation = pyautogui.locateAllOnScreen("./botImg/base/tirdFace.png", confidence = 0.95)
# checked = False
# for i in allLocation:
#     checked = True
#     print(i.left, i.top)
#     click(i.left, i.top)
#     allLocationSelection = list(pyautogui.locateAllOnScreen("./botImg/base/tirdFaceSelection.png", confidence = 0.95))
#     allLocationSelection = removeSimilarDuplicate(allLocationSelection)
#     for z in allLocationSelection:
#         click(z[0], z[1])
#     break
#
# print(checked)

# chipFarm("groundDmg", True, 10)

# battleControl(20)
#
# resourceFarm("levelUp", 20)
# clickOnImg("./botImg/goBack.png", 0.8)
# clickOnImg("./botImg/goBack.png", 0.8)
# resourceFarm("coin", 30)


# clickOnImg("./botImg/goBack.png", 0.8)
# clickOnImg("./botImg/homePage/battle.png", 0.8)
# clickOnImg("./botImg/battle/resourceGain.png", 0.8)
# clickOnImg("./botImg/battle/levelUp.png", 0.8)
# clickOnImg("./botImg/battle/LS-5.png", 0.8)

# clickOnImg("./botImg/homePage/member.png", 0.8)
# clickOnImg("./botImg/homePage/base.png", 0.8)
#
# pyautogui.sleep(sleepTime)
#
# clickOnImg("./botImg/base/baseNotif.png", 0.8)
#
# pyautogui.sleep(sleepTime)
#
# clickGoBack()

# print(baseButtonLocation)

# print(pyautogui.position())



