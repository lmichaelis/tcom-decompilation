instance SKE_13956_ARCHER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SKELETONARCHER;
    GUILD = GIL_DRACONIAN;
    ID = 13956;
    B_SETVISUALS_VOLFZACK_SKELETON_NOHELM();
    B_SETATTRIBUTESRNDSKELETON(SKE_13956_ARCHER);
    AI_READYRANGEDWEAPON(SKE_13956_ARCHER);
    FIGHT_TACTIC = FAI_HUMAN_RANGED;
    B_ADDFIGHTSKILL(SKE_13956_ARCHER, NPC_TALENT_BOW, 90);
    B_ADDFIGHTSKILL(SKE_13956_ARCHER, NPC_TALENT_CROSSBOW, 90);
    CREATEINVITEMS(SKE_13956_ARCHER, 34383, 10);
    EQUIPITEM(SKE_13956_ARCHER, 39764);
    DAILY_ROUTINE = RTN_START_13956;
}

func void RTN_START_13956() {
    TA_STAYSTRAIGHT(12, 0, 16, 0, RNG_VSKEEVENT_03_WAYPOINT);
    TA_STAYSTRAIGHT(16, 0, 12, 0, RNG_VSKEEVENT_03_WAYPOINT);
}

