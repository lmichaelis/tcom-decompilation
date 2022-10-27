instance VLK_6462_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBFEMALE;
    GUILD = GIL_VLK;
    ID = 0x193e;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6462_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6462_ANGRYMOB, FEMALE, HUMHEADBABE5, FACE_WN_ANGRYMOB_08, 5, 0x8b1b);
    MDL_APPLYOVERLAYMDS(VLK_6462_ANGRYMOB, HUMANSBABEMDS);
    B_GIVENPCTALENTS(VLK_6462_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6462_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6462;
}

func void RTN_START_6462() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_08");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_08");
}

func void RTN_STOP_6462() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_08");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_08");
}

func void RTN_TOT_6462() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

