instance BDT_11111_GRAVEROBBER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GRAVEROBBER;
    GUILD = GIL_BDT;
    ID = 11111;
    VOICE = 57;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_11111_GRAVEROBBER, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    SENSES_RANGE = 10;
    B_SETNPCVISUAL(BDT_11111_GRAVEROBBER, MALE, HUMHEADBALD, FACE_B_GRAVEROBBER07, 3, 35427);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_11111_GRAVEROBBER);
    B_GIVENPCTALENTS(BDT_11111_GRAVEROBBER);
    B_SETFIGHTSKILLS(BDT_11111_GRAVEROBBER, 60);
    DAILY_ROUTINE = RTN_START_11111;
}

func void RTN_START_11111() {
    TA_STAYSTRAIGHT_DUMB(23, 0, 3, 0, "PARTM8_GRAVEROBBER_10");
    TA_STAYSTRAIGHT_DUMB(3, 0, 23, 0, TOT2);
}

