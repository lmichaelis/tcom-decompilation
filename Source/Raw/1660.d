instance BAU_13858_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x3622;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_13858_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_13858_WORKER, MALE, HUMHEADPONY, FACE_L_WORKER_75, 2, 0x8472);
    MDL_APPLYOVERLAYMDS(BAU_13858_WORKER, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_13858_WORKER);
    B_GIVENPCTALENTS(BAU_13858_WORKER);
    B_SETFIGHTSKILLS(BAU_13858_WORKER, 15);
    DAILY_ROUTINE = RTN_START_13858;
    AIVAR[70] = NPC_AMB_BERMAR;
}

func void RTN_START_13858() {
    TA_PLUNDER(7, 30, 12, 45, "PART6_PLUNDER_01");
    TA_PLUNDER(12, 45, 17, 45, "PART6_PLUNDER_02");
    TA_PLUNDER(17, 45, 19, 0, "PART6_PLUNDER_01");
    TA_SMALLTALK(19, 0, 22, 0, "PART6_SMALLTALK_04");
    TA_SLEEP(22, 0, 7, 30, "PART6_BIGHOUSE_BED_02");
}

