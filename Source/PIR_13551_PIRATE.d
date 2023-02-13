instance PIR_13551_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 13551;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(PIR_13551_PIRATE, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_13551_PIRATE, MALE, HUMHEADFLEXNEU, FACE_B_PIRATE03, BODYTEX_B, 33570);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_13551_PIRATE);
    MDL_APPLYOVERLAYMDS(PIR_13551_PIRATE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(PIR_13551_PIRATE);
    B_SETFIGHTSKILLS(PIR_13551_PIRATE, 50);
    DAILY_ROUTINE = RTN_START_13551;
    AIVAR[70] = NPC_AMB_PIRATES;
}

func void RTN_START_13551() {
    TA_SLEEP(0, 0, 7, 0, "P17_HAVEN_ARENA_HOUSE03_03");
    TA_SIT_BED_TIRED(7, 0, 9, 0, "P17_HAVEN_ARENA_HOUSE03_03");
    TA_SIT_CHAIR_SMOKE(9, 0, 11, 0, "P17_HAVEN_ARENA_HOUSE03_02");
    TA_PEE(11, 0, 12, 0, "P17_HAVEN_ARENA_71");
    TA_LEAN(12, 0, 15, 0, "P17_HAVEN_ARENA_33");
    TA_SMALLTALK(15, 0, 17, 0, "P17_HAVEN_ARENA_08B");
    TA_STAND_EATING(17, 0, 19, 0, "P17_HAVEN_ARENA_65");
    TA_STAND_DRINKING(19, 0, 22, 0, "P17_HAVEN_ARENA_65");
    TA_STAND_EATING(22, 0, 0, 0, "P17_HAVEN_ARENA_65");
}

func void RTN_TOT_13551() {
    TA_SLEEP(0, 0, 9, 0, TOT);
    TA_SLEEP(9, 0, 0, 0, TOT);
}

func void RTN_SQ503_RUNAWAY_13551() {
    TA_SEARCH_ONLY(0, 0, 9, 0, "HWLOO");
    TA_SEARCH_ONLY(9, 0, 0, 0, "HWLOO");
}
