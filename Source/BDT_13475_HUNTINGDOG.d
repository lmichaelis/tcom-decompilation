instance BDT_13475_HUNTINGDOG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HUNTINGDOG;
    GUILD = GIL_DMT;
    ID = 13475;
    VOICE = 0;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    MDL_SETVISUAL(BDT_13475_HUNTINGDOG, WOLFDIALOGUEMDS);
    MDL_SETVISUALBODY(BDT_13475_HUNTINGDOG, "WOL_MH_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    B_SETATTRIBUTESTOLEVEL(BDT_13475_HUNTINGDOG, 40);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
        CREATEINVITEMS(BDT_13475_HUNTINGDOG, 35351, 1);
    };
    FIGHT_TACTIC = FAI_WOLF;
    DAILY_ROUTINE = RTN_START_13475;
}

func void RTN_START_13475() {
    TA_SIT_CAMPFIRE_VOLERGUARD(8, 0, 9, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(9, 0, 10, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(10, 0, 11, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(11, 0, 12, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(12, 0, 13, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(13, 0, 14, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(14, 0, 15, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(15, 0, 16, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(16, 0, 17, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(17, 0, 18, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(18, 0, 19, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(19, 0, 20, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(20, 0, 21, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(21, 0, 22, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(22, 0, 23, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(23, 0, 0, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(0, 0, 1, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(1, 0, 2, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(2, 0, 3, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(3, 0, 4, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(4, 0, 5, 0, "PART7_VOLKERMAN_03");
    TA_SIT_CAMPFIRE_VOLERGUARD(5, 0, 6, 0, "PART7_VOLKERMAN_02");
    TA_SIT_CAMPFIRE_VOLERGUARD(6, 0, 8, 0, "PART7_VOLKERMAN_03");
}

