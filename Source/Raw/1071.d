instance PIR_1322_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ASKE;
    GUILD = GIL_NONE;
    ID = 0x52a;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1322_SMUGGLER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(PIR_1322_SMUGGLER, 0x8501);
    B_SETNPCVISUAL(PIR_1322_SMUGGLER, MALE, HUMHEADPONY, FACE_P_SHIPPIRATE_05, 0, 0x8322);
    MDL_APPLYOVERLAYMDS(PIR_1322_SMUGGLER, HUMANSRELAXEDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1322_SMUGGLER, HUMANSNOWEAPONSOUNDMDS);
    MDL_APPLYOVERLAYMDS(PIR_1322_SMUGGLER, HUMANS1HST1);
    B_CREATEAMBIENTINV(PIR_1322_SMUGGLER);
    B_GIVENPCTALENTS(PIR_1322_SMUGGLER);
    B_SETFIGHTSKILLS(PIR_1322_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_1322;
}

func void RTN_START_1322() {
    TA_BOWMAKING(8, 0, 9, 0, "SHIP_BEGINNIG_PIRATE");
    TA_BOWMAKING(9, 0, 8, 0, "SHIP_BEGINNIG_PIRATE");
}

func void RTN_Q101_BREAK_1322() {
    TA_STAND_DRINKING(8, 0, 9, 0, "SHIP_BEGINNING_PIRATE_WATCH");
    TA_STAND_DRINKING(9, 0, 8, 0, "SHIP_BEGINNING_PIRATE_WATCH");
}

func void RTN_WATCHFIGHT_1322() {
    TA_WATCHFIGHT_Q101(8, 0, 9, 0, "SHIP_PIRATE_02");
    TA_WATCHFIGHT_Q101(9, 0, 8, 0, "SHIP_PIRATE_02");
}

func void RTN_TOT_1322() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

instance PIR_132290_SMUGGLER_ARCHOLOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ASKE;
    GUILD = GIL_PIR;
    ID = 0x204c2;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_132290_SMUGGLER_ARCHOLOS, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    EQUIPITEM(PIR_132290_SMUGGLER_ARCHOLOS, 0x84e7);
    B_SETNPCVISUAL(PIR_132290_SMUGGLER_ARCHOLOS, MALE, HUMHEADPONY, FACE_P_SHIPPIRATE_05, 0, 0x8322);
    MDL_APPLYOVERLAYMDS(PIR_132290_SMUGGLER_ARCHOLOS, HUMANSHURTMDS);
    B_GIVENPCTALENTS(PIR_132290_SMUGGLER_ARCHOLOS);
    B_SETFIGHTSKILLS(PIR_132290_SMUGGLER_ARCHOLOS, 25);
    DAILY_ROUTINE = RTN_START_132290;
}

func void RTN_START_132290() {
    TA_SIT_CAMPFIRE(8, 0, 9, 0, "PART17_ISLAND_PIRATE");
    TA_SIT_CAMPFIRE(9, 0, 8, 0, "PART17_ISLAND_PIRATE");
}

func void RTN_TOT_132290() {
    TA_SIT_CAMPFIRE(8, 0, 9, 0, TOT);
    TA_SIT_CAMPFIRE(9, 0, 8, 0, TOT);
}
