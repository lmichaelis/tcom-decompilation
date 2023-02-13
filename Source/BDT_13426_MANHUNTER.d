instance BDT_13426_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13426;
    VOICE = 53;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13426_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13426_MANHUNTER, MALE, HUMHEADWITHOUTPONY, FACE_P_MANHUNTER13, BODYTEX_P, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13426_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13426_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13426_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13426_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13426;
}

func void RTN_START_13426() {
    TA_SMALLTALK_VOLERGUARD(8, 0, 9, 0, "PART10_VOLKERMAN_01");
    TA_SMALLTALK_VOLERGUARD(9, 0, 8, 0, "PART10_VOLKERMAN_01");
}
