instance BDT_13455_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 0x348f;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13455_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13455_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_B_MANHUNTER33, BODYTEX_B, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13455_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13455_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13455_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13455_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13455;
}

func void RTN_START_13455() {
    TA_SMALLTALK_VOLERGUARD(8, 0, 9, 0, "PART15_VOLKERMAN_SMALLTALK_02");
    TA_SMALLTALK_VOLERGUARD(9, 0, 8, 0, "PART15_VOLKERMAN_SMALLTALK_02");
}
