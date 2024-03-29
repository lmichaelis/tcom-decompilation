instance VLK_13836_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 13836;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13836_CITIZEN, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13836_CITIZEN, FEMALE, HUMHEADBABEHAIR1, FACE_WL_CITIZEN120, 6, 35597);
    MDL_APPLYOVERLAYMDS(VLK_13836_CITIZEN, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13836_CITIZEN);
    B_GIVENPCTALENTS(VLK_13836_CITIZEN);
    B_SETFIGHTSKILLS(VLK_13836_CITIZEN, 20);
    DAILY_ROUTINE = RTN_START_13836;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13836() {
    TA_STAND_SWEEPING(7, 20, 11, 44, "PARTM1_HOTEL_SWEEP_03");
    TA_SIT_BENCH(11, 44, 14, 5, "PARTM8_BENCH_23");
    TA_STAND_SWEEPING(14, 5, 18, 20, "PARTM1_HOTEL_SWEEP_03");
    TA_PLUNDER(18, 20, 21, 10, "PARTM1_PLUNDER_03");
    TA_SIT_CHAIR_EAT(21, 10, 7, 20, "PARTM1_HOTEL_CHAIR_05");
}

