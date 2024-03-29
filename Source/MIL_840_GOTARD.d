instance MIL_840_GOTARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_MIL;
    ID = 840;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_840_GOTARD, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(MIL_840_GOTARD, MALE, HUMHEADBALD, FACE_N_GOTARD, BODYTEX_N, 35488);
    MDL_APPLYOVERLAYMDS(MIL_840_GOTARD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_840_GOTARD);
    B_GIVENPCTALENTS(MIL_840_GOTARD);
    B_SETFIGHTSKILLS(MIL_840_GOTARD, 30);
    DAILY_ROUTINE = RTN_START_840;
    AIVAR[70] = NPC_AMB_CITY_MILITIA;
}

func void RTN_START_840() {
    TA_STAND_GUARDING(7, 0, 15, 45, "PARTM2_GATEGUARD_05");
    TA_SIT_CHAIR_EAT(15, 45, 16, 30, "PARTM2_CONTROL_03");
    TA_SIT_CHAIR_DRINK(16, 30, 17, 30, "PARTM2_CONTROL_03");
    TA_SIT_CHAIR(17, 30, 21, 0, "PARTM2_CONTROL_03");
    TA_STAND_GUARDING(21, 0, 7, 0, "PARTM2_GATEGUARD_05");
}

func void RTN_JOININGMILITIA_840() {
    TA_MILJOIN(8, 0, 16, 0, "PARTM3_JOININGMILITIA_WATCH_06");
    TA_MILJOIN(16, 0, 8, 0, "PARTM3_JOININGMILITIA_WATCH_06");
}

func void RTN_JOININGMILITIA_TAVERN_840() {
    TA_STAND_DRINKING(8, 0, 16, 0, "PARTM4_TAVERN_30");
    TA_STAND_DRINKING(16, 0, 8, 0, "PARTM4_TAVERN_30");
}

func void RTN_LORENZOISGONE_840() {
    TA_LORENZOISGONE(8, 0, 22, 0, "XXX");
    TA_LORENZOISGONE(22, 0, 8, 0, "XXX");
}

