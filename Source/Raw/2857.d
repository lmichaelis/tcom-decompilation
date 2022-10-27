instance NONE_13361_RACIUS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RACIUS;
    GUILD = GIL_FRIENDLY_HUMAN;
    ID = 0x3431;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[52] = TRUE;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    AIVAR[95] = TRUE;
    AIVAR[71] = TRUE;
    ATTRIBUTE[1] = 1;
    ATTRIBUTE[0] = 1;
    FIGHT_TACTIC = FAI_HUMAN_POWERLESS;
    CREATEINVITEMS(NONE_13361_RACIUS, 0x9bef, 1);
    CREATEINVITEMS(NONE_13361_RACIUS, 0x859b, 17);
    CREATEINVITEMS(NONE_13361_RACIUS, 0x8628, 1);
    CREATEINVITEMS(NONE_13361_RACIUS, 0x936a, 3);
    B_CREATEAMBIENTINV(NONE_13361_RACIUS);
    B_SETNPCVISUAL(NONE_13361_RACIUS, MALE, HUMHEADBALD, FACE_N_RACIUS, 1, 0x8ad7);
    B_GIVENPCTALENTS(NONE_13361_RACIUS);
    B_SETFIGHTSKILLS(NONE_13361_RACIUS, 0);
    DAILY_ROUTINE = RTN_START_13361;
}

func void RTN_START_13361() {
    TA_STAND_WP(4, 0, 13, 0, "PART17_IZAAC_NEWTON_01");
    TA_STAND_WP(13, 0, 4, 0, "PART17_IZAAC_NEWTON_01");
}

func void RTN_TOT_13361() {
    TA_STAND_WP(4, 0, 13, 0, "PART17_SWAMPBLOOD_14");
    TA_STAND_WP(13, 0, 4, 0, "PART17_SWAMPBLOOD_14");
}

