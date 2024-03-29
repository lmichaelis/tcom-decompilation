instance BDT_13466_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_VLK;
    ID = 13466;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_13466_MANHUNTER, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13466_MANHUNTER, MALE, HUMHEADBALD, FACE_B_MANHUNTER42, BODYTEX_B, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13466_MANHUNTER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13466_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13466_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13466_MANHUNTER, 45);
    DAILY_ROUTINE = RTN_START_13466;
    AIVAR[70] = NPC_AMB_VOLKER;
}

func void RTN_START_13466() {
    TA_SIT_THRONE(7, 0, 22, 0, "PARTM4_VOLKERGUARDS_THRONE_01");
    TA_SIT_THRONE(22, 0, 7, 0, TOT2);
}

