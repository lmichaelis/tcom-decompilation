instance VLK_13603_TRAVELLINGTRADER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRAVELLINGTRADER;
    GUILD = GIL_VLK;
    ID = 13603;
    VOICE = 53;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13603_TRAVELLINGTRADER, 17);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13603_TRAVELLINGTRADER, MALE, HUMHEADFATBALD, FACE_L_TRADER04, 2, 35552);
    MDL_APPLYOVERLAYMDS(VLK_13603_TRAVELLINGTRADER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_13603_TRAVELLINGTRADER);
    B_SETFIGHTSKILLS(VLK_13603_TRAVELLINGTRADER, 60);
    DAILY_ROUTINE = RTN_START_13603;
}

func void RTN_START_13603() {
    TA_SIT_BENCH(14, 40, 19, 0, RNG_NS33_WAYPOINT);
    TA_SIT_BENCH(19, 0, 14, 40, RNG_NS33_WAYPOINT);
}

func void RTN_TOT_13603() {
    TA_SIT_BENCH(14, 40, 19, 0, TOT2);
    TA_SIT_BENCH(19, 0, 14, 40, TOT2);
}

