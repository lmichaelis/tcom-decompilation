instance BDT_13424_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 0x3470;
    VOICE = 63;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13424_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13424_MANHUNTER, MALE, HUMHEADFLAILNEU, FACE_B_MANHUNTER11, BODYTEX_B, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13424_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13424_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13424_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13424_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13424;
}

func void RTN_START_13424() {
    TA_LOOKOUT_VOLERGUARD(8, 0, 9, 0, "PART10_VOLKERMAN_03");
    TA_LOOKOUT_VOLERGUARD(9, 0, 8, 0, "PART10_VOLKERMAN_03");
}

