instance BDT_13488_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_NONE;
    ID = 13488;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_13488_MANHUNTER, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13488_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_P_MANHUNTER60, BODYTEX_P, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13488_MANHUNTER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13488_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13488_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13488_MANHUNTER, 45);
    DAILY_ROUTINE = RTN_START_13488;
    AIVAR[70] = NPC_AMB_VOLKER;
}

func void RTN_START_13488() {
    TA_SMALLTALK(7, 0, 21, 50, "SLUMS_SMALLTALK_04");
    TA_SMALLTALK(21, 50, 7, 0, TOT2);
}

