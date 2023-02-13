instance DJG_10043_WOLFSON_Q601(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_BDT;
    ID = 10043;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10043_WOLFSON_Q601, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10043_WOLFSON_Q601, MALE, HUMHEADTHIEF, FACE_L_WOLFSON13, 2, 35520);
    MDL_APPLYOVERLAYMDS(DJG_10043_WOLFSON_Q601, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10043_WOLFSON_Q601);
    B_GIVENPCTALENTS(DJG_10043_WOLFSON_Q601);
    B_SETFIGHTSKILLS(DJG_10043_WOLFSON_Q601, 60);
    DAILY_ROUTINE = RTN_START_10043;
}

func void RTN_START_10043() {
    TA_STAND_GUARDING_VOLERGUARD(8, 0, 23, 0, "PART15_PATH_72");
    TA_STAND_GUARDING_VOLERGUARD(23, 0, 8, 0, "PART15_PATH_72");
}
