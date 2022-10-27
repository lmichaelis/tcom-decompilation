instance VLK_6471_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBFEMALE;
    GUILD = GIL_VLK;
    ID = 0x1947;
    VOICE = 16;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6471_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6471_ANGRYMOB, FEMALE, HUMHEADBABE8, FACE_WB_ANGRYMOB_17, 7, 0x8b1a);
    MDL_APPLYOVERLAYMDS(VLK_6471_ANGRYMOB, HUMANSBABEMDS);
    B_GIVENPCTALENTS(VLK_6471_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6471_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6471;
}

func void RTN_START_6471() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_17");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_17");
}

func void RTN_STOP_6471() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_17");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_17");
}

func void RTN_TOT_6471() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}
