instance VLK_6475_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 0x194b;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6475_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6475_ANGRYMOB, MALE, HUMHEADTHIEF, FACE_N_ANGRYMOB_21, 1, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_6475_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6475_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6475_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6475;
}

func void RTN_START_6475() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_21");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_21");
}

func void RTN_STOP_6475() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_21");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_21");
}

func void RTN_TOT_6475() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

