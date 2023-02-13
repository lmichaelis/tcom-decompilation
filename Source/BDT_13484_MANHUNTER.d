instance BDT_13484_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_NONE;
    ID = 13484;
    VOICE = 17;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13484_MANHUNTER, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13484_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_N_MANHUNTER56, BODYTEX_N, 35479);
    MDL_APPLYOVERLAYMDS(BDT_13484_MANHUNTER, HUMANS1HST1);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13484_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13484_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13484_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13484;
}

func void RTN_START_13484() {
    TA_SIT_SLAVSQUAT_NOTALK(8, 0, 9, 0, "PARTM1_PATH_95B");
    TA_SIT_SLAVSQUAT_NOTALK(9, 0, 8, 0, "PARTM1_PATH_95B");
}

