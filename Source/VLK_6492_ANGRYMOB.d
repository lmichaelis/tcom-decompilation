instance VLK_6492_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 6492;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6492_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6492_ANGRYMOB, MALE, HUMHEADTHIEF, FACE_P_ANGRYMOB_38, 0, 35531);
    MDL_APPLYOVERLAYMDS(VLK_6492_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6492_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6492_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6492;
}

func void RTN_START_6492() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_38");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_38");
}

func void RTN_STOP_6492() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_38");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_38");
}

func void RTN_TOT_6492() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

