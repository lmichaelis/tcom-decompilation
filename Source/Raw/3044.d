instance SKE_13965_ARCHER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SKELETONARCHER;
    GUILD = GIL_DRACONIAN;
    ID = 0x368d;
    B_SETVISUALS_VOLFZACK_SKELETON();
    B_SETATTRIBUTESRNDSKELETON(SKE_13965_ARCHER);
    AI_READYRANGEDWEAPON(SKE_13965_ARCHER);
    FIGHT_TACTIC = FAI_HUMAN_RANGED;
    B_ADDFIGHTSKILL(SKE_13965_ARCHER, NPC_TALENT_BOW, 90);
    B_ADDFIGHTSKILL(SKE_13965_ARCHER, NPC_TALENT_CROSSBOW, 90);
    CREATEINVITEMS(SKE_13965_ARCHER, 0x864f, 10);
    EQUIPITEM(SKE_13965_ARCHER, 0x9b54);
    DAILY_ROUTINE = RTN_START_13965;
}

func void RTN_START_13965() {
    TA_STAYSTRAIGHT(12, 0, 16, 0, RNG_VSKEEVENT_06_WAYPOINT);
    TA_STAYSTRAIGHT(16, 0, 12, 0, RNG_VSKEEVENT_06_WAYPOINT);
}

