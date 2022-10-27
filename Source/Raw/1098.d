instance VLK_6487_ANGRYMOB(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ANGRYMOBMALE;
    GUILD = GIL_VLK;
    ID = 0x1957;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6487_ANGRYMOB, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(VLK_6487_ANGRYMOB, MALE, HUMHEADBALD, FACE_N_ANGRYMOB_33, 1, 0x8ac9);
    MDL_APPLYOVERLAYMDS(VLK_6487_ANGRYMOB, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(VLK_6487_ANGRYMOB);
    B_SETFIGHTSKILLS(VLK_6487_ANGRYMOB, 40);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_6487;
}

func void RTN_START_6487() {
    TA_ANGRYMOB(7, 0, 22, 0, "PARTM5_ANGRYMOB_33");
    TA_ANGRYMOB(22, 0, 7, 0, "PARTM5_ANGRYMOB_33");
}

func void RTN_STOP_6487() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, "PARTM5_ANGRYMOB_33");
    TA_STAYSTRAIGHT(22, 0, 7, 0, "PARTM5_ANGRYMOB_33");
}

func void RTN_TOT_6487() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

