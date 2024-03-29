instance PIR_1323_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_PIR;
    ID = 1323;
    VOICE = 42;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(PIR_1323_SMUGGLER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(PIR_1323_SMUGGLER, 34049);
    B_SETNPCVISUAL(PIR_1323_SMUGGLER, MALE, HUMHEADBALD, FACE_N_SHIPPIRATE_06, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_1323_SMUGGLER, HUMANSRELAXEDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1323_SMUGGLER, HUMANSNOWEAPONSOUNDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1323_SMUGGLER, HUMANS1HST1);
    B_CREATEAMBIENTINV(PIR_1323_SMUGGLER);
    B_GIVENPCTALENTS(PIR_1323_SMUGGLER);
    B_SETFIGHTSKILLS(PIR_1323_SMUGGLER, 60);
    DAILY_ROUTINE = RTN_START_1323;
}

func void RTN_START_1323() {
    TA_STAND_ARMSCROSSED(8, 0, 9, 0, "SHIP_PIRATE_01");
    TA_STAND_ARMSCROSSED(9, 0, 8, 0, "SHIP_PIRATE_01");
}

func void RTN_WATCHFIGHT_1323() {
    TA_WATCHFIGHT_Q101(8, 0, 9, 0, "SHIP_PIRATE_01");
    TA_WATCHFIGHT_Q101(9, 0, 8, 0, "SHIP_PIRATE_01");
}

func void RTN_TOT_1323() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

