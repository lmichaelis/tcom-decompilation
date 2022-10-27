instance DJG_10013_INNKEEPER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DIRK;
    GUILD = GIL_DJG;
    ID = 0x271d;
    VOICE = 26;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(DJG_10013_INNKEEPER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(DJG_10013_INNKEEPER, MALE, HUMHEADBALD, FACE_N_INNKEEPER, 1, 0x8ad6);
    B_CREATEWEAPONINV();
    MDL_APPLYOVERLAYMDS(DJG_10013_INNKEEPER, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(DJG_10013_INNKEEPER);
    B_SETFIGHTSKILLS(DJG_10013_INNKEEPER, 40);
    DAILY_ROUTINE = RTN_START_10013;
}

func void RTN_START_10013() {
    TA_INN(8, 0, 10, 0, "WOLFSDEN_TAVERN_06");
    TA_STAND_ARMSCROSSED(10, 0, 12, 0, "WOLFSDEN_TAVERN_06");
    TA_STAND_SWEEPING(12, 0, 14, 0, "WOLFSDEN_TAVERN_03");
    TA_COUNTING(14, 0, 16, 0, "WOLFSDEN_TAVERN_06");
    TA_INN(16, 0, 18, 0, "WOLFSDEN_TAVERN_06");
    TA_STAND_ARMSCROSSED(18, 0, 20, 0, "WOLFSDEN_TAVERN_06");
    TA_INN(20, 0, 0, 0, "WOLFSDEN_TAVERN_06");
    TA_STAND_SWEEPING(0, 0, 1, 0, "WOLFSDEN_TAVERN_03");
    TA_STAND_SWEEPING(1, 0, 2, 0, "WOLFSDEN_TAVERN_17");
    TA_STAND_SWEEPING(2, 0, 3, 0, "WOLFSDEN_TAVERN_25");
    TA_PLUNDER(3, 0, 4, 0, "WOLFSDEN_TAVERN_29");
    TA_FIREPLACE(4, 0, 8, 0, "WOLFSDEN_TAVERN_16");
}

