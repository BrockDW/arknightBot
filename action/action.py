import pyautogui
import time
from meta_data import \
    log_format, \
    starCount, \
    trial_default, \
    wait_time_default

class Action:
    def __init__(self, new_day_action_list=None, update_failed_action_list=None, confidenceValue = 0.8):
        if update_failed_action_list is None:
            update_failed_action_list = []
        if new_day_action_list is None:
            new_day_action_list = []
        self.new_day_action_list = new_day_action_list
        self.update_failed_action_list = update_failed_action_list
        self.sleep_radio = 0
        self.check_update = False
        self.instruction = None
        self.confidenceValue = confidenceValue
        pass

    def perform_action(self, instruction):
        self.instruction = instruction
        if self.goback():
            return True
        
        instruction()

        if self.special_case_click_simplify():
            return True
        return False

    def clickOnImg(self, imgUrl, confidenceValue):
        self.wait_on()
        print("\n")
        self.waitForImgAppear(imgUrl, confidenceValue)
        try:
            centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
            if (centerPoint):
                pyautogui.mouseDown(button="left", x=centerPoint[0], y=centerPoint[1])
                time.sleep(1)
                pyautogui.mouseUp(button="left", x=centerPoint[0], y=centerPoint[1])
                print(log_format.format(imgUrl, "image clicked"))
                self.check_update = True
            else:
                print(log_format.format(imgUrl, "button not found, please adjust your screen"))
        except OSError:
            print(log_format.format(imgUrl, "image file did not exists"))
        time.sleep(self.sleep_radio*2)
        print("\n")
        print("*"*starCount)

    def wait_on(self):
        self.waitForImg("./botImg/waitingIcon.png", 5, 0.6)
        self.waitForImg("./botImg/battle/endGameCutPic.png", 5, 0.8)
        self.waitForImg("./botImg/baseIntro.png", 5, 0.8)
        self.waitForImg("./botImg/battle/autoPlayIcon.png", 5, 0.8)
        if self.check_update:
            self.check_update = False
            self.check_battle_failed()
            self.special_case_click_simplify()

    def checkExist(self, imgUrl, confidenceValue, trial = trial_default, wait_time = wait_time_default):
        try:
            while trial > 0:
                centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
                if (centerPoint):
                    print(log_format.format(imgUrl, "exist on screen"))
                    return True
                else:
                    print(log_format.format(imgUrl, "did not exist on screen"))
                    trial -= 1
                time.sleep(wait_time)
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

    def waitForImgAppear(self, imgUrl, curConf, trial=trial_default, waitTime = wait_time_default):
        # counter = 0
        # self.wait_on()
        while (trial > 0):
            if pyautogui.locateCenterOnScreen(imgUrl, confidence=curConf) == None:
                print(log_format.format(imgUrl, "time out, stop waiting"))
            else:
                print(log_format.format(imgUrl, "has appeared"))
                return 0
            print(log_format.format("still waiting for ", imgUrl))
            trial = trial - 1
            time.sleep(waitTime)
        if pyautogui.locateCenterOnScreen(imgUrl, confidence=curConf) == None:
            print(log_format.format(imgUrl, "time out, stop waiting"))
        else:
            print(log_format.format(imgUrl, "has appeared"))
        # print()

    def click_screen(self):
        time.sleep(4)
        pyautogui.click(1900, 10)

    def goback(self):
        # time.sleep(30)
        print(log_format.format("going back", "to the main screen"))
        self.clickOnImg("./botImg/quickJump.png", 0.8)
        self.clickOnImg("./botImg/quickJumpHome.png", 0.8)
        time.sleep(self.sleep_radio*6)
        self.waitForImgAppear("./botImg/homePage/battle.png", 0.8)
        self.click_screen()

        newDayStarted = False

        if (self.checkExist("./botImg/homePage/daily_message.png", 0.8) or self.checkExist("./botImg/homePage/daily_message_off_select.png", 0.8)):
            print(log_format.format("a new day has started", "performing basic operation"))
            self.clickOnImg("./botImg/closePanel.png", 0.8)
            newDayStarted = True
            if self.checkExist("./botImg/homePage/daily_reword.png", 0.8):
                print(log_format.format("no new message today", "reword collected"))
                self.clickOnImg("./botImg/closePanel.png", 0.8)
                newDayStarted = True

            if self.checkExist("./botImg/homePage/daily_reword_auto_trigger.png", 0.8):
                print(log_format.format("no new message today", "reword collected"))
                self.click_screen()
                self.clickOnImg("./botImg/closePanel.png", 0.8)
                newDayStarted = True
            if newDayStarted:
                time.sleep(10)
            return newDayStarted



    def special_case_click(self, case_img, confirm_img):
        if self.checkExist(case_img, 0.8):
            centerPoint = pyautogui.locateCenterOnScreen(confirm_img, confidence=0.8)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format(confirm_img, "image clicked"))
                time.sleep((self.sleep_radio + 2) * 20)
                go_back_result = self.goback()
                self.instruction()
                self.check_update=True
            else:
                print(log_format.format(confirm_img, "button not found, please adjust your screen"))
            return True
        else:
            return False

    def special_case_click_simplify(self):
        if self.checkExist("./botImg/closePanel.png", 0.8):
            centerPoint = pyautogui.locateCenterOnScreen("./botImg/closePanel.png", confidence=0.8)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format("./botImg/closePanel.png", "image clicked"))
                time.sleep((self.sleep_radio + 2) * 20)
                go_back_result = self.goback()
                self.instruction()
                self.check_update=True

        if self.checkExist("./botImg/connection_lost_confirm.png", 0.8):
            centerPoint = pyautogui.locateCenterOnScreen("./botImg/connection_lost_confirm.png", confidence=0.8)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format("./botImg/connection_lost_confirm.png", "image clicked"))
                time.sleep((self.sleep_radio + 2) * 20)
                go_back_result = self.goback()
                self.instruction()
                self.check_update = True

    def check_battle_failed(self):
        self.special_case_click("./botImg/battle_failed.png", "./botImg/battle/refuse_trade.png")

    def drag(self, direction, distance):
        if direction == "left":
            x = 10
            y = 200
            target_distance = distance

        elif direction == "right":
            x = 1900
            y = 200
            target_distance = 0-distance
        else:
            x = 0
            y = 0
            target_distance = distance

        pyautogui.mouseDown(x, y)
        pyautogui.moveTo(x + target_distance, y, duration=1)
        pyautogui.mouseUp()


    def seek_image(self, img, confidence):
        self.drag("left", 1200)
        self.drag("left", 1200)
        self.drag("left", 1200)
        iteration = 0
        while not self.checkExist(img, confidence):
            if iteration >= 20:
                break
            self.drag("right", 300)
            time.sleep(self.sleep_radio*2)
            iteration+=1
        if self.checkExist(img, confidence):
            return True
        else:
            return False
