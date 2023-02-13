instance PIR_1320_SMUGGLER_ARCHOLOS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_PIR;
    ID = 13200;
    VOICE = 43;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[95] = TRUE;
    B_SETATTRIBUTESTOLEVEL(PIR_1320_SMUGGLER_ARCHOLOS, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_1320_SMUGGLER_ARCHOLOS, MALE, HUMHEADPONY, FACE_N_SHIPPIRATE_03_WOUNDED, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_1320_SMUGGLER_ARCHOLOS, HUMANSWOUNDEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_1320_SMUGGLER_ARCHOLOS);
    CREATEINVITEMS(PIR_1320_SMUGGLER_ARCHOLOS, 37265, 1);
    CREATEINVITEMS(PIR_1320_SMUGGLER_ARCHOLOS, 34381, 2);
    B_GIVENPCTALENTS(PIR_1320_SMUGGLER_ARCHOLOS);
    B_SETFIGHTSKILLS(PIR_1320_SMUGGLER_ARCHOLOS, 29);
    DAILY_ROUTINE = RTN_START_13200;
}

func void RTN_START_13200() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 9, 0, "PART17_PATH_241A");
    TA_STAYSTRAIGHT_NOIQ(9, 0, 8, 0, "PART17_PATH_241A");
}

func void RTN_Q305_FOLLOW_13200() {
    TA_FOLLOW_PLAYER(8, 0, 9, 0, "PART17_PATH_241A");
    TA_FOLLOW_PLAYER(9, 0, 8, 0, "PART17_PATH_241A");
}

func void RTN_TOT_13200() {
    TA_STAYSTRAIGHT(7, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 7, 0, TOT);
}

