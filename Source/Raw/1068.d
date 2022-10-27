instance PIR_1319_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_PIR;
    ID = 0x527;
    VOICE = 3;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(PIR_1319_SMUGGLER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(PIR_1319_SMUGGLER, 0x8501);
    B_SETNPCVISUAL(PIR_1319_SMUGGLER, MALE, HUMHEADFIGHTER, FACE_N_SHIPPIRATE_02, 1, 0x8322);
    MDL_APPLYOVERLAYMDS(PIR_1319_SMUGGLER, HUMANSRELAXEDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1319_SMUGGLER, HUMANSNOWEAPONSOUNDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1319_SMUGGLER, HUMANS1HST1);
    B_CREATEAMBIENTINV(PIR_1319_SMUGGLER);
    B_GIVENPCTALENTS(PIR_1319_SMUGGLER);
    B_SETFIGHTSKILLS(PIR_1319_SMUGGLER, 60);
    DAILY_ROUTINE = RTN_START_1319;
}

func void RTN_START_1319() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "SHIP_PIRATE_04");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "SHIP_PIRATE_04");
}

func void RTN_WATCHFIGHT_1319() {
    TA_WATCHFIGHT_Q101(8, 0, 9, 0, "SHIP_PIRATE_04");
    TA_WATCHFIGHT_Q101(9, 0, 8, 0, "SHIP_PIRATE_04");
}

func void RTN_TOT_1319() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}
