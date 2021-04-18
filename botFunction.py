import cv2
import pyautogui
import time
# import logging
from os import listdir
from os.path import isfile, join

log_format = "{:>40} -- {:>10}"
starCount = 100
sleep_radio = 8
single_four_star = ["zy", "xr", "wy", "ksfh", "tzgy"]
double_four_star = {
    "js": ["qg", "jwgy", "jjgy", "ssgy", "shuchu","jzw"],
    "sc": ["jjgy", "ycw"],
    "zl": ["xfgy", "fyhf"]
}
single_five_star = ["zh", "bf", "kc"]
double_five_star = {
    "qg": ["xr"],
    "wy": ["shuchu", "zzgy", "fh"],
    "sc": ["zzgy", "fh", "tzgy"],
    "xr": ["fzgy"],
    "zy": ["xfgy", "fyhf", "ycw", "ylgy", "zl"],
    "shuchu": ["zl", "fzgy", "tzgy", "zzgy"],
    "kc": ["xfgy", "fyhf", "tzgy", "ksfh", "fzgy", "js"],
    "fh": ["shuchu", "jwgy"]
}

trible_five_star = ["shuchu", "ycw", "js"]
from datetime import datetime



class Action:
    def __init__(self):
        sleep_radio = 5
        pass

    def perform_action(self):
        pass

    def click_img(self, img, confidence):
        try:
            centerPoint = pyautogui.locateCenterOnScreen(img, confidence=confidence)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format(img, "image clicked"))
            else:
                print(log_format.format(img, "button not found, please adjust your screen"))
        except OSError:
            print(log_format.format(img, "image file did not exists"))

    def click_list_img(self, imgList, confidence):
        for i in range(len(imgList) - 1):
            cur_image = imgList[i]
            next_image = imgList[i+1]
            while not self.checkExist(next_image, confidence):
                self.check_new_day_update()
                self.check_connection_lost()
                self.check_login_failed()
                self.check_battle_failed()
                self.click_img(cur_image, confidence)

        self.click_img(imgList[-1], confidence)

    def clickOnImg(self, imgUrl, confidenceValue):
        self.check_new_day_update()
        self.check_connection_lost()
        self.check_login_failed()
        self.check_battle_failed()

        print()

        try:
            centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format(imgUrl, "image clicked"))
            else:
                print(log_format.format(imgUrl, "button not found, please adjust your screen"))
        except OSError:
            print(log_format.format(imgUrl, "image file did not exists"))
        time.sleep(sleep_radio)

        print()

        self.waitForImg("./botImg/waitingIcon.png", 5, 0.7)
        self.waitForImg("./botImg/battle/endGameCutPic.png", 5, 0.8)
        self.waitForImg("./botImg/baseIntro.png", 5, 0.8)
        print("*"*starCount)

    def checkExist(self, imgUrl, confidenceValue):
        try:
            centerPoint = pyautogui.locateCenterOnScreen(imgUrl, confidence=confidenceValue)
            if (centerPoint):
                print(log_format.format(imgUrl, "exist on screen"))
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

    def click_screen(self):
        pyautogui.click(1900, 10)

    def goback(self):
        # time.sleep(30)
        print(log_format.format("going back", "to the main screen"))
        self.clickOnImg("./botImg/quickJump.png", 0.8)
        self.clickOnImg("./botImg/quickJumpHome.png", 0.8)
        time.sleep(sleep_radio*6)
        if self.checkExist("./botImg/closePanel.png", 0.8):
            print(log_format.format("a new day has started", "performing basic operation"))
            self.clickOnImg("./botImg/closePanel.png", 0.8)
            self.clickOnImg("./botImg/supplyIcon.png", 0.8)
            self.clickOnImg("./botImg/closePanelSecond.png", 0.8)
            HandleFriend().perform_action()
            HandleBasement().perform_action()
            HandlePurchase().perform_action()

    def special_case_click(self, case_img, confirm_img):
        if self.checkExist(case_img, 0.8):
            centerPoint = pyautogui.locateCenterOnScreen(confirm_img, confidence=0.8)
            if (centerPoint):
                pyautogui.click(centerPoint[0], centerPoint[1])
                print(log_format.format(confirm_img, "image clicked"))
                time.sleep(sleep_radio*20)
                self.goback()
            else:
                print(log_format.format(confirm_img, "button not found, please adjust your screen"))
            return True
        else:
            return False

    def check_new_day_update(self):
        time.sleep(sleep_radio*2)
        update_confirm = self.special_case_click("./botImg/updated.png", "./botImg/confirm.png")
        update_failed_confirm = self.special_case_click("./botImg/update_failed.png", "./botImg/confirm.png")
        if (update_failed_confirm):
            HandleBasement().perform_action()
            HandlePurchase().perform_action()
        # if self.checkExist("./botImg/updated.png", 0.8):
        #     self.clickOnImg("./botImg/confirm.png", 0.8)
        #
        #     if self.checkExist("./botImg/update_failed.png", 0.8):
        #         self.clickOnImg("./botImg/confirm.png", 0.8)


    def check_connection_lost(self):
        self.special_case_click("./botImg/connection_lost.png", "./botImg/connection_lost_confirm.png")
        # if self.checkExist("./botImg/connection_lost.png", 0.8):
        #     # self.clickOnImg("./botImg/connection_lost_confirm.png", 0.8)
        #     centerPoint = pyautogui.locateCenterOnScreen("./botImg/connection_lost_confirm.png", confidence=0.8)
        #     if (centerPoint):
        #         pyautogui.click(centerPoint[0], centerPoint[1])
        #         print(log_format.format("./botImg/connection_lost_confirm.png", "image clicked"))
        #         time.sleep(sleep_radio*20)
        #     else:
        #         print(log_format.format("./botImg/connection_lost_confirm.png", "button not found, please adjust your screen"))

    def check_login_failed(self):
        self.special_case_click("./botImg/login_failed.png", "./botImg/confirm.png")
        # if self.checkExist("./botImg/connection_lost.png", 0.8):
        #     # self.clickOnImg("./botImg/connection_lost_confirm.png", 0.8)
        #     centerPoint = pyautogui.locateCenterOnScreen("./botImg/connection_lost_confirm.png", confidence=0.8)
        #     if (centerPoint):
        #         pyautogui.click(centerPoint[0], centerPoint[1])
        #         print(log_format.format("./botImg/connection_lost_confirm.png", "image clicked"))
        #         time.sleep(sleep_radio*20)
        #     else:
        #         print(log_format.format("./botImg/connection_lost_confirm.png", "button not found, please adjust your screen"))

    def check_battle_failed(self):
        self.special_case_click("./botImg/battle_failed.png", "./botImg/battle/refuse_trade.png")
    # def format_print(self, string1,string2):

    def drag(self, direction, distance, mouse_type):
        if direction == "left":
            x = 10
            y = 200
            target_distance = distance

        elif direction == "right":
            x = 1900
            y = 200
            target_distance = 0-distance
            # pyautogui.moveTo(1900, 500)
            # pyautogui.dragTo(1900 - distance, 500, button=mouse_type)
        else:
            x = 0
            y = 0
            target_distance = distance

        pyautogui.mouseDown(x, y)
        pyautogui.moveTo(x + target_distance, y, duration=1)
        pyautogui.mouseUp()
        # pyautogui.moveTo(x, y)
        # pyautogui.dragTo(x + distance, y, button=mouse_type)




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
                self.click_screen()

            time.sleep(sleep_radio*2)

            self.clickOnImg("./botImg/battle/depart.png", 0.8)

            time.sleep(sleep_radio*2)

            self.waitForImg("./botImg/battle/autoPlayIcon.png", 5, 0.8)

            time.sleep(sleep_radio*2)

            self.clickOnImg("./botImg/battle/extermination_end.png", 0.8)

            time.sleep(sleep_radio*2)

            self.clickOnImg("./botImg/battle/extermination_progress.png", 0.8)

            time.sleep(sleep_radio*2)

            if (self.checkExist("./botImg/battle/missionFailed.png", 0.7)):
                self.clickOnImg("./botImg/battle/giveUpMission.png", 0.8)
                time.sleep(sleep_radio*4)
                self.clickOnImg("./botImg/battle/missionFailedExit.png", 0.8)
                time.sleep(sleep_radio*4)
            else:
                self.clickOnImg("./botImg/battle/leveledUp.png", 0.8)
                time.sleep(sleep_radio*4)
                self.clickOnImg("./botImg/battle/endOfGame.png", 0.8)
                time.sleep(sleep_radio*4)
                times -= 1



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
            time.sleep(sleep_radio*2)
            self.clickOnImg("./botImg/battle/LS-5.png", 0.8)
        elif (self.battleType == "coin"):
            self.clickOnImg("./botImg/battle/coin.png", 0.8)
            time.sleep(sleep_radio*2)
            self.clickOnImg("./botImg/battle/CE-5.png", 0.8)
        elif (self.battleType == "baseBuildRecource"):
            self.clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
            time.sleep(sleep_radio*2)

            self.clickOnImg("./botImg/battle/SK-5.png", 0.8)

        self.battleControl(self.times, True, False)
        self.check_new_day_update()

