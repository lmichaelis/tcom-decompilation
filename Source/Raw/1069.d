instance PIR_1320_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_PIR;
    ID = 0x528;
    VOICE = 4;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(PIR_1320_SMUGGLER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(PIR_1320_SMUGGLER, 0x8501);
    B_SETNPCVISUAL(PIR_1320_SMUGGLER, MALE, HUMHEADPONY, FACE_N_SHIPPIRATE_03, 1, 0x8322);
    MDL_APPLYOVERLAYMDS(PIR_1320_SMUGGLER, HUMANSARROGANCEMDS);
    MDL_APPLYOVERLAYMDS(PIR_1320_SMUGGLER, HUMANSNOWEAPONSOUNDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1320_SMUGGLER, HUMANS1HST1);
    B_CREATEAMBIENTINV(PIR_1320_SMUGGLER);
    B_GIVENPCTALENTS(PIR_1320_SMUGGLER);
    B_SETFIGHTSKILLS(PIR_1320_SMUGGLER, 40);
    DAILY_ROUTINE = RTN_START_1320;
}

func void RTN_START_1320() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "SHIP_PIRATE_06");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "SHIP_PIRATE_06");
}

func void RTN_WATCHFIGHT_1320() {
    TA_WATCHFIGHT_Q101(8, 0, 9, 0, "SHIP_PIRATE_06");
    TA_WATCHFIGHT_Q101(9, 0, 8, 0, "SHIP_PIRATE_06");
}

func void RTN_TOT_1320() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}
