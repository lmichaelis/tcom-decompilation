instance VLK_6494_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 6494;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6494_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6494_ANGRYMOB, MALE, HUMHEADWITHOUTPONY, FACE_B_ANGRYMOB_40, 3, 35532);
    MDL_APPLYOVERLAYMDS(VLK_6494_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6494_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6494_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6494;
}

func void RTN_START_6494() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_40");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_40");
}

func void RTN_STOP_6494() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_40");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_40");
}

func void RTN_TOT_6494() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

