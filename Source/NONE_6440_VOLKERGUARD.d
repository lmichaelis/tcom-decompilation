instance NONE_6440_VOLKERGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 6440;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6440_VOLKERGUARD, 40);
    AIVAR[52] = TRUE;
    ATTRIBUTE[1] = 5;
    ATTRIBUTE[0] = 5;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6440_VOLKERGUARD, MALE, HUMHEADTHIEF, FACE_N_VOLKERGUARD09, 1, 35479);
    MDL_APPLYOVERLAYMDS(NONE_6440_VOLKERGUARD, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6440_VOLKERGUARD);
    EQUIPITEM(NONE_6440_VOLKERGUARD, 39710);
    CREATEINVITEMS(NONE_6440_VOLKERGUARD, 34384, 30);
    B_GIVENPCTALENTS(NONE_6440_VOLKERGUARD);
    B_SETFIGHTSKILLS(NONE_6440_VOLKERGUARD, 75);
    DAILY_ROUTINE = RTN_START_6440;
}

func void RTN_START_6440() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 18, 0, "KM_WATERDEATH_VOLKER_02");
    TA_STAYSTRAIGHT_NOIQ(18, 0, 8, 0, "KM_WATERDEATH_VOLKER_02");
}

