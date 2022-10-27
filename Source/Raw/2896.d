instance PIR_13552_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 0x34f0;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_13552_PIRATE, 43);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_13552_PIRATE, MALE, HUMHEADTHIEF, FACE_L_PIRATE04, BODYTEX_L, 0x8323);
    EQUIPITEM(PIR_13552_PIRATE, 0x8501);
    B_CREATEAMBIENTINV(PIR_13552_PIRATE);
    MDL_APPLYOVERLAYMDS(PIR_13552_PIRATE, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(PIR_13552_PIRATE);
    B_SETFIGHTSKILLS(PIR_13552_PIRATE, 50);
    DAILY_ROUTINE = RTN_START_13552;
    AIVAR[70] = NPC_AMB_PIRATES;
}

func void RTN_START_13552() {
    TA_SLEEP(0, 0, 7, 30, "P17_HAVEN_ARENA_HOUSE02_02");
    TA_SMOKE_JOINT(7, 30, 16, 0, "P17_HAVEN_ARENA_HOUSE02_04");
    TA_SMALLTALK(16, 0, 18, 0, "P17_HAVEN_ARENA_29B");
    TA_SIT_CHAIR_DRINK(18, 0, 19, 0, "P17_HAVEN_ARENA_70");
    TA_SIT_CHAIR_EAT(19, 0, 22, 0, "P17_HAVEN_ARENA_70");
    TA_SIT_CHAIR(22, 0, 0, 0, "P17_HAVEN_ARENA_70");
}

func void RTN_TOT_13552() {
    TA_SLEEP(0, 0, 9, 0, TOT);
    TA_SLEEP(9, 0, 0, 0, TOT);
}

func void RTN_SQ503_RUNAWAY_13552() {
    TA_READ(0, 0, 9, 0, "PART17_SWAMP_STAND_02");
    TA_READ(9, 0, 0, 0, "PART17_SWAMP_STAND_02");
}

