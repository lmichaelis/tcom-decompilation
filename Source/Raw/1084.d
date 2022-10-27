instance VLK_6468_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 0x1944;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6468_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6468_ANGRYMOB, MALE, HUMHEADTHOMASNEU, FACE_P_ANGRYMOB_14, 0, 0x8acd);
    MDL_APPLYOVERLAYMDS(VLK_6468_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6468_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6468_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6468;
}

func void RTN_START_6468() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_14");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_14");
}

func void RTN_STOP_6468() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_14");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_14");
}

func void RTN_TOT_6468() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}
