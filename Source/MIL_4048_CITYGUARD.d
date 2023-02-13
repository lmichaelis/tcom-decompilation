instance MIL_4048_CITYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 4048;
    VOICE = 26;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(MIL_4048_CITYGUARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(MIL_4048_CITYGUARD, MALE, HUMHEADBALD, FACE_N_CITYGUARD01, 1, 35488);
    MDL_APPLYOVERLAYMDS(MIL_4048_CITYGUARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_4048_CITYGUARD);
    B_GIVENPCTALENTS(MIL_4048_CITYGUARD);
    B_SETFIGHTSKILLS(MIL_4048_CITYGUARD, 50);
    DAILY_ROUTINE = RTN_START_4048;
}

func void RTN_START_4048() {
    TA_STAND_ARMSCROSSED(8, 0, 18, 0, "SLUMS_PATH_160");
    TA_STAND_ARMSCROSSED(18, 0, 8, 0, "SLUMS_PATH_160");
}

func void RTN_TOT_4048() {
    TA_STAND_GUARDING(8, 0, 18, 0, TOT);
    TA_STAND_GUARDING(18, 0, 8, 0, TOT);
}

