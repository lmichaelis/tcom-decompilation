instance NOV_13335_ZACKY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ZACKY;
    GUILD = GIL_NOV;
    ID = 13335;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NOV_13335_ZACKY, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_13335_ZACKY, MALE, HUMHEADPONY, FACE_P_ZAKON, 0, 35594);
    B_CREATEWEAPONINV();
    MDL_APPLYOVERLAYMDS(NOV_13335_ZACKY, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(NOV_13335_ZACKY);
    B_SETFIGHTSKILLS(NOV_13335_ZACKY, 40);
    DAILY_ROUTINE = RTN_START_13335;
}

func void RTN_START_13335() {
    TA_STAND_GUARDING(6, 0, 21, 0, TOT2);
    TA_STAND_GUARDING(21, 0, 6, 0, RNG_TRAP24_WAYPOINT);
}

