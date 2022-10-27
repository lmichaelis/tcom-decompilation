instance VLK_6466_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 0x1942;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6466_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6466_ANGRYMOB, MALE, HUMHEADFLEXNEU, FACE_L_ANGRYMOB_12, 2, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_6466_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6466_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6466_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6466;
}

func void RTN_START_6466() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_12");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_12");
}

func void RTN_STOP_6466() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_12");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_12");
}

func void RTN_TOT_6466() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