class ChipFarm(Battle):
    def __init__(self, chip_type, times):
        self.chip_type = chip_type
        self.times = times

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/battle.png", 0.8)
        self.clickOnImg("./botImg/battle/chips.png", 0.8)
        if (self.chip_type == "mage_sniper"):
            self.clickOnImg("./botImg/battle/chips/airDmg.png", 0.8)
            time.sleep(sleep_radio*2)
            self.clickOnImg("./botImg/battle/chips/PR-B-2.png", 0.8)
        elif (self.chip_type == "healer_defender"):
            self.clickOnImg("./botImg/battle/chips/defenceAndHeal.png", 0.8)
            time.sleep(sleep_radio*2)
            self.clickOnImg("./botImg/battle/chips/PR-A-2.png", 0.8)
        elif (self.chip_type == "baseBuildRecource"):
            self.clickOnImg("./botImg/battle/baseBuildRecource.png", 0.8)
            time.sleep(sleep_radio*2)

            self.clickOnImg("./botImg/battle/SK-5.png", 0.8)

        self.battleControl(self.times, True, False)
        self.check_new_day_update()

class SSDustWalk(Battle):
    def __init__(self, episodeID, times):
        self.episodeID = episodeID
        self.times = times

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/ss_a_walk_in_the_dust.png", 0.8)
        self.clickOnImg("./botImg/homePage/ss_battle_begin.png", 0.8)
        #self.drag("right", 1000, "left")
        self.clickOnImg("./botImg/homePage/"+self.episodeID +".png", 0.8)
        self.battleControl(self.times, True, False)
        # self.check_new_day_update()

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
        self.check_new_day_update()



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
            time.sleep(sleep_radio*2)

        tag_path = "./botImg/recrute_tag"
        onlyfiles = [f for f in listdir(tag_path) if isfile(join(tag_path, f))]
        print(onlyfiles)

        while self.checkExist("./botImg/homePage/begin_new_recrute.png", 0.8):
            cur_tag_list = []
            self.clickOnImg("./botImg/homePage/begin_new_recrute.png", 0.8)
            for file in onlyfiles:
                if self.checkExist(tag_path + "/"+file, 0.9):
                    cur_tag_list.append(file.split(".")[0])

            print(log_format.format("available tags", str(cur_tag_list)))

            selected = False

            if len(cur_tag_list) == 5:
                for five_single in single_five_star:
                    if five_single in cur_tag_list:
                        self.trigger_recruite([five_single])
                        selected = True
                        break

                for five_double in double_five_star.keys():
                    if five_double in cur_tag_list:
                        for five_double_second in double_five_star[five_double]:
                            if five_double_second in cur_tag_list:
                                self.trigger_recruite([five_double, five_double_second])
                                selected = True
                                break

                for four_single in single_four_star:
                    if four_single in cur_tag_list:
                        self.trigger_recruite([four_single])
                        selected = True
                        break

                for four_double in double_four_star.keys():
                    if four_double in cur_tag_list:
                        for four_double_second in double_four_star[four_double]:
                            if four_double_second in cur_tag_list:
                                self.trigger_recruite([four_double, four_double_second])
                                selected = True
                                break

                if not selected:
                    if "fzgy" in cur_tag_list:
                        self.trigger_recruite(["fzgy"])
                    else:
                        self.trigger_recruite([cur_tag_list[0]])
            else:
                print(log_format.format("unknown tag found", "please screen shot it"))


        self.check_new_day_update()

    def trigger_recruite(self, tags):
        print(log_format.format("selecting tag", str(tags)))
        for tag in tags:
            self.clickOnImg("./botImg/recrute_tag/"+tag+".png", 0.8)
        self.clickOnImg("./botImg/maximum_recrute.png", 0.8)
        self.clickOnImg("./botImg/recrute_confirm.png", 0.8)
        time.sleep(sleep_radio)

