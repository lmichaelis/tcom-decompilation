instance VLK_6009_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 6009;
    VOICE = 33;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6009_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6009_GIRL, FEMALE, HUMHEADBABE5, FACE_WN_CITIZEN28, 5, 35609);
    MDL_APPLYOVERLAYMDS(VLK_6009_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6009_GIRL);
    B_GIVENPCTALENTS(VLK_6009_GIRL);
    B_SETFIGHTSKILLS(VLK_6009_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6009;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6009() {
    TA_SWEEP_FP(7, 30, 11, 0, "HARBOUR_HOUSE01_19");
    TA_COOK_STOVE(11, 0, 12, 0, "HARBOUR_HOUSE01_07");
    TA_SIT_CHAIR(12, 0, 13, 30, "HARBOUR_HOUSE01_08");
    TA_READ_BOOKSTAND(13, 30, 14, 30, "HARBOUR_HOUSE01_17");
    TA_STAND_SWEEPING(14, 30, 15, 45, "HARBOUR_HOUSE01_18");
    TA_SMALLTALK(15, 45, 21, 0, "HARBOUR_SMALLTALK_05");
    TA_STAND_SWEEPING(21, 0, 22, 30, "HARBOUR_HOUSE01_18");
    TA_SLEEP(22, 30, 7, 30, "HARBOUR_HOUSE01_23");
}

func void RTN_KQ403_EVENT_6009() {
    TA_BREATH(8, 0, 11, 0, "HARBOUR_KQ403_07");
    TA_BREATH(11, 0, 8, 0, "HARBOUR_KQ403_07");
}

func void RTN_TAVERN_6009() {
    TA_SIT_BENCH(7, 0, 13, 0, "HARBOUR_BENCH_19");
    TA_SMALLTALK(13, 0, 15, 45, "PARTM6_SMALLTALK_01");
    TA_SMALLTALK(15, 45, 21, 0, "HARBOUR_SMALLTALK_05");
    TA_SMOKE_JOINT(21, 0, 7, 0, "HARBOUR_TAVERN_STAND_01");
}

func void RTN_KQ404_CONCERT_6009() {
    TA_SIT_BENCH(7, 0, 13, 0, "HARBOUR_BENCH_19");
    TA_STAND_EATING(13, 0, 18, 0, "KQ404_VIEWER_01");
    TA_CONCERT_WATCH(18, 0, 21, 0, "KQ404_VIEWER_01");
    TA_SMOKE_JOINT(21, 0, 7, 0, "HARBOUR_TAVERN_STAND_01");
}

func void RTN_TOT_6009() {
    TA_SIT_BENCH(7, 0, 13, 0, TOT);
    TA_SIT_BENCH(13, 0, 7, 0, TOT);
}

