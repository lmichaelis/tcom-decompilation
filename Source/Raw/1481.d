instance VLK_3024_ERNESTO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ERNESTO;
    GUILD = GIL_VLK;
    ID = 0xbd0;
    VOICE = 25;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_3024_ERNESTO, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_3024_ERNESTO, MALE, HUMHEADPONY, FACE_N_ERNESTO, BODYTEX_N, 0x8acb);
    MDL_APPLYOVERLAYMDS(VLK_3024_ERNESTO, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_3024_ERNESTO);
    B_SETFIGHTSKILLS(VLK_3024_ERNESTO, 40);
    DAILY_ROUTINE = RTN_START_3024;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_3024() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PARTM1_STAND_06");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "PARTM1_STAND_06");
}

func void RTN_OLDCITY_3024() {
    TA_STAND_ARMSCROSSED(7, 0, 23, 0, "PARTM5_ERNESTO_STAND");
    TA_SLEEP(23, 0, 7, 0, "PARTM5_ERNESTO_BED_05");
}

func void RTN_SQ416_RAMSEY_WAIT_3024() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_02");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "PART12_RAMSEYHOUSE_SQ416_SPOT_02");
}

func void RTN_SQ416_RAMSEY_PARTY_3024() {
    TA_SMALLTALK(8, 0, 22, 0, "PART12_RAMSEYHOUSE_23");
    TA_SMALLTALK(22, 0, 8, 0, "PART12_RAMSEYHOUSE_23");
}

func void RTN_QA302_GERSTAND_INN_3024() {
    TA_SIT_THRONE(8, 0, 22, 0, "PARTM4_TAVERN_THRONE_01");
    TA_SIT_THRONE(22, 0, 8, 0, "PARTM4_TAVERN_THRONE_01");
}

