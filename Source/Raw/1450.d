instance BDT_13487_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_VOLKERGUARD;
    GUILD = GIL_VLK;
    ID = 0x34af;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BDT_13487_MANHUNTER, 34);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13487_MANHUNTER, MALE, HUMHEADTHOMASNEU, FACE_B_MANHUNTER59, BODYTEX_B, 0x8a97);
    MDL_APPLYOVERLAYMDS(BDT_13487_MANHUNTER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13487_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13487_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13487_MANHUNTER, 45);
    DAILY_ROUTINE = RTN_START_13487;
    AIVAR[70] = NPC_AMB_VOLKER;
}

func void RTN_START_13487() {
    TA_SIT_CHAIR_EAT(7, 0, 22, 0, "PARTM4_VOLKERGUARDS_CHAIR_05");
    TA_SLEEP(22, 0, 7, 0, "PARTM4_VOLKERGUARDS_HOUSE_BED_04");
}

