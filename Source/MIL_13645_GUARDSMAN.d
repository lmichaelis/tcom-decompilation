instance MIL_13645_GUARDSMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 13645;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13645_GUARDSMAN, 40);
    B_SETNPCVISUAL(MIL_13645_GUARDSMAN, MALE, HUMHEADFATBALD, FACE_L_GUARDSMAN_02, 2, 35614);
    MDL_APPLYOVERLAYMDS(MIL_13645_GUARDSMAN, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13645_GUARDSMAN);
    B_GIVENPCTALENTS(MIL_13645_GUARDSMAN);
    B_SETFIGHTSKILLS(MIL_13645_GUARDSMAN, 45);
    DAILY_ROUTINE = RTN_START_13645;
    AIVAR[70] = NPC_AMB_ROYALGUARD;
}

func void RTN_START_13645() {
    TA_STAND_EATING(7, 40, 11, 20, "HARBOUR_HOUSE01_05");
    TA_CHECKSWD(11, 20, 15, 0, "HARBOUR_HOUSE01_05");
    TA_LEAN(15, 0, 17, 0, "HARBOUR_HOUSE01_LEAN_01");
    TA_SIT_BED_TIRED(17, 0, 21, 30, "HARBOUR_HOUSE01_03");
    TA_FIREPLACE(21, 30, 1, 0, "HARBOUR_HOUSE01_05");
    TA_SLEEP(1, 0, 7, 40, "HARBOUR_HOUSE01_03");
}

