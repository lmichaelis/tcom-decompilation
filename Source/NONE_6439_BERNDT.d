instance NONE_6439_BERNDT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RETOGH;
    GUILD = GIL_NONE;
    ID = 6439;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6439_BERNDT, 10);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    ATTRIBUTE[1] = 5;
    ATTRIBUTE[0] = 5;
    B_SETNPCVISUAL(NONE_6439_BERNDT, MALE, HUMHEADBALD, FACE_N_BERNDT, 1, 33572);
    B_CREATEAMBIENTINV(NONE_6439_BERNDT);
    B_GIVENPCTALENTS(NONE_6439_BERNDT);
    B_SETFIGHTSKILLS(NONE_6439_BERNDT, 30);
    DAILY_ROUTINE = RTN_START_6439;
}

func void RTN_START_6439() {
    TA_STAYSTRAIGHT_NOIQ(7, 0, 22, 0, "PART9_WATERHOUSE_BERNDT");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 7, 0, "PART9_WATERHOUSE_BERNDT");
}

