instance DJG_16035_WOLFSON(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WOLFSON;
    GUILD = GIL_DJG;
    ID = 16035;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(DJG_16035_WOLFSON, 40);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_16035_WOLFSON, MALE, HUMHEADBALD, FACE_N_WOLFSON96, 1, 35512);
    MDL_APPLYOVERLAYMDS(DJG_16035_WOLFSON, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_16035_WOLFSON);
    B_GIVENPCTALENTS(DJG_16035_WOLFSON);
    B_SETFIGHTSKILLS(DJG_16035_WOLFSON, 60);
    DAILY_ROUTINE = RTN_START_16035;
    AIVAR[70] = NPC_AMB_WOLFSON;
}

func void RTN_START_16035() {
    TA_OBSERVE(9, 0, 22, 50, "WOLFSDEN_ULRYKROOM_MAP");
    TA_STAND_ARMSCROSSED(22, 50, 9, 0, "WOLFSDEN_CITADEL_GUARD_07");
}

