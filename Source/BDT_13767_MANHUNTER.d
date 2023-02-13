instance BDT_13767_MANHUNTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MANHUNTER;
    GUILD = GIL_BDT;
    ID = 13767;
    VOICE = 24;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_13767_MANHUNTER, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13767_MANHUNTER, MALE, HUMHEADPSIONIC, FACE_N_MANHUNTER67, BODYTEX_N, 35479);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13767_MANHUNTER);
    B_GIVENPCTALENTS(BDT_13767_MANHUNTER);
    B_SETFIGHTSKILLS(BDT_13767_MANHUNTER, 60);
    DAILY_ROUTINE = RTN_START_13767;
}

func void RTN_START_13767() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART5_Q503_MANHUNTER_02");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART5_Q503_MANHUNTER_02");
}
