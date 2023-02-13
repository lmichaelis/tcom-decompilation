instance VLK_13602_TRAVELLINGTRADER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRAVELLINGTRADER;
    GUILD = GIL_BAU;
    ID = 13602;
    VOICE = 45;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13602_TRAVELLINGTRADER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13602_TRAVELLINGTRADER, MALE, HUMHEADWITHOUTPONY, FACE_N_TRADER03, 1, 35410);
    MDL_APPLYOVERLAYMDS(VLK_13602_TRAVELLINGTRADER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_13602_TRAVELLINGTRADER);
    B_SETFIGHTSKILLS(VLK_13602_TRAVELLINGTRADER, 60);
    DAILY_ROUTINE = RTN_START_13602;
}

func void RTN_START_13602() {
    TA_SIT_CHAIR(8, 0, 10, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR_EAT(10, 0, 11, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR_DRINK(11, 0, 12, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR(12, 0, 14, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR_DRINK(14, 0, 15, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR(15, 0, 16, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR_EAT(16, 0, 17, 0, RNG_NS32_WAYPOINT);
    TA_SIT_CHAIR_DRINK(17, 0, 8, 0, RNG_NS32_WAYPOINT);
}

func void RTN_TOT_13602() {
    TA_SIT_CHAIR(8, 0, 10, 0, TOT2);
    TA_SIT_CHAIR_EAT(10, 0, 11, 0, TOT2);
    TA_SIT_CHAIR_DRINK(11, 0, 12, 0, TOT2);
    TA_SIT_CHAIR(12, 0, 14, 0, TOT2);
    TA_SIT_CHAIR_DRINK(14, 0, 15, 0, TOT2);
    TA_SIT_CHAIR(15, 0, 16, 0, TOT2);
    TA_SIT_CHAIR_EAT(16, 0, 17, 0, TOT2);
    TA_SIT_CHAIR_DRINK(17, 0, 8, 0, TOT2);
}

