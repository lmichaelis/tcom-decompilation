instance VLK_6474_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBFEMALE;
    GUILD = GIL_VLK;
    ID = 6474;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6474_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6474_ANGRYMOB, FEMALE, HUMHEADBABE, FACE_WN_ANGRYMOB_20, 5, 35611);
    MDL_APPLYOVERLAYMDS(VLK_6474_ANGRYMOB, HUMANSBABEMDS);
    B_GIVENPCTALENTS(VLK_6474_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6474_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6474;
}

func void RTN_START_6474() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_20");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_20");
}

func void RTN_STOP_6474() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_20");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_20");
}

func void RTN_TOT_6474() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

