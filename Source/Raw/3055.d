instance SKE_13976_ROGUE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SKELETONROGUE;
    GUILD = GIL_SKELETON;
    ID = 0x3698;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETVISUALS_VOLFZACK_SKELETON_NOHELM();
    B_SETATTRIBUTESRNDSKELETON(SKE_13976_ROGUE);
    EQUIPITEM(SKE_13976_ROGUE, 0x9ac0);
    DAILY_ROUTINE = RTN_START_13976;
    AIVAR[75] = WALKMODE_SNEAK;
}

func void RTN_START_13976() {
    TA_FOLLOW_PLAYER(12, 0, 16, 0, RNG_VSKEEVENT_10_WAYPOINT);
    TA_FOLLOW_PLAYER(16, 0, 12, 0, RNG_VSKEEVENT_10_WAYPOINT);
}

