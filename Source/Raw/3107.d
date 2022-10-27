instance DJG_10193_WOLFSON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_NONE;
    ID = 0xc387;
    VOICE = 0;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(DJG_10193_WOLFSON_Q602, 50);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(DJG_10193_WOLFSON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_WOLFSON78, 1, 0x8ac0);
    MDL_APPLYOVERLAYMDS(DJG_10193_WOLFSON_Q602, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10193_WOLFSON_Q602);
    B_GIVENPCTALENTS(DJG_10193_WOLFSON_Q602);
    B_SETFIGHTSKILLS(DJG_10193_WOLFSON_Q602, 60);
    MDL_APPLYOVERLAYMDS(DJG_10193_WOLFSON_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(DJG_10193_WOLFSON_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(DJG_10193_WOLFSON_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(DJG_10193_WOLFSON_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50055;
}

func void RTN_START_50055() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTE5_SPAWNPOINT_04");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTE5_SPAWNPOINT_04");
}

func void RTN_Q602_RUN_50055() {
    TA_RUNTOWP_Q602(8, 0, 23, 0, "PARTE5_FIGHTPOINT_04");
    TA_RUNTOWP_Q602(23, 0, 8, 0, "PARTE5_FIGHTPOINT_04");
}

func void RTN_Q602_FIGHT_50055() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTE5_FIGHTPOINT_04");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTE5_FIGHTPOINT_04");
}

