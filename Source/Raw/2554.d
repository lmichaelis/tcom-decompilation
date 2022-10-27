instance BAU_2251_GERD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GERD;
    GUILD = GIL_DJG;
    ID = 0x8cb;
    VOICE = 2;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BAU_2251_GERD, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BAU_2251_GERD, MALE, HUMHEADPSIONIC, FACE_N_GERD, 1, 0x8a45);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2251_GERD);
    MDL_APPLYOVERLAYMDS(BAU_2251_GERD, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(BAU_2251_GERD);
    B_SETFIGHTSKILLS(BAU_2251_GERD, 30);
    DAILY_ROUTINE = RTN_START_2251;
}

func void RTN_START_2251() {
    TA_PLUNDER(7, 0, 11, 0, "PART11_COAL_10");
    TA_COOK_PAN(11, 0, 12, 30, "PART11_COAL_COOK");
    TA_SIT_CAMPFIRE(12, 30, 15, 30, "PART11_CAMPFIRE_02");
    TA_SAW(15, 30, 18, 0, "PART11_COAL_SAW_01");
    TA_WASH_FP(18, 0, 20, 0, "PART11_WASH_01");
    TA_SIT_CHAIR(20, 0, 22, 0, "PART11_COALHOUSE01_CHAIR02");
    TA_SLEEP(22, 0, 7, 0, "PART11_COALHOUSE01_BED02");
}
