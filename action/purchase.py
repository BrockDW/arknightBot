from action.action import Action
import time
log_format = "{:>40} -- {:>10}"
class HandlePurchase(Action):
    def __init__(self):
        super().__init__()
        pass

    def perform_action(self):
        return super().perform_action(self.local_action)

    def local_action(self):
        self.clickOnImg("./botImg/homePage/shopping.png", 0.8)
        self.clickOnImg("./botImg/homePage/credit_purchase.png", 0.8)
        # self.waitForImg("./botImg/base/baseWaiting.png", 5, 0.8)
        time.sleep(self.sleep_radio*4)

        self.clickOnImg("./botImg/homePage/get_credit.png", 0.8)

        time.sleep(self.sleep_radio*4)

        self.click_screen()

        self.continue_purchase("./botImg/homePage/recrute_pass.png")
        self.continue_purchase("./botImg/homePage/75_discount.png")
        self.continue_purchase("./botImg/homePage/50_discount.png")
        self.continue_purchase("./botImg/homePage/99_discount.png")

        self.click_screen()

    def continue_purchase(self, image_url):
        i = 0
        while (self.checkExist(image_url, 0.7) and i < 3):
            self.clickOnImg(image_url, 0.7)
            self.clickOnImg("./botImg/homePage/confirm_purchase.png", 0.7)

            if self.checkExist("./botImage/homePage/not_enough_credit.png", 0.7):
                print(log_format.format("not enough credit", "the purchase will stop"))
                break
            self.click_screen()
            time.sleep(self.sleep_radio*2)
            i = i + 1
