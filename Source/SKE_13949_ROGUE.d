instance SKE_13949_ROGUE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SKELETONROGUE;
    GUILD = GIL_SKELETON;
    ID = 13949;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETVISUALS_VOLFZACK_SKELETON_NOHELM();
    B_SETATTRIBUTESRNDSKELETON(SKE_13949_ROGUE);
    EQUIPITEM(SKE_13949_ROGUE, 39616);
    DAILY_ROUTINE = RTN_START_13949;
    AIVAR[75] = WALKMODE_SNEAK;
}

func void RTN_START_13949() {
    TA_FOLLOW_PLAYER(12, 0, 16, 0, RNG_VSKEEVENT_01_WAYPOINT);
    TA_FOLLOW_PLAYER(16, 0, 12, 0, RNG_VSKEEVENT_01_WAYPOINT);
}

