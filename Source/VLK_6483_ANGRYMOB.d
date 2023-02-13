instance VLK_6483_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBFEMALE;
    GUILD = GIL_VLK;
    ID = 6483;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6483_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6483_ANGRYMOB, FEMALE, HUMHEADBABE5, FACE_WB_ANGRYMOB_29, 7, 35611);
    MDL_APPLYOVERLAYMDS(VLK_6483_ANGRYMOB, HUMANSBABEMDS);
    B_GIVENPCTALENTS(VLK_6483_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6483_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6483;
}

func void RTN_START_6483() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_29");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_29");
}

func void RTN_STOP_6483() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_29");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_29");
}

func void RTN_TOT_6483() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

