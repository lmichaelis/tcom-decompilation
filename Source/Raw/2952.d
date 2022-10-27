instance BDT_8007_FROST(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_WANTEDPOSTER_FROST;
    GUILD = GIL_BDT;
    ID = 0x1f47;
    VOICE = 60;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_8007_FROST, 50);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(BDT_8007_FROST, 0x9aad);
    ATTRIBUTE[1] = 1000;
    ATTRIBUTE[0] = 1000;
    LEVEL = 100;
    B_SETNPCVISUAL(BDT_8007_FROST, MALE, HUMHEADFIGHTER, FACE_N_BOUNTYTARGET09, 1, 0x8a74);
    MDL_APPLYOVERLAYMDS(BDT_8007_FROST, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(BDT_8007_FROST);
    B_SETFIGHTSKILLS(BDT_8007_FROST, 70);
    BODYSTATEINTERRUPTABLEOVERRIDE = TRUE;
    DAILY_ROUTINE = RTN_START_8007;
}

func void RTN_START_8007() {
    TA_SIT_TURKISH(22, 0, 8, 0, "PART14_WANTEDPOSTER_FROST");
    TA_SIT_TURKISH(8, 0, 22, 0, "PART14_WANTEDPOSTER_FROST");
}
