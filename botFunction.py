import cv2
import pyautogui
import time
# import logging

# logging.basicConfig(format='%(name)s - %(levelname)s - %(message)s')
log_format = "{:>40} -- {:>10}"
starCount = 100



class Action:
    def __init__(self):
        self.sleepTime = 6
        pass

    def perform_action(self):
        pass

    def clickOnImg(self, imgUrl, confidenceValue):
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

class HandleOpen(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.clickOnImg("./botImg/closePanel.png", 0.8)
        self.clickOnImg("./botImg/supplyIcon.png", 0.8)
        self.clickOnImg("./botImg/closePanelSecond.png", 0.8)
        self.clickOnImg("./botImg/homePage/publicRecrute.png", 0.8)
        while self.checkExist("./botImg/homePage/recrute_confirm.png", 0.8):
            self.clickOnImg("./botImg/homePage/recrute_confirm.png", 0.8)
            self.clickOnImg("./botImg/draw_confirm.png",0.8)
            pyautogui.click(50,50)

        while self.checkExist("./botImg/homePage/begin_new_recrute.png", 0.8):
            self.clickOnImg("./botImg/homePage/begin_new_recrute.png", 0.8)
            self.clickOnImg("./botImg/draw_confirm.png",0.8)
            pyautogui.click(50,50)
        # self.clickOnImg("./botImg/draw_confirm.png", 0.8)
        # pyautogui.click(50, 50)
        pass


##if __name__ == '__main__':
##    handle_open = HandleOpen()
##    handle_open.perform_action()




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

battleControl(6)

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



