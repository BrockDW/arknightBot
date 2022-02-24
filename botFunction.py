import time
log_format = "{:>40} -- {:>10}"
from datetime import datetime

from action.friend import HandleFriend
from action.action import Action
from action.public_recrute import HandlePublicRecrute
from action.battle.resource_farm import ResourceFarm
from action.basement import HandleBasement
from action.purchase import HandlePurchase
from action.mission import HandleMission
from action.battle.extermination import Extermination
from action.battle.battle import Battle
from action.battle.side_story_farm import SideStoryFarm

if __name__ == '__main__':
    nine_hour_period = datetime.now()
    tw_hour_period = datetime.now()
    tf_hour_period = datetime.now()

    primaryFarm = ResourceFarm("coin", 50)

    action_queue = [
        primaryFarm,
        HandleBasement(),
        HandlePublicRecrute(),
        HandleFriend(),
        HandlePurchase(),
        HandleMission()]
    #
    while True:
        try:
            current_action = action_queue.pop(0)
            current_action.perform_action()
        except Exception as e:
            Action().goback()
            print(log_format.format("error happened", str(e)))
            print(str(e))
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
            tw_hour_period = now
            primaryFarm.reset_time(50)
            action_queue.append(Extermination(1))
            action_queue.append(HandlePublicRecrute())
            action_queue.append(primaryFarm)
            action_queue.append(HandleMission())
            action_queue.append(HandleFriend())
            

