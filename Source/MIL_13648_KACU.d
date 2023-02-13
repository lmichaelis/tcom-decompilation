instance MIL_13648_KACU(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 13648;
    VOICE = 28;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13648_KACU, 50);
    B_SETNPCVISUAL(MIL_13648_KACU, MALE, HUMHEADWITHOUTPONY, FACE_N_KACU, 1, 35615);
    MDL_APPLYOVERLAYMDS(MIL_13648_KACU, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13648_KACU);
    B_GIVENPCTALENTS(MIL_13648_KACU);
    B_SETFIGHTSKILLS(MIL_13648_KACU, 45);
    DAILY_ROUTINE = RTN_START_13648;
    AIVAR[70] = NPC_AMB_ROYALGUARD;
}

func void RTN_START_13648() {
    TA_POTION_ALCHEMY(7, 0, 22, 30, "HARBOUR_HOUSE01_07");
    TA_SLEEP(22, 30, 7, 0, "HARBOUR_HOUSE01_12");
}
