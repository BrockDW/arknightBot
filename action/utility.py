from action.friend import HandleFriend
from action.mission import HandleMission
from action.basement import HandleBasement
from action.purchase import HandlePurchase

def trigger_special_action_goback():
    HandleFriend().perform_action()
    HandleBasement().perform_action()
    HandlePurchase().perform_action()