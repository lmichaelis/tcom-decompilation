instance BDT_13474_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 0x34a2;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13474_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13474_MANHUNTER, MALE, HUMHEADPYMONTENEU, FACE_N_MANHUNTER48, BODYTEX_N, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13474_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13474_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13474_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13474_MANHUNTER, 80);
    DAILY_ROUTINE = RTN_START_13474;
}

func void RTN_START_13474() {
    TA_STAND_GUARDING_VOLERGUARD(8, 0, 9, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(9, 0, 10, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(10, 0, 11, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(11, 0, 12, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(12, 0, 13, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(13, 0, 14, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(14, 0, 15, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(15, 0, 16, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(16, 0, 17, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(17, 0, 18, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(18, 0, 19, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(19, 0, 20, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(20, 0, 21, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(21, 0, 22, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(22, 0, 23, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(23, 0, 0, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(0, 0, 1, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(1, 0, 2, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(2, 0, 3, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(3, 0, 4, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(4, 0, 5, 0, "PART7_VOLKERMAN_01");
    TA_STAND_GUARDING_VOLERGUARD(5, 0, 6, 0, "PART7_VOLKERMAN_04");
    TA_STAND_GUARDING_VOLERGUARD(6, 0, 8, 0, "PART7_VOLKERMAN_01");
}

