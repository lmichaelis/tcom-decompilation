instance VLK_6461_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 6461;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6461_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6461_ANGRYMOB, MALE, HUMHEADBALD, FACE_N_ANGRYMOB_07, 1, 35528);
    MDL_APPLYOVERLAYMDS(VLK_6461_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6461_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6461_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6461;
}

func void RTN_START_6461() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_07");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_07");
}

func void RTN_STOP_6461() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_07");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_07");
}

func void RTN_TOT_6461() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

