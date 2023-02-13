instance SKE_13955_ROGUE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SKELETONROGUE;
    GUILD = GIL_SKELETON;
    ID = 13955;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETVISUALS_VOLFZACK_SKELETON();
    B_SETATTRIBUTESRNDSKELETON(SKE_13955_ROGUE);
    EQUIPITEM(SKE_13955_ROGUE, 39616);
    DAILY_ROUTINE = RTN_START_13955;
    AIVAR[75] = WALKMODE_SNEAK;
}

func void RTN_START_13955() {
    TA_FOLLOW_PLAYER(12, 0, 16, 0, RNG_VSKEEVENT_03_WAYPOINT);
    TA_FOLLOW_PLAYER(16, 0, 12, 0, RNG_VSKEEVENT_03_WAYPOINT);
}

