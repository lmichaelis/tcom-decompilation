instance VLK_6485_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 6485;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6485_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6485_ANGRYMOB, MALE, HUMHEADPSIONIC, FACE_N_ANGRYMOB_31, 1, 35532);
    MDL_APPLYOVERLAYMDS(VLK_6485_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6485_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6485_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6485;
}

func void RTN_START_6485() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_31");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_31");
}

func void RTN_STOP_6485() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_31");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_31");
}

func void RTN_TOT_6485() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

