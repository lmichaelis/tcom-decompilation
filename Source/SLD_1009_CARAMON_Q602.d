instance SLD_1009_CARAMON_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CARAMON;
    GUILD = GIL_SLD;
    ID = 50159;
    VOICE = 10;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(SLD_1009_CARAMON_Q602, 30);
    B_SETFIGHTSKILLS(SLD_1009_CARAMON_Q602, 55);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(SLD_1009_CARAMON_Q602, 34075);
    if ((MARVIN_ARAXOS_WHEREJOINED) == (1)) {
        if ((CARAMON_TIERARMOR) == (1)) {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35454);
        } else if ((CARAMON_TIERARMOR) == (2)) {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35459);
        } else {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35465);
        };
    };
    if ((MARVIN_ARAXOS_WHEREJOINED) == (2)) {
        if ((CARAMON_TIERARMOR) == (3)) {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35470);
        } else if ((CARAMON_TIERARMOR) == (4)) {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35475);
        } else {
            B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35465);
        };
    };
    B_SETNPCVISUAL(SLD_1009_CARAMON_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_DYINGCARAMON, 1, 35465);
    MDL_APPLYOVERLAYMDS(SLD_1009_CARAMON_Q602, "Humans_DeadTalk.mds");
    B_GIVENPCTALENTS(SLD_1009_CARAMON_Q602);
    DAILY_ROUTINE = RTN_START_50159;
}

func void RTN_START_50159() {
    TA_SIT_ONLYDIALOGUE(6, 0, 7, 0, "PARTE1_CARAMON");
    TA_SIT_ONLYDIALOGUE(7, 0, 6, 0, "PARTE1_CARAMON");
}

func void RTN_TOT_50159() {
    TA_SIT_ONLYDIALOGUE(6, 0, 7, 0, TOT);
    TA_SIT_ONLYDIALOGUE(7, 0, 6, 0, TOT);
}

