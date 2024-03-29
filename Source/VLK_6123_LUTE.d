instance VLK_6123_LUTE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MUSICIAN;
    GUILD = GIL_VLK;
    ID = 6123;
    VOICE = 22;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6123_LUTE, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6123_LUTE, MALE, HUMHEADBALD, FACE_N_CITIZEN17, 1, 35550);
    MDL_APPLYOVERLAYMDS(VLK_6123_LUTE, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6123_LUTE);
    B_GIVENPCTALENTS(VLK_6123_LUTE);
    B_SETFIGHTSKILLS(VLK_6123_LUTE, 40);
    DAILY_ROUTINE = RTN_START_6123;
}

func void RTN_START_6123() {
    TA_PLAY_LUTE(8, 0, 9, 0, "PARTM2_CHILLHOUSE1");
    TA_PLAY_LUTE(9, 0, 8, 0, "PARTM2_CHILLHOUSE1");
}

