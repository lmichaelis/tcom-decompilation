instance BDT_13458_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13458;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13458_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13458_MANHUNTER, MALE, HUMHEADPYMONTENEU, FACE_P_MANHUNTER36, BODYTEX_P, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13458_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13458_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13458_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13458_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13458;
}

func void RTN_START_13458() {
    TA_STAND_GUARDING_VOLERGUARD(8, 0, 9, 0, "PART15_MOB_60");
    TA_STAND_GUARDING_VOLERGUARD(9, 0, 8, 0, "PART15_MOB_60");
}
