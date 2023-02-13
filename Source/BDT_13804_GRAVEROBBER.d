instance BDT_13804_GRAVEROBBER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GRAVEROBBER;
    GUILD = GIL_BDT;
    ID = 13804;
    VOICE = 4;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_13804_GRAVEROBBER, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    SENSES_RANGE = 10;
    B_SETNPCVISUAL(BDT_13804_GRAVEROBBER, MALE, HUMHEADFATBALD, FACE_N_GRAVEROBBER09, 1, 35427);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13804_GRAVEROBBER);
    B_GIVENPCTALENTS(BDT_13804_GRAVEROBBER);
    B_SETFIGHTSKILLS(BDT_13804_GRAVEROBBER, 50);
    DAILY_ROUTINE = RTN_START_13804;
}

func void RTN_START_13804() {
    TA_DIG_DUMB(1, 0, 4, 0, "VILLAGE_CEMETERY_11");
    TA_DIG_DUMB(4, 0, 1, 0, TOT2);
}

func void RTN_TOT_13804() {
    TA_DIG_DUMB(1, 0, 4, 0, TOT2);
    TA_DIG_DUMB(4, 0, 1, 0, TOT2);
}

