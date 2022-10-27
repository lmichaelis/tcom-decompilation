instance VLK_13831_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x3607;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13831_CITIZEN, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13831_CITIZEN, MALE, HUMHEADWITHOUTPONY, FACE_N_PATRON_12, 1, 0x8ae0);
    MDL_APPLYOVERLAYMDS(VLK_13831_CITIZEN, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13831_CITIZEN);
    B_GIVENPCTALENTS(VLK_13831_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13831_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13831;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13831() {
    TA_SMALLTALK(7, 30, 11, 50, "PARTM1_SMALLTALK_09");
    TA_SIT_BENCH(11, 50, 14, 0, "PARTM8_BENCH_21");
    TA_SMALLTALK(14, 0, 21, 0, "PARTM1_SMALLTALK_09");
    TA_SLEEP(21, 0, 7, 30, "PARTM1_HOUSE02_BED_01");
}