class HandleBasement(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/base.png", 0.8)
        self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(sleep_radio*2)

        if (self.checkExist("./botImg/base/baseNotif.png", 0.8)):
            self.clickOnImg("./botImg/base/baseNotif.png", 0.8)
            self.clickOnImg("./botImg/base/collectGroup.png", 0.8)
            self.clickOnImg("./botImg/base/tradingGroup.png", 0.8)
            self.clickOnImg("./botImg/base/collect_trust.png", 0.8)
            time.sleep(sleep_radio*2)
            self.clickOnImg("./botImg/base/baseNotifEnd.png", 0.8)

        self.check_new_day_update()


class HandlePurchase(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/shopping.png", 0.8)
        self.clickOnImg("./botImg/homePage/credit_purchase.png", 0.8)
        # self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(sleep_radio*4)

        self.clickOnImg("./botImg/homePage/get_credit.png", 0.8)

        time.sleep(sleep_radio*4)

        self.click_screen()

        self.continue_purchase("./botImg/homePage/recrute_pass.png")
        self.continue_purchase("./botImg/homePage/75_discount.png")
        self.continue_purchase("./botImg/homePage/50_discount.png")
        self.continue_purchase("./botImg/homePage/99_discount.png")
        self.check_new_day_update()

    def continue_purchase(self, image_url):
        i = 0
        while (self.checkExist(image_url, 0.8) and i < 3):
            self.clickOnImg(image_url, 0.8)
            self.clickOnImg("./botImg/homePage/confirm_purchase.png", 0.8)

            if self.checkExist("./botImage/homePage/not_enough_credit.png", 0.8):
                print(log_format.format("not enough credit", "the purchase will stop"))
                break
            self.click_screen()
            time.sleep(sleep_radio*2)
            i = i + 1


class HandleFriend(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/friend.png", 0.8)
        time.sleep(sleep_radio * 2)
        self.clickOnImg("./botImg/homePage/friend_list.png", 0.8)
        time.sleep(sleep_radio * 2)
        self.clickOnImg("./botImg/homePage/visite_base.png", 0.8)
        time.sleep(sleep_radio * 2)

        while self.checkExist("botImg/homePage/visit_next_friend.png", 0.8):
            self.clickOnImg("botImg/homePage/visit_next_friend.png", 0.8)
            time.sleep(sleep_radio)


        self.check_new_day_update()


class HandleMission(Action):
    def __init__(self):
        pass

    def perform_action(self):
        self.goback()
        self.clickOnImg("./botImg/homePage/mission.png", 0.8)
        time.sleep(sleep_radio*2)
        self.clickOnImg("./botImg/homePage/daily_mission.png", 0.8)
        self.click_mission()
        self.clickOnImg("./botImg/homePage/weekly_mission.png", 0.8)
        self.click_mission()



    def click_mission(self):
        while (self.checkExist("./botImg/homePage/mission_complete.png", 0.8)):
            self.clickOnImg("./botImg/homePage/mission_complete.png", 0.8)
            time.sleep(sleep_radio*4)
            self.click_screen()
            time.sleep(sleep_radio*4)


if __name__ == '__main__':
    # HandleFriend().perform_action()
    # HandlePublicRecrute().perform_action()
    nine_hour_period = datetime.now()
    tw_hour_period = datetime.now()
    tf_hour_period = datetime.now()
    # primaryFarm = ResourceFarm("levelUp", 10)
    primaryFarm = SSDustWalk("wd-8", 10)
    action_queue = [primaryFarm, HandleBasement(), HandlePublicRecrute(), HandlePurchase(), HandleMission()]

    while True:
        try:
            current_action = action_queue.pop(0)
            current_action.perform_action()
            # print(current_action)
        except Exception:
            ## do nothing
            print(log_format.format("error happened", "not working"))
            time.sleep(60 * 60)

        now = datetime.now()
        print(log_format.format(str(now.time()), str(nine_hour_period.time()) + ":::"+str(tf_hour_period.time())))

        nine_hour_diff = 0
        hour = now.time().hour
        nine_hour = nine_hour_period.time().hour
        if hour < nine_hour:
            nine_hour_diff = (24 - nine_hour) + hour
        else:
            nine_hour_diff = hour - nine_hour

        if nine_hour_diff >= 9:
            action_queue.append(HandleBasement())
            nine_hour_period = now

        tw_hour_diff = 0
        tw_hour = tw_hour_period.time().hour
        if hour < tw_hour:
            tw_hour_diff = (24 - tw_hour) + hour
        else:
            tw_hour_diff = hour - tw_hour

        if tw_hour_diff >= 10:
            action_queue.append(HandlePublicRecrute())
            action_queue.append(primaryFarm)
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



