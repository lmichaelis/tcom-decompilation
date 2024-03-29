instance BAU_13867_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 13867;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_13867_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_13867_WORKER, MALE, HUMHEADBALD, FACE_B_WORKER_81, 3, 33907);
    MDL_APPLYOVERLAYMDS(BAU_13867_WORKER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13867_WORKER);
    B_GIVENPCTALENTS(BAU_13867_WORKER);
    B_SETFIGHTSKILLS(BAU_13867_WORKER, 15);
    DAILY_ROUTINE = RTN_START_13867;
    AIVAR[70] = NPC_AMB_BERMAR;
}

func void RTN_START_13867() {
    TA_SIT_CHAIR_DRINK(7, 30, 22, 0, "PART6_BIGHOUSE_CHAIR_02");
    TA_SIT_CHAIR_DRINK(22, 0, 7, 30, TOT2);
}

