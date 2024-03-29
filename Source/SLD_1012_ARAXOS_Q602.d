instance SLD_1012_ARAXOS_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 50162;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(SLD_1012_ARAXOS_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(SLD_1012_ARAXOS_Q602, MALE, HUMHEADTHIEF, FACE_N_ARAXOS02, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS_Q602, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(SLD_1012_ARAXOS_Q602);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(SLD_1012_ARAXOS_Q602);
    B_SETFIGHTSKILLS(SLD_1012_ARAXOS_Q602, 50);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(SLD_1012_ARAXOS_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50162;
}

func void RTN_START_50162() {
    TA_STAND_ARMSCROSSED_Q602(8, 0, 23, 0, "PARTM1_PATH_51");
    TA_STAND_ARMSCROSSED_Q602(23, 0, 8, 0, "PARTM1_PATH_51");
}

