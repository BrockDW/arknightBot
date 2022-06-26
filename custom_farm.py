from action.battle.battle import Battle
from meta_data import \
    log_format, \
    starCount, \
    trial_default, \
    wait_time_default

if __name__ == '__main__':
    # trial_default = 1
    # wait_time_default = 0
    Battle(5, use_potion=True, use_stone=True).battleControl()