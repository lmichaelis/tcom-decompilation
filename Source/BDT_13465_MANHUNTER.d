instance BDT_13465_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13465;
    VOICE = 74;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13465_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13465_MANHUNTER, MALE, HUMHEADPONY, FACE_L_MANHUNTER41, BODYTEX_L, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13465_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13465_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13465_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13465_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13465;
}

func void RTN_START_13465() {
    TA_PLUNDER_VOLERGUARD(8, 0, 9, 0, "PART_13_HUT_03");
    TA_PLUNDER_VOLERGUARD(9, 0, 8, 0, "PART_13_HUT_03");
}

