import cv2
from action.action import Action
import pyautogui
import time
from os import listdir
from os.path import isfile, join

log_format = "{:>40} -- {:>10}"
starCount = 100
sleep_radio = 2
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

use_potion = False
use_stone = False


class HandlePublicRecrute(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
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

    def trigger_recruite(self, tags):
        print(log_format.format("selecting tag", str(tags)))
        for tag in tags:
            self.clickOnImg("./botImg/recrute_tag/"+tag+".png", 0.8)
        self.clickOnImg("./botImg/maximum_recrute.png", 0.8)
        self.clickOnImg("./botImg/recrute_confirm.png", 0.8)
        time.sleep(sleep_radio)