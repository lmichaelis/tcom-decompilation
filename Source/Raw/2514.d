instance BAU_11169_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 0x2ba1;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11169_WORKER, 12);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(BAU_11169_WORKER, HUMANSMDS);
    MDL_SETVISUALBODY(BAU_11169_WORKER, HUMBODYNAKED0, 28, 0, HUMHEADWITHOUTPONY, FACE_N_WORKER31, 2, 0x8b04);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11169_WORKER);
    MDL_APPLYOVERLAYMDS(BAU_11169_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(BAU_11169_WORKER);
    B_SETFIGHTSKILLS(BAU_11169_WORKER, 25);
    DAILY_ROUTINE = RTN_START_11169;
    AIVAR[74] = NPC_MILITIAMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_MILITIA;
}

func void RTN_START_11169() {
    TA_PLUNDER(6, 0, 22, 30, "PART10_MINE_31");
    TA_SIT_TIRED(22, 30, 6, 0, "PART10_MINE_42");
}

func void RTN_WORK_11169() {
    TA_PICK_ORE(6, 0, 22, 30, "PART10_MINE_WORK_22");
    TA_SIT_TIRED(22, 30, 6, 0, "PART10_MINE_42");
}

func void RTN_Q311_AFTERFIGHT_11169() {
    TA_SIT_TIRED(6, 0, 22, 30, "PART10_MINE_42");
    TA_SIT_TIRED(22, 30, 6, 0, "PART10_MINE_42");
}
