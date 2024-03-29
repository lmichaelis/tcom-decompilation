instance BAU_13810_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 13810;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_13810_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_13810_WORKER, MALE, HUMHEADBALD, FACE_N_WORKER_62, 1, 35571);
    MDL_APPLYOVERLAYMDS(BAU_13810_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13810_WORKER);
    B_GIVENPCTALENTS(BAU_13810_WORKER);
    B_SETFIGHTSKILLS(BAU_13810_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13810;
    AIVAR[70] = NPC_AMB_BERMAR;
}

func void RTN_START_13810() {
    TA_SCYTHE(7, 0, 22, 0, "PART6_PATH_199");
    TA_SCYTHE(22, 0, 7, 0, TOT2);
}

func void RTN_SQ228_WAIT_13810() {
    TA_SIT_CHAIR(7, 0, 6, 0, "PART6_BIGHOUSE_CHAIR_01");
    TA_SIT_CHAIR(6, 0, 7, 0, "PART6_BIGHOUSE_CHAIR_01");
}

