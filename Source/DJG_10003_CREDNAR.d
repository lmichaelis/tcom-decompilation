instance DJG_10003_CREDNAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CREDNAR;
    GUILD = GIL_DJG;
    ID = 10003;
    VOICE = 54;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10003_CREDNAR, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(DJG_10003_CREDNAR, MALE, HUMHEADFATBALD, FACE_N_CREDNAR, BODYTEX_N, 35512);
    MDL_APPLYOVERLAYMDS(DJG_10003_CREDNAR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10003_CREDNAR);
    B_GIVENPCTALENTS(DJG_10003_CREDNAR);
    B_SETFIGHTSKILLS(DJG_10003_CREDNAR, 80);
    DAILY_ROUTINE = RTN_START_10003;
}

func void RTN_START_10003() {
    TA_GUARD_PASSAGE(8, 0, 23, 0, "WOLFSDEN_PATH_01");
    TA_GUARD_PASSAGE(23, 0, 8, 0, "WOLFSDEN_PATH_01");
}

