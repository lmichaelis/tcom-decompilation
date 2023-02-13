instance BDT_13421_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13421;
    VOICE = 68;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13421_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13421_MANHUNTER, MALE, HUMHEADPONY, FACE_P_MANHUNTER08, BODYTEX_P, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13421_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13421_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13421_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13421_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13421;
}

func void RTN_START_13421() {
    TA_STAND_GUARDING_VOLERGUARD(8, 0, 9, 0, "PART1_PATH_27A");
    TA_STAND_GUARDING_VOLERGUARD(9, 0, 8, 0, "PART1_PATH_27A");
}

