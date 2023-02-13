instance VLK_6479_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 6479;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6479_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6479_ANGRYMOB, MALE, HUMHEADPONY, FACE_N_ANGRYMOB_25, 1, 35532);
    MDL_APPLYOVERLAYMDS(VLK_6479_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6479_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6479_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6479;
}

func void RTN_START_6479() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_25");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_25");
}

func void RTN_STOP_6479() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_25");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_25");
}

func void RTN_TOT_6479() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}
