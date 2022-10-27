instance PC_ITEMFELLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = "Mr. Item";
    NPCTYPE = NPCTYPE_MAIN;
    GUILD = GIL_NONE;
    LEVEL = 30;
    VOICE = 15;
    ID = 0;
    ATTRIBUTE[4] = 100;
    ATTRIBUTE[5] = 100;
    ATTRIBUTE[3] = 400;
    ATTRIBUTE[2] = 400;
    ATTRIBUTE[1] = 400;
    ATTRIBUTE[0] = 400;
    EXP = ((500) * (((LEVEL) + (1)) / (2))) * ((LEVEL) + (1));
    EXP_NEXT = ((500) * (((LEVEL) + (2)) / (2))) * ((LEVEL) + (1));
    MDL_SETVISUAL(PC_ITEMFELLER, HUMANSMDS);
    MDL_SETVISUALBODY(PC_ITEMFELLER, HUMBODYNAKED0, BODYTEX_L, 0, HUMHEADPONY, 0x86f, 0, 0x8b25);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_MAGE, 6);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_PICKLOCK, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_SNEAK, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_ACROBAT, 0);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_PICKPOCKET, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_SMITH, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_RUNES, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_ALCHEMY, 1);
    NPC_SETTALENTSKILL(PC_ITEMFELLER, NPC_TALENT_TAKEANIMALTROPHY, 1);
    PLAYER_TALENT_ALCHEMY[0] = TRUE;
    PLAYER_TALENT_ALCHEMY[1] = TRUE;
    PLAYER_TALENT_ALCHEMY[2] = TRUE;
    PLAYER_TALENT_ALCHEMY[3] = TRUE;
    PLAYER_TALENT_ALCHEMY[4] = TRUE;
    PLAYER_TALENT_ALCHEMY[5] = TRUE;
    PLAYER_TALENT_ALCHEMY[6] = TRUE;
    PLAYER_TALENT_ALCHEMY[7] = TRUE;
    PLAYER_TALENT_ALCHEMY[8] = TRUE;
    PLAYER_TALENT_ALCHEMY[9] = TRUE;
    PLAYER_TALENT_ALCHEMY[10] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[0] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[1] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[2] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[3] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[4] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[5] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[6] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[7] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[8] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[9] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[10] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[11] = TRUE;
    PLAYER_TALENT_TAKEANIMALTROPHY[12] = TRUE;
    PLAYER_TALENT_RUNES[18] = TRUE;
    PLAYER_TALENT_RUNES[19] = TRUE;
    PLAYER_TALENT_RUNES[20] = TRUE;
    PLAYER_TALENT_RUNES[21] = TRUE;
    PLAYER_TALENT_RUNES[22] = TRUE;
    PLAYER_TALENT_RUNES[23] = TRUE;
    PLAYER_TALENT_RUNES[24] = TRUE;
    PLAYER_TALENT_RUNES[25] = TRUE;
    PLAYER_TALENT_RUNES[26] = TRUE;
    PLAYER_TALENT_RUNES[27] = TRUE;
    PLAYER_TALENT_RUNES[28] = TRUE;
    PLAYER_TALENT_RUNES[29] = TRUE;
    PLAYER_TALENT_RUNES[30] = TRUE;
    PLAYER_TALENT_RUNES[31] = TRUE;
    PLAYER_TALENT_RUNES[32] = TRUE;
    PLAYER_TALENT_RUNES[33] = TRUE;
    PLAYER_TALENT_RUNES[34] = TRUE;
    PLAYER_TALENT_RUNES[35] = TRUE;
    PLAYER_TALENT_RUNES[36] = TRUE;
    PLAYER_TALENT_RUNES[37] = TRUE;
    PLAYER_TALENT_RUNES[38] = TRUE;
    PLAYER_TALENT_RUNES[39] = TRUE;
    PLAYER_TALENT_RUNES[40] = TRUE;
    PLAYER_TALENT_RUNES[41] = TRUE;
    PLAYER_TALENT_RUNES[42] = TRUE;
    PLAYER_TALENT_RUNES[43] = TRUE;
    PLAYER_TALENT_RUNES[44] = TRUE;
    PLAYER_TALENT_RUNES[45] = TRUE;
    PLAYER_TALENT_RUNES[46] = TRUE;
    B_SETFIGHTSKILLS(PC_ITEMFELLER, 100);
    EQUIPITEM(PC_ITEMFELLER, 0x84eb);
}

