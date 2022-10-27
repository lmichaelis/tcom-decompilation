instance PIR_13555_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 0x34f3;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(PIR_13555_PIRATE, 33);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(PIR_13555_PIRATE, MALE, HUMHEADWITHOUTPONY, FACE_N_PIRATE07, BODYTEX_N, 0x8322);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_13555_PIRATE);
    MDL_APPLYOVERLAYMDS(PIR_13555_PIRATE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(PIR_13555_PIRATE);
    B_SETFIGHTSKILLS(PIR_13555_PIRATE, 50);
    DAILY_ROUTINE = RTN_START_13555;
    AIVAR[75] = WALKMODE_WALK;
    AIVAR[70] = NPC_AMB_PIRATES;
}

func void RTN_START_13555() {
    TA_SLEEP(1, 0, 9, 30, "P17_HAVEN_ARENA_HOUSE06_03");
    TA_SMALLTALK(9, 30, 12, 0, "P17_HAVEN_ARENA_34A");
    TA_SIT_CHAIR_EAT(12, 0, 14, 0, "P17_HAVEN_ARENA_HOUSE06_02");
    TA_SMALLTALK(14, 0, 16, 30, "P17_HAVEN_ARENA_34A");
    TA_SIT_CHAIR_DRINK(16, 30, 19, 0, "P17_HAVEN_ARENA_63");
    TA_SIT_CHAIR_SMOKE(19, 0, 20, 0, "P17_HAVEN_ARENA_63");
    TA_SIT_CHAIR_EAT(20, 0, 22, 0, "P17_HAVEN_ARENA_63");
    TA_SIT_CHAIR(22, 0, 0, 0, "P17_HAVEN_ARENA_63");
    TA_SMALLTALK(0, 0, 1, 0, "P17_HAVEN_ARENA_34A");
}

func void RTN_TOT_13555() {
    TA_SLEEP(0, 0, 9, 0, TOT);
    TA_SLEEP(9, 0, 0, 0, TOT);
}

func void RTN_SQ503_RUNAWAY_13555() {
    TA_FOLLOW_PLAYER(0, 0, 9, 0, "PART17_PATH_43");
    TA_FOLLOW_PLAYER(9, 0, 0, 0, "PART17_PATH_43");
}

