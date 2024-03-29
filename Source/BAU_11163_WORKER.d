instance BAU_11163_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 11163;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11163_WORKER, 12);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(BAU_11163_WORKER, HUMANSMDS);
    MDL_SETVISUALBODY(BAU_11163_WORKER, HUMBODYNAKED0, 30, 0, HUMHEADPONY, FACE_N_WORKER25, 3, 35589);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11163_WORKER);
    MDL_APPLYOVERLAYMDS(BAU_11163_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(BAU_11163_WORKER);
    B_SETFIGHTSKILLS(BAU_11163_WORKER, 25);
    DAILY_ROUTINE = RTN_START_11163;
    AIVAR[74] = NPC_MILITIAMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_MILITIA;
}

func void RTN_START_11163() {
    TA_PICK_ORE(6, 0, 17, 0, "PART10_MINE_WORK_09");
    TA_SIT_BED_TIRED(17, 0, 22, 50, "PART10_HOUSE5_SLEEP_01");
    TA_FIREPLACE(22, 50, 6, 0, "PART10_MINE_40");
}

func void RTN_SQ311_AFTERFIGHT_11163() {
    TA_FIREPLACE(6, 0, 22, 0, "PART10_MINE_40");
    TA_FIREPLACE(22, 0, 6, 0, "PART10_MINE_40");
}

