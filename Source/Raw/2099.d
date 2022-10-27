instance BDT_13423_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 0x346f;
    VOICE = 11;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13423_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13423_MANHUNTER, MALE, HUMHEADBALD, FACE_P_MANHUNTER10, BODYTEX_P, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13423_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13423_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13423_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13423_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13423;
}

func void RTN_START_13423() {
    TA_SMALLTALK_VOLERGUARD(8, 0, 9, 0, "PART4_VOLKERMAN_02");
    TA_SMALLTALK_VOLERGUARD(9, 0, 8, 0, "PART4_VOLKERMAN_02");
}

