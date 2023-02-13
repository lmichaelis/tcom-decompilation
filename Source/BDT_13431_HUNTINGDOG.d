instance BDT_13431_HUNTINGDOG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HUNTINGDOG;
    GUILD = GIL_NONE;
    ID = 13431;
    VOICE = 0;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[52] = TRUE;
    MDL_SETVISUAL(BDT_13431_HUNTINGDOG, WOLFDIALOGUEMDS);
    MDL_SETVISUALBODY(BDT_13431_HUNTINGDOG, "WOL_MH_BODY", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    B_SETATTRIBUTESTOLEVEL(BDT_13431_HUNTINGDOG, 28);
    if ((PLAYER_TALENT_TAKEANIMALTROPHY[2]) == (TRUE)) {
        CREATEINVITEMS(BDT_13431_HUNTINGDOG, 35351, 1);
    };
    FIGHT_TACTIC = FAI_WOLF;
    DAILY_ROUTINE = RTN_START_13431;
}

func void RTN_START_13431() {
    TA_SIT_CAMPFIRE(8, 0, 9, 0, "PART17_PATH_175C");
    TA_SIT_CAMPFIRE(9, 0, 8, 0, "PART17_PATH_175C");
}
