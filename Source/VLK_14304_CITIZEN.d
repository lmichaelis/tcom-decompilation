instance VLK_14304_CITIZEN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 14304;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14304_CITIZEN, 0);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14304_CITIZEN, MALE, HUMHEADBALD, FACE_N_BELATEDPATRON_03, BODYTEX_N, 35585);
    MDL_APPLYOVERLAYMDS(VLK_14304_CITIZEN, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14304_CITIZEN);
    B_GIVENPCTALENTS(VLK_14304_CITIZEN);
    B_SETFIGHTSKILLS(VLK_14304_CITIZEN, 40);
    DAILY_ROUTINE = RTN_START_14304;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_14304() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "S_BELATEDPATRON_03");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "S_BELATEDPATRON_03");
}

