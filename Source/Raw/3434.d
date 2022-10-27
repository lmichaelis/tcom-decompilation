func void PLAYERHOUSE_CHCEKBOUGHTITEMS() {
    if (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((NPC_HASITEMS(HERO, 0x8fbe)) >= (1)) || ((NPC_HASITEMS(HERO, 0x8fbf)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc0)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc1)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc2)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc3)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc4)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fc9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fca)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fcb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fcc)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fcd)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fce)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fcf)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd0)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd1)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd2)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd3)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd4)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fd9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fda)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fdb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fdc)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fdd)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fde)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fdf)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe0)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe1)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe2)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe3)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe4)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fe9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fea)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8feb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fec)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fed)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fee)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fef)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff0)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff1)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff2)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff3)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff4)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff5)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff6)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff7)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff8)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ff9)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ffa)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ffb)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ffc)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ffd)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8ffe)) >= (1))) || ((NPC_HASITEMS(HERO, 0x8fff)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9000)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9001)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9002)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9003)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9004)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9005)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9006)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9007)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9008)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9009)) >= (1))) || ((NPC_HASITEMS(HERO, 0x900a)) >= (1))) || ((NPC_HASITEMS(HERO, 0x900b)) >= (1))) {
        SND_PLAY(GELDBEUTEL);
        if ((OURHOME_FURNITURE_LOGENTRY) == (FALSE)) {
            OURHOME_FURNITURE_LOGENTRY = TRUE;
            LOG_CREATETOPIC(TOPIC_OURHOUME, LOG_NOTE);
            B_LOGENTRY(TOPIC_OURHOUME, LOG_OURHOME_FURNITURE);
        };
        if ((NPC_HASITEMS(HERO, 0x8fbe)) >= (1)) {
            PLAYERHOUSE_HEAD_WOLF += NPC_HASITEMS(HERO, 0x8fbe);
            NPC_REMOVEINVITEMS(HERO, 0x8fbe, NPC_HASITEMS(HERO, 0x8fbe));
        };
        if ((NPC_HASITEMS(HERO, 0x8fbf)) >= (1)) {
            PLAYERHOUSE_HEAD_SHADOWBEAST += NPC_HASITEMS(HERO, 0x8fbf);
            NPC_REMOVEINVITEMS(HERO, 0x8fbf, NPC_HASITEMS(HERO, 0x8fbf));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc1)) >= (1)) {
            PLAYERHOUSE_HEAD_TROLL += NPC_HASITEMS(HERO, 0x8fc1);
            NPC_REMOVEINVITEMS(HERO, 0x8fc1, NPC_HASITEMS(HERO, 0x8fc1));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc0)) >= (1)) {
            PLAYERHOUSE_HEAD_BEAR += NPC_HASITEMS(HERO, 0x8fc0);
            NPC_REMOVEINVITEMS(HERO, 0x8fc0, NPC_HASITEMS(HERO, 0x8fc0));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc2)) >= (1)) {
            PLAYERHOUSE_PICTURE_01 += NPC_HASITEMS(HERO, 0x8fc2);
            NPC_REMOVEINVITEMS(HERO, 0x8fc2, NPC_HASITEMS(HERO, 0x8fc2));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc3)) >= (1)) {
            PLAYERHOUSE_PICTURE_02 += NPC_HASITEMS(HERO, 0x8fc3);
            NPC_REMOVEINVITEMS(HERO, 0x8fc3, NPC_HASITEMS(HERO, 0x8fc3));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc4)) >= (1)) {
            PLAYERHOUSE_PICTURE_03 += NPC_HASITEMS(HERO, 0x8fc4);
            NPC_REMOVEINVITEMS(HERO, 0x8fc4, NPC_HASITEMS(HERO, 0x8fc4));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc5)) >= (1)) {
            PLAYERHOUSE_PICTURE_04 += NPC_HASITEMS(HERO, 0x8fc5);
            NPC_REMOVEINVITEMS(HERO, 0x8fc5, NPC_HASITEMS(HERO, 0x8fc5));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc6)) >= (1)) {
            PLAYERHOUSE_PICTURE_05 += NPC_HASITEMS(HERO, 0x8fc6);
            NPC_REMOVEINVITEMS(HERO, 0x8fc6, NPC_HASITEMS(HERO, 0x8fc6));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc7)) >= (1)) {
            PLAYERHOUSE_BED_POOR += NPC_HASITEMS(HERO, 0x8fc7);
            NPC_REMOVEINVITEMS(HERO, 0x8fc7, NPC_HASITEMS(HERO, 0x8fc7));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc8)) >= (1)) {
            PLAYERHOUSE_BED_NORMAL += NPC_HASITEMS(HERO, 0x8fc8);
            NPC_REMOVEINVITEMS(HERO, 0x8fc8, NPC_HASITEMS(HERO, 0x8fc8));
        };
        if ((NPC_HASITEMS(HERO, 0x8fc9)) >= (1)) {
            PLAYERHOUSE_BED_RICH += NPC_HASITEMS(HERO, 0x8fc9);
            NPC_REMOVEINVITEMS(HERO, 0x8fc9, NPC_HASITEMS(HERO, 0x8fc9));
        };
        if ((NPC_HASITEMS(HERO, 0x8fca)) >= (1)) {
            PLAYERHOUSE_SMALLCASE += NPC_HASITEMS(HERO, 0x8fca);
            NPC_REMOVEINVITEMS(HERO, 0x8fca, NPC_HASITEMS(HERO, 0x8fca));
        };
        if ((NPC_HASITEMS(HERO, 0x8fcb)) >= (1)) {
            PLAYERHOUSE_BIGCASE += NPC_HASITEMS(HERO, 0x8fcb);
            NPC_REMOVEINVITEMS(HERO, 0x8fcb, NPC_HASITEMS(HERO, 0x8fcb));
        };
        if ((NPC_HASITEMS(HERO, 0x8fcc)) >= (1)) {
            PLAYERHOUSE_BOOKSHELF += NPC_HASITEMS(HERO, 0x8fcc);
            NPC_REMOVEINVITEMS(HERO, 0x8fcc, NPC_HASITEMS(HERO, 0x8fcc));
        };
        if ((NPC_HASITEMS(HERO, 0x8fcd)) >= (1)) {
            PLAYERHOUSE_WRITINGTABLE += NPC_HASITEMS(HERO, 0x8fcd);
            NPC_REMOVEINVITEMS(HERO, 0x8fcd, NPC_HASITEMS(HERO, 0x8fcd));
        };
        if ((NPC_HASITEMS(HERO, 0x8fce)) >= (1)) {
            PLAYERHOUSE_CHEST_POOR += NPC_HASITEMS(HERO, 0x8fce);
            NPC_REMOVEINVITEMS(HERO, 0x8fce, NPC_HASITEMS(HERO, 0x8fce));
        };
        if ((NPC_HASITEMS(HERO, 0x8fcf)) >= (1)) {
            PLAYERHOUSE_CHEST_NORMAL += NPC_HASITEMS(HERO, 0x8fcf);
            NPC_REMOVEINVITEMS(HERO, 0x8fcf, NPC_HASITEMS(HERO, 0x8fcf));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd0)) >= (1)) {
            PLAYERHOUSE_CHEST_SILVER += NPC_HASITEMS(HERO, 0x8fd0);
            NPC_REMOVEINVITEMS(HERO, 0x8fd0, NPC_HASITEMS(HERO, 0x8fd0));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd1)) >= (1)) {
            PLAYERHOUSE_CHEST_GOLD += NPC_HASITEMS(HERO, 0x8fd1);
            NPC_REMOVEINVITEMS(HERO, 0x8fd1, NPC_HASITEMS(HERO, 0x8fd1));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd2)) >= (1)) {
            PLAYERHOUSE_CHEST_FORGOTTEN += NPC_HASITEMS(HERO, 0x8fd2);
            NPC_REMOVEINVITEMS(HERO, 0x8fd2, NPC_HASITEMS(HERO, 0x8fd2));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd3)) >= (1)) {
            PLAYERHOUSE_SOFA_BLUE += NPC_HASITEMS(HERO, 0x8fd3);
            NPC_REMOVEINVITEMS(HERO, 0x8fd3, NPC_HASITEMS(HERO, 0x8fd3));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd4)) >= (1)) {
            PLAYERHOUSE_SOFA_RED += NPC_HASITEMS(HERO, 0x8fd4);
            NPC_REMOVEINVITEMS(HERO, 0x8fd4, NPC_HASITEMS(HERO, 0x8fd4));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd5)) >= (1)) {
            PLAYERHOUSE_SOFA_YELLOW += NPC_HASITEMS(HERO, 0x8fd5);
            NPC_REMOVEINVITEMS(HERO, 0x8fd5, NPC_HASITEMS(HERO, 0x8fd5));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd6)) >= (1)) {
            PLAYERHOUSE_BENCH_WOOD += NPC_HASITEMS(HERO, 0x8fd6);
            NPC_REMOVEINVITEMS(HERO, 0x8fd6, NPC_HASITEMS(HERO, 0x8fd6));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd7)) >= (1)) {
            PLAYERHOUSE_BENCH_POOR += NPC_HASITEMS(HERO, 0x8fd7);
            NPC_REMOVEINVITEMS(HERO, 0x8fd7, NPC_HASITEMS(HERO, 0x8fd7));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd8)) >= (1)) {
            PLAYERHOUSE_FIREPLACE_BIG += NPC_HASITEMS(HERO, 0x8fd8);
            NPC_REMOVEINVITEMS(HERO, 0x8fd8, NPC_HASITEMS(HERO, 0x8fd8));
        };
        if ((NPC_HASITEMS(HERO, 0x8fd9)) >= (1)) {
            PLAYERHOUSE_FIREPLACE_NORMAL += NPC_HASITEMS(HERO, 0x8fd9);
            NPC_REMOVEINVITEMS(HERO, 0x8fd9, NPC_HASITEMS(HERO, 0x8fd9));
        };
        if ((NPC_HASITEMS(HERO, 0x8fda)) >= (1)) {
            PLAYERHOUSE_FIREPLACE_POOR += NPC_HASITEMS(HERO, 0x8fda);
            NPC_REMOVEINVITEMS(HERO, 0x8fda, NPC_HASITEMS(HERO, 0x8fda));
        };
        if ((NPC_HASITEMS(HERO, 0x8fdb)) >= (1)) {
            PLAYERHOUSE_CARPET_01 += NPC_HASITEMS(HERO, 0x8fdb);
            NPC_REMOVEINVITEMS(HERO, 0x8fdb, NPC_HASITEMS(HERO, 0x8fdb));
        };
        if ((NPC_HASITEMS(HERO, 0x8fdc)) >= (1)) {
            PLAYERHOUSE_CARPET_02 += NPC_HASITEMS(HERO, 0x8fdc);
            NPC_REMOVEINVITEMS(HERO, 0x8fdc, NPC_HASITEMS(HERO, 0x8fdc));
        };
        if ((NPC_HASITEMS(HERO, 0x8fdd)) >= (1)) {
            PLAYERHOUSE_CARPET_03 += NPC_HASITEMS(HERO, 0x8fdd);
            NPC_REMOVEINVITEMS(HERO, 0x8fdd, NPC_HASITEMS(HERO, 0x8fdd));
        };
        if ((NPC_HASITEMS(HERO, 0x8fde)) >= (1)) {
            PLAYERHOUSE_CARPET_04 += NPC_HASITEMS(HERO, 0x8fde);
            NPC_REMOVEINVITEMS(HERO, 0x8fde, NPC_HASITEMS(HERO, 0x8fde));
        };
        if ((NPC_HASITEMS(HERO, 0x8fdf)) >= (1)) {
            PLAYERHOUSE_CARPET_05 += NPC_HASITEMS(HERO, 0x8fdf);
            NPC_REMOVEINVITEMS(HERO, 0x8fdf, NPC_HASITEMS(HERO, 0x8fdf));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe0)) >= (1)) {
            PLAYERHOUSE_CARPET_06 += NPC_HASITEMS(HERO, 0x8fe0);
            NPC_REMOVEINVITEMS(HERO, 0x8fe0, NPC_HASITEMS(HERO, 0x8fe0));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe1)) >= (1)) {
            PLAYERHOUSE_CARPET_07 += NPC_HASITEMS(HERO, 0x8fe1);
            NPC_REMOVEINVITEMS(HERO, 0x8fe1, NPC_HASITEMS(HERO, 0x8fe1));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe2)) >= (1)) {
            PLAYERHOUSE_CARPET_08 += NPC_HASITEMS(HERO, 0x8fe2);
            NPC_REMOVEINVITEMS(HERO, 0x8fe2, NPC_HASITEMS(HERO, 0x8fe2));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe3)) >= (1)) {
            PLAYERHOUSE_CARPET_09 += NPC_HASITEMS(HERO, 0x8fe3);
            NPC_REMOVEINVITEMS(HERO, 0x8fe3, NPC_HASITEMS(HERO, 0x8fe3));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe4)) >= (1)) {
            PLAYERHOUSE_CARPET_BIG_01 += NPC_HASITEMS(HERO, 0x8fe4);
            NPC_REMOVEINVITEMS(HERO, 0x8fe4, NPC_HASITEMS(HERO, 0x8fe4));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe5)) >= (1)) {
            PLAYERHOUSE_CARPET_BIG_02 += NPC_HASITEMS(HERO, 0x8fe5);
            NPC_REMOVEINVITEMS(HERO, 0x8fe5, NPC_HASITEMS(HERO, 0x8fe5));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe6)) >= (1)) {
            PLAYERHOUSE_CARPET_BIG_03 += NPC_HASITEMS(HERO, 0x8fe6);
            NPC_REMOVEINVITEMS(HERO, 0x8fe6, NPC_HASITEMS(HERO, 0x8fe6));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe7)) >= (1)) {
            PLAYERHOUSE_CARPET_BIG_04 += NPC_HASITEMS(HERO, 0x8fe7);
            NPC_REMOVEINVITEMS(HERO, 0x8fe7, NPC_HASITEMS(HERO, 0x8fe7));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe8)) >= (1)) {
            PLAYERHOUSE_CARPET_BIG_05 += NPC_HASITEMS(HERO, 0x8fe8);
            NPC_REMOVEINVITEMS(HERO, 0x8fe8, NPC_HASITEMS(HERO, 0x8fe8));
        };
        if ((NPC_HASITEMS(HERO, 0x8fe9)) >= (1)) {
            PLAYERHOUSE_ALCHEMYPLACE += NPC_HASITEMS(HERO, 0x8fe9);
            NPC_REMOVEINVITEMS(HERO, 0x8fe9, NPC_HASITEMS(HERO, 0x8fe9));
        };
        if ((NPC_HASITEMS(HERO, 0x8fea)) >= (1)) {
            PLAYERHOUSE_SMITHPLACE += NPC_HASITEMS(HERO, 0x8fea);
            NPC_REMOVEINVITEMS(HERO, 0x8fea, NPC_HASITEMS(HERO, 0x8fea));
        };
        if ((NPC_HASITEMS(HERO, 0x8feb)) >= (1)) {
            PLAYERHOUSE_BOWMAKINGPLACE += NPC_HASITEMS(HERO, 0x8feb);
            NPC_REMOVEINVITEMS(HERO, 0x8feb, NPC_HASITEMS(HERO, 0x8feb));
        };
        if ((NPC_HASITEMS(HERO, 0x8fec)) >= (1)) {
            PLAYERHOUSE_COOKINGPLACE += NPC_HASITEMS(HERO, 0x8fec);
            NPC_REMOVEINVITEMS(HERO, 0x8fec, NPC_HASITEMS(HERO, 0x8fec));
        };
        if ((NPC_HASITEMS(HERO, 0x8fed)) >= (1)) {
            PLAYERHOUSE_TABLE_BIG += NPC_HASITEMS(HERO, 0x8fed);
            NPC_REMOVEINVITEMS(HERO, 0x8fed, NPC_HASITEMS(HERO, 0x8fed));
        };
        if ((NPC_HASITEMS(HERO, 0x8fee)) >= (1)) {
            PLAYERHOUSE_TABLE_RICH_01 += NPC_HASITEMS(HERO, 0x8fee);
            NPC_REMOVEINVITEMS(HERO, 0x8fee, NPC_HASITEMS(HERO, 0x8fee));
        };
        if ((NPC_HASITEMS(HERO, 0x8fef)) >= (1)) {
            PLAYERHOUSE_TABLE_RICH_02 += NPC_HASITEMS(HERO, 0x8fef);
            NPC_REMOVEINVITEMS(HERO, 0x8fef, NPC_HASITEMS(HERO, 0x8fef));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff0)) >= (1)) {
            PLAYERHOUSE_TABLE_CIRCLE_RICH += NPC_HASITEMS(HERO, 0x8ff0);
            NPC_REMOVEINVITEMS(HERO, 0x8ff0, NPC_HASITEMS(HERO, 0x8ff0));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff1)) >= (1)) {
            PLAYERHOUSE_TABLE_CIRCLE_POOR += NPC_HASITEMS(HERO, 0x8ff1);
            NPC_REMOVEINVITEMS(HERO, 0x8ff1, NPC_HASITEMS(HERO, 0x8ff1));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff2)) >= (1)) {
            PLAYERHOUSE_TABLE_POOR += NPC_HASITEMS(HERO, 0x8ff2);
            NPC_REMOVEINVITEMS(HERO, 0x8ff2, NPC_HASITEMS(HERO, 0x8ff2));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff3)) >= (1)) {
            PLAYERHOUSE_MANNEQUIN += NPC_HASITEMS(HERO, 0x8ff3);
            NPC_REMOVEINVITEMS(HERO, 0x8ff3, NPC_HASITEMS(HERO, 0x8ff3));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff4)) >= (1)) {
            PLAYERHOUSE_FLOWERPOT_POOR += NPC_HASITEMS(HERO, 0x8ff4);
            NPC_REMOVEINVITEMS(HERO, 0x8ff4, NPC_HASITEMS(HERO, 0x8ff4));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff5)) >= (1)) {
            PLAYERHOUSE_FLOWERPOT_NORMAL += NPC_HASITEMS(HERO, 0x8ff5);
            NPC_REMOVEINVITEMS(HERO, 0x8ff5, NPC_HASITEMS(HERO, 0x8ff5));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff6)) >= (1)) {
            PLAYERHOUSE_FLOWERPOT_RICH += NPC_HASITEMS(HERO, 0x8ff6);
            NPC_REMOVEINVITEMS(HERO, 0x8ff6, NPC_HASITEMS(HERO, 0x8ff6));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff7)) >= (1)) {
            PLAYERHOUSE_GOD_INNOS += NPC_HASITEMS(HERO, 0x8ff7);
            NPC_REMOVEINVITEMS(HERO, 0x8ff7, NPC_HASITEMS(HERO, 0x8ff7));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff8)) >= (1)) {
            PLAYERHOUSE_GOD_ADANOS += NPC_HASITEMS(HERO, 0x8ff8);
            NPC_REMOVEINVITEMS(HERO, 0x8ff8, NPC_HASITEMS(HERO, 0x8ff8));
        };
        if ((NPC_HASITEMS(HERO, 0x8ff9)) >= (1)) {
            PLAYERHOUSE_GOD_BELIAR += NPC_HASITEMS(HERO, 0x8ff9);
            NPC_REMOVEINVITEMS(HERO, 0x8ff9, NPC_HASITEMS(HERO, 0x8ff9));
        };
        if ((NPC_HASITEMS(HERO, 0x8ffa)) >= (1)) {
            PLAYERHOUSE_CORNER_MILITIA += NPC_HASITEMS(HERO, 0x8ffa);
            NPC_REMOVEINVITEMS(HERO, 0x8ffa, NPC_HASITEMS(HERO, 0x8ffa));
        };
        if ((NPC_HASITEMS(HERO, 0x8ffb)) >= (1)) {
            PLAYERHOUSE_CORNER_ARAXOS += NPC_HASITEMS(HERO, 0x8ffb);
            NPC_REMOVEINVITEMS(HERO, 0x8ffb, NPC_HASITEMS(HERO, 0x8ffb));
        };
        if ((NPC_HASITEMS(HERO, 0x8ffc)) >= (1)) {
            PLAYERHOUSE_CORNER_WOLFSDEN += NPC_HASITEMS(HERO, 0x8ffc);
            NPC_REMOVEINVITEMS(HERO, 0x8ffc, NPC_HASITEMS(HERO, 0x8ffc));
        };
        if ((NPC_HASITEMS(HERO, 0x8ffd)) >= (1)) {
            PLAYERHOUSE_CORNER_PIRATE += NPC_HASITEMS(HERO, 0x8ffd);
            NPC_REMOVEINVITEMS(HERO, 0x8ffd, NPC_HASITEMS(HERO, 0x8ffd));
        };
        if ((NPC_HASITEMS(HERO, 0x8ffe)) >= (1)) {
            PLAYERHOUSE_CORNER_SOUTHEREN += NPC_HASITEMS(HERO, 0x8ffe);
            NPC_REMOVEINVITEMS(HERO, 0x8ffe, NPC_HASITEMS(HERO, 0x8ffe));
        };
        if ((NPC_HASITEMS(HERO, 0x8fff)) >= (1)) {
            PLAYERHOUSE_CORNER_MONASTERY += NPC_HASITEMS(HERO, 0x8fff);
            NPC_REMOVEINVITEMS(HERO, 0x8fff, NPC_HASITEMS(HERO, 0x8fff));
        };
        if ((NPC_HASITEMS(HERO, 0x9000)) >= (1)) {
            PLAYERHOUSE_WALL_01 += NPC_HASITEMS(HERO, 0x9000);
            NPC_REMOVEINVITEMS(HERO, 0x9000, NPC_HASITEMS(HERO, 0x9000));
        };
        if ((NPC_HASITEMS(HERO, 0x9001)) >= (1)) {
            PLAYERHOUSE_WALL_02 += NPC_HASITEMS(HERO, 0x9001);
            NPC_REMOVEINVITEMS(HERO, 0x9001, NPC_HASITEMS(HERO, 0x9001));
        };
        if ((NPC_HASITEMS(HERO, 0x9002)) >= (1)) {
            PLAYERHOUSE_WALL_03 += NPC_HASITEMS(HERO, 0x9002);
            NPC_REMOVEINVITEMS(HERO, 0x9002, NPC_HASITEMS(HERO, 0x9002));
        };
        if ((NPC_HASITEMS(HERO, 0x9003)) >= (1)) {
            PLAYERHOUSE_WALL_04 += NPC_HASITEMS(HERO, 0x9003);
            NPC_REMOVEINVITEMS(HERO, 0x9003, NPC_HASITEMS(HERO, 0x9003));
        };
        if ((NPC_HASITEMS(HERO, 0x9004)) >= (1)) {
            PLAYERHOUSE_WALL_05 += NPC_HASITEMS(HERO, 0x9004);
            NPC_REMOVEINVITEMS(HERO, 0x9004, NPC_HASITEMS(HERO, 0x9004));
        };
        if ((NPC_HASITEMS(HERO, 0x9005)) >= (1)) {
            PLAYERHOUSE_WALL_06 += NPC_HASITEMS(HERO, 0x9005);
            NPC_REMOVEINVITEMS(HERO, 0x9005, NPC_HASITEMS(HERO, 0x9005));
        };
        if ((NPC_HASITEMS(HERO, 0x9006)) >= (1)) {
            PLAYERHOUSE_WALL_07 += NPC_HASITEMS(HERO, 0x9006);
            NPC_REMOVEINVITEMS(HERO, 0x9006, NPC_HASITEMS(HERO, 0x9006));
        };
        if ((NPC_HASITEMS(HERO, 0x9007)) >= (1)) {
            PLAYERHOUSE_WALL_08 += NPC_HASITEMS(HERO, 0x9007);
            NPC_REMOVEINVITEMS(HERO, 0x9007, NPC_HASITEMS(HERO, 0x9007));
        };
        if ((NPC_HASITEMS(HERO, 0x9008)) >= (1)) {
            PLAYERHOUSE_WALL_09 += NPC_HASITEMS(HERO, 0x9008);
            NPC_REMOVEINVITEMS(HERO, 0x9008, NPC_HASITEMS(HERO, 0x9008));
        };
        if ((NPC_HASITEMS(HERO, 0x9009)) >= (1)) {
            PLAYERHOUSE_WALL_10 += NPC_HASITEMS(HERO, 0x9009);
            NPC_REMOVEINVITEMS(HERO, 0x9009, NPC_HASITEMS(HERO, 0x9009));
        };
        if ((NPC_HASITEMS(HERO, 0x900a)) >= (1)) {
            PLAYERHOUSE_BEARFUR += NPC_HASITEMS(HERO, 0x900a);
            NPC_REMOVEINVITEMS(HERO, 0x900a, NPC_HASITEMS(HERO, 0x900a));
        };
        if (((NPC_HASITEMS(HERO, 0x900b)) >= (1)) && ((PLAYERHOUSE_BOUGHTFASTTRAVEL) == (FALSE))) {
            PLAYERHOUSE_BOUGHTFASTTRAVEL = TRUE;
            NPC_REMOVEINVITEMS(HERO, 0x900b, NPC_HASITEMS(HERO, 0x900b));
            WLD_INSERTNPC(0xd123, "PARTM5_FASTTRAVEL_GUY");
            CHANGEVOBCOLLISION("HEROHOUSE_FASTTRAVEL_VOB", TRUE, TRUE, TRUE, TRUE);
        };
    };
}

var int PLAYERHOUSE_CHCEKBOUGHTITEMS.OURHOME_FURNITURE_LOGENTRY = 0;
