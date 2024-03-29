instance BDT_13422_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_DMT;
    ID = 13422;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13422_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13422_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_N_MANHUNTER09, BODYTEX_N, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13422_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13422_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13422_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13422_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13422;
}

func void RTN_START_13422() {
    TA_SMALLTALK_VOLERGUARD(8, 0, 9, 0, "PART4_VOLKERMAN_03");
    TA_SMALLTALK_VOLERGUARD(9, 0, 8, 0, "PART4_VOLKERMAN_03");
}

