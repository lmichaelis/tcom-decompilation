instance DJG_16034_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 0x3ea2;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(DJG_16034_WOLFSON, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_16034_WOLFSON, MALE, HUMHEADFATBALD, FACE_N_PATRON_43, 1, 0x8ab8);
    MDL_APPLYOVERLAYMDS(DJG_16034_WOLFSON, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_16034_WOLFSON);
    B_GIVENPCTALENTS(DJG_16034_WOLFSON);
    B_SETFIGHTSKILLS(DJG_16034_WOLFSON, 60);
    DAILY_ROUTINE = RTN_START_16034;
    AIVAR[70] = NPC_AMB_WOLFSON;
}

func void RTN_START_16034() {
    TA_STAND_ARMSCROSSED(5, 57, 22, 57, "WOLFSDEN_CITADEL_GUARD_03");
    TA_STAND_ARMSCROSSED(22, 57, 5, 57, "WOLFSDEN_CITADEL_GUARD_06");
}

