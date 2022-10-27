instance SLD_13785_GRIF(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GRIF;
    GUILD = GIL_SLD;
    ID = 0x35d9;
    VOICE = 71;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(SLD_13785_GRIF, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(SLD_13785_GRIF, 0x9a44);
    B_SETNPCVISUAL(SLD_13785_GRIF, MALE, HUMHEADPONY, FACE_N_GRIF, 1, 0x8a83);
    MDL_APPLYOVERLAYMDS(SLD_13785_GRIF, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(SLD_13785_GRIF);
    B_SETFIGHTSKILLS(SLD_13785_GRIF, 90);
    DAILY_ROUTINE = RTN_START_13785;
}

func void RTN_START_13785() {
    TA_SOFA(22, 0, 23, 30, "PARTM1_GUILDHOUSE_SOFA_01");
    TA_SOFA(23, 30, 22, 0, "PARTM1_GUILDHOUSE_SOFA_01");
}

func void RTN_Q509_WAIT_13785() {
    TA_LEAN(8, 0, 22, 0, "PART5_Q509_GRIF");
    TA_LEAN(22, 0, 8, 0, "PART5_Q509_GRIF");
}

