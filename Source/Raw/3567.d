func void B_REMOVEMILITIAARMOR_QUESTS() {
    FF_APPLYONCEEXT(0xfa04, 1000, 13);
}

func void B_REMOVEARAXOSARMOR_QUESTS() {
    FF_APPLYONCEEXT(0xfa06, 1000, 12);
}

func void REMOVEMILITIAARMOR_QUESTS_APPLY() {
    REMOVEMILITIAARMOR_QUESTS_COUNT = (REMOVEMILITIAARMOR_QUESTS_COUNT) + (1);
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (1)) {
        if ((LOG_GETSTATUS(MIS_QM201)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM201), TOPIC_QM201, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM201, LOG_QM201_FAILED);
            QM201_REMOVENPC();
            QM201_REMOVEMILITIA();
            if (HLP_ISVALIDNPC(NONE_13585_THUG)) {
                if ((NPC_ISDEAD(NONE_13585_THUG)) == (FALSE)) {
                    B_REMOVENPC(0xd2c2);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13586_THUG)) {
                if ((NPC_ISDEAD(NONE_13586_THUG)) == (FALSE)) {
                    B_REMOVENPC(0xd2c5);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13586_THUG)) {
                if ((NPC_ISDEAD(NONE_13587_THUG)) == (FALSE)) {
                    B_REMOVENPC(0xd2c8);
                };
            };
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (2)) {
        if ((LOG_GETSTATUS(MIS_QM202)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM202), TOPIC_QM202, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM202, LOG_QM202_FAILED);
            if (HLP_ISVALIDNPC(GIANT_BUG_QM202_01)) {
                if ((NPC_ISDEAD(GIANT_BUG_QM202_01)) == (FALSE)) {
                    B_REMOVENPC(0xc50b);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_BUG_QM202_02)) {
                if ((NPC_ISDEAD(GIANT_BUG_QM202_02)) == (FALSE)) {
                    B_REMOVENPC(0xc50c);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_BUG_QM202_03)) {
                if ((NPC_ISDEAD(GIANT_BUG_QM202_03)) == (FALSE)) {
                    B_REMOVENPC(0xc50d);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_BUG_QM202_04)) {
                if ((NPC_ISDEAD(GIANT_BUG_QM202_04)) == (FALSE)) {
                    B_REMOVENPC(0xc50e);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_BUG_QM202_05)) {
                if ((NPC_ISDEAD(GIANT_BUG_QM202_05)) == (FALSE)) {
                    B_REMOVENPC(0xc50f);
                };
            };
            QM202_REMOVENPC();
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (3)) {
        if ((LOG_GETSTATUS(MIS_QM203)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM203), TOPIC_QM203, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM203, LOG_QM203_FAILED);
            QM203_REMOVERATNESTS = 1;
            QM203_TELLOKTAV = 2;
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (4)) {
        if ((LOG_GETSTATUS(MIS_QM301)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM301), TOPIC_QM301, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM301, LOG_QM301_FAILED);
            B_QM301_BRINGBACKHOMELESS();
            if (HLP_ISVALIDNPC(BDT_11096_THIEF)) {
                if ((NPC_ISDEAD(BDT_11096_THIEF)) == (FALSE)) {
                    B_REMOVENPC(0xcc99);
                };
            };
            if (HLP_ISVALIDNPC(BDT_11097_THIEF)) {
                if ((NPC_ISDEAD(BDT_11097_THIEF)) == (FALSE)) {
                    B_REMOVENPC(0xcd94);
                };
            };
            if ((MOVER_QM301_PUDDLE_01) == (0)) {
                MOVER_QM301_PUDDLE_01 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_01");
            };
            if ((MOVER_QM301_PUDDLE_02) == (0)) {
                MOVER_QM301_PUDDLE_02 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_02");
            };
            if ((MOVER_QM301_PUDDLE_03) == (0)) {
                MOVER_QM301_PUDDLE_03 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_03");
            };
            if ((MOVER_QM301_PUDDLE_04) == (0)) {
                MOVER_QM301_PUDDLE_04 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_04");
            };
            if ((MOVER_QM301_PUDDLE_05) == (0)) {
                MOVER_QM301_PUDDLE_05 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_05");
            };
            if ((MOVER_QM301_PUDDLE_06) == (0)) {
                MOVER_QM301_PUDDLE_06 = 1;
                WLD_SENDTRIGGER("QM301_PUDDLE_06");
            };
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (5)) {
        if ((LOG_GETSTATUS(MIS_QM302)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM302), TOPIC_QM302, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM302, LOG_QM302_FAILED_LEAVEGUILD);
            QM302_FAILEDQUEST();
            QM302_TELEPORTBANDITS_START();
            QM302_BRINGBACKMONSTERS();
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (6)) {
        if ((LOG_GETSTATUS(MIS_QM303)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM303), TOPIC_QM303, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM303, LOG_QM303_FAILED);
            if (HLP_ISVALIDNPC(MIL_13589_MILITIA)) {
                if ((NPC_ISDEAD(MIL_13589_MILITIA)) == (FALSE)) {
                    B_REMOVENPC(0xdb8f);
                };
            };
            FF_APPLYONCEEXTGT(0xf81e, 0, -(1));
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (7)) {
        if ((LOG_GETSTATUS(MIS_QM304)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM304), TOPIC_QM304, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM304, LOG_QM304_FAILED);
            if (HLP_ISVALIDNPC(NONE_13590_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13590_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd2ce);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13591_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13591_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd2d1);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13592_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13592_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd7e9);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13593_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13593_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd2d4);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13594_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13594_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd2d7);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13595_REFUGEE)) {
                if ((NPC_ISDEAD(NONE_13595_REFUGEE)) == (FALSE)) {
                    B_REMOVENPC(0xd2da);
                };
            };
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (8)) {
        if ((LOG_GETSTATUS(MIS_QM305)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM305), TOPIC_QM305, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM305, LOG_QM305_FAILED);
            QM305_GAMALINSEWERS = 4;
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (9)) {
        if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM401), TOPIC_QM401, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM401, LOG_QM401_FAILED);
            if (HLP_ISVALIDNPC(MIL_13511_MILITIA)) {
                if ((NPC_ISDEAD(MIL_13511_MILITIA)) == (FALSE)) {
                    B_REMOVENPC(0xcde3);
                };
            };
            if (HLP_ISVALIDNPC(MIL_13512_MILITIA)) {
                if ((NPC_ISDEAD(MIL_13512_MILITIA)) == (FALSE)) {
                    B_REMOVENPC(0xcdf1);
                };
            };
            if (HLP_ISVALIDNPC(MIL_13513_MILITIA)) {
                if ((NPC_ISDEAD(MIL_13513_MILITIA)) == (FALSE)) {
                    B_REMOVENPC(0xcdff);
                };
            };
            if (HLP_ISVALIDNPC(MIL_13514_MILITIA)) {
                if ((NPC_ISDEAD(MIL_13514_MILITIA)) == (FALSE)) {
                    B_REMOVENPC(0xce0f);
                };
            };
            if (HLP_ISVALIDNPC(MIL_6275_BERTO)) {
                if ((NPC_ISDEAD(MIL_6275_BERTO)) == (FALSE)) {
                    B_REMOVENPC(0xdbd5);
                };
            };
            if (HLP_ISVALIDNPC(MIL_6268_BRODDY)) {
                if ((NPC_ISDEAD(MIL_6268_BRODDY)) == (FALSE)) {
                    B_REMOVENPC(0xdbca);
                };
            };
            if (HLP_ISVALIDNPC(BEAR_QM401)) {
                if ((NPC_ISDEAD(BEAR_QM401)) == (FALSE)) {
                    B_REMOVENPC(0xc48c);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6336_BODYGUARD)) {
                if ((NPC_ISDEAD(NONE_6336_BODYGUARD)) == (FALSE)) {
                    B_REMOVENPC(0xe420);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6337_BODYGUARD)) {
                if ((NPC_ISDEAD(NONE_6337_BODYGUARD)) == (FALSE)) {
                    B_REMOVENPC(0xe430);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6338_BODYGUARD)) {
                if ((NPC_ISDEAD(NONE_6338_BODYGUARD)) == (FALSE)) {
                    B_REMOVENPC(0xe43a);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6339_BODYGUARD)) {
                if ((NPC_ISDEAD(NONE_6339_BODYGUARD)) == (FALSE)) {
                    B_REMOVENPC(0xe443);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6340_SMUGGLER)) {
                if ((NPC_ISDEAD(NONE_6340_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xe44c);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6341_BODYGUARD)) {
                if ((NPC_ISDEAD(NONE_6341_BODYGUARD)) == (FALSE)) {
                    B_REMOVENPC(0xe460);
                };
            };
            if (HLP_ISVALIDNPC(MIL_6267_SALVI)) {
                if ((NPC_ISDEAD(MIL_6267_SALVI)) == (FALSE)) {
                    B_REMOVENPC(0xdbc0);
                };
            };
            if (HLP_ISVALIDNPC(MIL_6277_RENEGADE)) {
                if ((NPC_ISDEAD(MIL_6277_RENEGADE)) == (FALSE)) {
                    B_REMOVENPC(0xdbad);
                };
            };
            if (HLP_ISVALIDNPC(MIL_6264_RENEGADE)) {
                if ((NPC_ISDEAD(MIL_6264_RENEGADE)) == (FALSE)) {
                    B_REMOVENPC(0xdba0);
                };
            };
            if (HLP_ISVALIDNPC(NONE_6269_DANIEL)) {
                if ((NPC_ISDEAD(NONE_6269_DANIEL)) == (FALSE)) {
                    B_REMOVENPC(0xdbf3);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13517_DANIEL)) {
                if ((NPC_ISDEAD(NONE_13517_DANIEL)) == (FALSE)) {
                    B_REMOVENPC(0xeb40);
                };
            };
            FF_APPLYONCEEXTGT(0xf563, 0, -(1));
            if ((QM401_LEAVEGUILD_MOVER_01) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf55d, 0, -(1));
            };
            if ((QM401_LEAVEGUILD_MOVER_02) == (TRUE)) {
                WLD_SENDTRIGGER("QM401_MOVER_PREPAREBARREL");
            };
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (10)) {
        if ((LOG_GETSTATUS(MIS_QM402)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QM402), TOPIC_QM402, LOG_FAILED);
            B_LOGENTRY(TOPIC_QM402, LOG_QM402_FAILED);
            if (HLP_ISVALIDNPC(NONE_13606_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13606_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf37);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13607_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13607_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf39);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13608_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13608_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf3b);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13609_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13609_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf3d);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13610_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13610_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf3f);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13611_SOUTHERNER)) {
                if ((NPC_ISDEAD(NONE_13611_SOUTHERNER)) == (FALSE)) {
                    B_REMOVENPC(0xcf41);
                };
            };
            QM402_REMOVENPC();
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (11)) {
        if ((LOG_GETSTATUS(MIS_KQ402)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_KQ402), TOPIC_KQ402, LOG_FAILED);
            B_LOGENTRY(TOPIC_KQ402, LOG_KQ402_FAILED);
            if ((NPC_ISDEAD(NONE_2009_LENNART_KQ402)) == (FALSE)) {
                B_REMOVEALLINVENTORY(NONE_2009_LENNART_KQ402);
                B_STARTOTHERROUTINE(NONE_2009_LENNART_KQ402, RESERVED_CONST_STRING_24);
                TELEPORTNPCTOWP(0xcf10, NONE_2009_LENNART_KQ402.WP);
                B_REMOVENPC(0xcf10);
            };
            if ((NPC_ISDEAD(MIL_4017_ARWID_KQ402)) == (FALSE)) {
                B_REMOVENPC(0xccbc);
            };
            if ((KQ402_LEAVEGUILD_MOVER_01) == (TRUE)) {
                WLD_SENDTRIGGER("KQ402_WOODCHEST_ARMORS_01");
                WLD_SENDTRIGGER("KQ402_WOODCHEST_ARMORS_02");
            };
            KQ402_LEAVEGUILD_MOVER_02 = TRUE;
            if (0) {
                FF_APPLYONCEEXTGT(0xf139, 0, -(1));
                FF_APPLYONCEEXTGT(0xf1ee, 0, -(1));
            };
            KQ402_CLEARCITIZENRTN();
            KQ402_DECISION = 2;
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (12)) {
        if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_SQ503), TOPIC_SQ503, LOG_FAILED);
            B_LOGENTRY(TOPIC_SQ503, LOG_SQ503_VZ_FAIL);
            if ((NPC_ISDEAD(MIL_13523_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeafe);
            };
            if ((NPC_ISDEAD(MIL_13524_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeb02);
            };
            if ((NPC_ISDEAD(MIL_13525_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeb06);
            };
            if ((NPC_ISDEAD(SLD_13526_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb47);
            };
            if ((NPC_ISDEAD(SLD_13527_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb4b);
            };
            if ((NPC_ISDEAD(SLD_13528_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb4f);
            };
            if ((Q307_POISONWAY) != (1)) {
                if (NPC_KNOWSINFO(HERO, 0x14ce7)) {
                    B_STARTOTHERROUTINE(VLK_6126_LENA, "AFTERQUEST");
                    NPC_REFRESH(VLK_6126_LENA);
                    TELEPORTNPCTOWP(0xe5d3, VLK_6126_LENA.WP);
                } else {
                    B_STARTOTHERROUTINE(VLK_6126_LENA, START);
                    NPC_REFRESH(VLK_6126_LENA);
                    TELEPORTNPCTOWP(0xe5d3, VLK_6126_LENA.WP);
                } else {
                    SQ507_STARTINGPOINT = 0;
                };
            };
            RESTOREROUTINE_WINSTAN();
            RESTOREROUTINE_GAROS();
        };
    };
    if ((REMOVEMILITIAARMOR_QUESTS_COUNT) == (13)) {
        RESTOREROUTINE_WEIGAR();
        RESTOREROUTINE_DUSTER();
        RESTOREROUTINE_OKTAV();
        RESTOREROUTINE_RODERICH();
        RESTOREROUTINE_SALL();
        RESTOREROUTINE_ARWID();
        RESTOREROUTINE_WINSTAN();
        TELEPORTNPCTOWP(0xce6f, MIL_4016_WEGAR.WP);
        TELEPORTNPCTOWP(0xd499, MIL_6371_DUSTER.WP);
        TELEPORTNPCTOWP(0xce55, MIL_4001_OKTAV.WP);
        TELEPORTNPCTOWP(0xce47, MIL_4000_RODERICH.WP);
        TELEPORTNPCTOWP(0xcee7, MIL_4044_SALL.WP);
        TELEPORTNPCTOWP(0xcca0, MIL_4017_ARWID.WP);
        TELEPORTNPCTOWP(0xccd7, MIL_924_WINSTAN.WP);
        REMOVEMILITIAARMOR_QUESTS_COUNT = 0;
    };
}

var int REMOVEMILITIAARMOR_QUESTS_APPLY.REMOVEMILITIAARMOR_QUESTS_COUNT = 0;
func void REMOVEARAXOSARMOR_QUESTS_APPLY() {
    REMOVEARAXOSARMOR_QUESTS_COUNT = (REMOVEARAXOSARMOR_QUESTS_COUNT) + (1);
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (1)) {
        if ((LOG_GETSTATUS(MIS_QA202)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA202), TOPIC_QA202, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA202, LOG_QA202_FAILED);
            if (HLP_ISVALIDNPC(SCAVENGER_QA202_01)) {
                if ((NPC_ISDEAD(SCAVENGER_QA202_01)) == (FALSE)) {
                    B_REMOVENPC(0xc619);
                };
            };
            if (HLP_ISVALIDNPC(SCAVENGER_QA202_02)) {
                if ((NPC_ISDEAD(SCAVENGER_QA202_02)) == (FALSE)) {
                    B_REMOVENPC(0xc61c);
                };
            };
            if (HLP_ISVALIDNPC(SCAVENGER_QA202_03)) {
                if ((NPC_ISDEAD(SCAVENGER_QA202_03)) == (FALSE)) {
                    B_REMOVENPC(0xc61f);
                };
            };
            if (HLP_ISVALIDNPC(WOLF_QA202_01)) {
                if ((NPC_ISDEAD(WOLF_QA202_01)) == (FALSE)) {
                    B_REMOVENPC(0xc790);
                };
            };
            if (HLP_ISVALIDNPC(WOLF_QA202_02)) {
                if ((NPC_ISDEAD(WOLF_QA202_02)) == (FALSE)) {
                    B_REMOVENPC(0xc793);
                };
            };
            if (HLP_ISVALIDNPC(WOLF_QA202_03)) {
                if ((NPC_ISDEAD(WOLF_QA202_03)) == (FALSE)) {
                    B_REMOVENPC(0xc796);
                };
            };
            if (HLP_ISVALIDNPC(WOLF_QA202_04)) {
                if ((NPC_ISDEAD(WOLF_QA202_04)) == (FALSE)) {
                    B_REMOVENPC(0xc799);
                };
            };
            if (HLP_ISVALIDNPC(BEAR_QA202_01)) {
                if ((NPC_ISDEAD(BEAR_QA202_01)) == (FALSE)) {
                    B_REMOVENPC(0xc488);
                };
            };
            B_STARTOTHERROUTINE(VLK_6407_RAMHA, START);
            NPC_REFRESH(VLK_6407_RAMHA);
            TELEPORTNPCTOWP(0xcf25, VLK_6407_RAMHA.WP);
            RESTOREROUTINE_FIGARO();
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (2)) {
        if ((LOG_GETSTATUS(MIS_QA203)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA203), TOPIC_QA203, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA203, LOG_QA203_FAILED);
            B_STARTOTHERROUTINE(NONE_6080_DARTHE, START);
            NPC_REFRESH(NONE_6080_DARTHE);
            TELEPORTNPCTOWP(0xda50, NONE_6080_DARTHE.WP);
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (3)) {
        if ((LOG_GETSTATUS(MIS_QA301)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA301), TOPIC_QA301, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA301, LOG_QA301_FAILED);
            if ((QA301_LEAVEGUILD_MOVER_01) == (TRUE)) {
                QA301_BLOOD();
            };
            if ((QA301_LEAVEGUILD_MOVER_02) == (TRUE)) {
                WLD_SENDTRIGGER("KM_QA301_CHESTS_01");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_02");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_03");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_04");
                WLD_SENDTRIGGER("KM_QA301_BARRELS_01");
            };
            if ((QA301_LEAVEGUILD_MOVER_03) == (TRUE)) {
                WLD_SENDTRIGGER("KM_QA301_CHESTS_01_B");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_02_B");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_03_B");
                WLD_SENDTRIGGER("KM_QA301_CHESTS_04_B");
                WLD_SENDTRIGGER("KM_QA301_BARRELS_01_B");
            };
            if ((QA301_LEAVEGUILD_MOVER_04) == (TRUE)) {
                QA301_FIREPLACE();
            };
            if ((QA301_LEAVEGUILD_MOVER_05) == (TRUE)) {
                WLD_SENDTRIGGER("KM_QA301_FIREPLACE_LIGHT");
            };
            if (HLP_ISVALIDNPC(BAU_11051_FARMER_QA301)) {
                if ((NPC_ISDEAD(BAU_11051_FARMER_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xdfd9);
                };
            };
            if (HLP_ISVALIDNPC(BAU_11052_FARMER_QA301)) {
                if ((NPC_ISDEAD(BAU_11052_FARMER_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xdfe0);
                };
            };
            if (HLP_ISVALIDNPC(BAU_11053_FARMER_QA301)) {
                if ((NPC_ISDEAD(BAU_11053_FARMER_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xdfe7);
                };
            };
            if (HLP_ISVALIDNPC(SLD_11054_ARAXOS_QA301)) {
                if ((NPC_ISDEAD(SLD_11054_ARAXOS_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xe023);
                };
            };
            if (HLP_ISVALIDNPC(SLD_11055_ARAXOS_QA301)) {
                if ((NPC_ISDEAD(SLD_11055_ARAXOS_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xe02a);
                };
            };
            if (HLP_ISVALIDNPC(SLD_11056_GRIZ)) {
                if ((NPC_ISDEAD(SLD_11056_GRIZ)) == (FALSE)) {
                    B_REMOVENPC(0xe16a);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_01)) {
                if ((NPC_ISDEAD(GOBBO_QA301_01)) == (FALSE)) {
                    B_REMOVENPC(0xc54c);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_02)) {
                if ((NPC_ISDEAD(GOBBO_QA301_02)) == (FALSE)) {
                    B_REMOVENPC(0xc54d);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_03)) {
                if ((NPC_ISDEAD(GOBBO_QA301_03)) == (FALSE)) {
                    B_REMOVENPC(0xc54e);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_04)) {
                if ((NPC_ISDEAD(GOBBO_QA301_04)) == (FALSE)) {
                    B_REMOVENPC(0xc53c);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_05)) {
                if ((NPC_ISDEAD(GOBBO_QA301_05)) == (FALSE)) {
                    B_REMOVENPC(0xc53d);
                };
            };
            if (HLP_ISVALIDNPC(GOBBO_QA301_06)) {
                if ((NPC_ISDEAD(GOBBO_QA301_06)) == (FALSE)) {
                    B_REMOVENPC(0xc3fe);
                };
            };
            if (HLP_ISVALIDNPC(SHADOWBEAST_QA301)) {
                if ((NPC_ISDEAD(SHADOWBEAST_QA301)) == (FALSE)) {
                    B_REMOVENPC(0xc663);
                };
            };
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (4)) {
        if ((LOG_GETSTATUS(MIS_QA302)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA302), TOPIC_QA302, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA302, LOG_QA302_FAILED);
            QA302_BRINGBACK_RANDOM_TRAPS();
            if ((QA302_LEAVEGUILD_MOVER_01) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xeff4, 0, -(1));
            };
            QA302_ERNESTORTN();
            if (HLP_ISVALIDNPC(BEAR_QA302)) {
                if ((NPC_ISDEAD(BEAR_QA302)) == (FALSE)) {
                    B_REMOVENPC(0xc48b);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_RAT_QA302_01)) {
                if ((NPC_ISDEAD(GIANT_RAT_QA302_01)) == (FALSE)) {
                    B_REMOVENPC(0xc528);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_RAT_QA302_02)) {
                if ((NPC_ISDEAD(GIANT_RAT_QA302_02)) == (FALSE)) {
                    B_REMOVENPC(0xc529);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_RAT_QA302_03)) {
                if ((NPC_ISDEAD(GIANT_RAT_QA302_03)) == (FALSE)) {
                    B_REMOVENPC(0xc52a);
                };
            };
            if (HLP_ISVALIDNPC(GIANT_RAT_QA302_04)) {
                if ((NPC_ISDEAD(GIANT_RAT_QA302_04)) == (FALSE)) {
                    B_REMOVENPC(0xc52b);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13496_QA302_BANDIT)) {
                if ((NPC_ISDEAD(NONE_13496_QA302_BANDIT)) == (FALSE)) {
                    B_REMOVENPC(0xd28f);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13497_QA302_BANDIT)) {
                if ((NPC_ISDEAD(NONE_13497_QA302_BANDIT)) == (FALSE)) {
                    B_REMOVENPC(0xd291);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13498_QA302_BANDIT)) {
                if ((NPC_ISDEAD(NONE_13498_QA302_BANDIT)) == (FALSE)) {
                    B_REMOVENPC(0xd293);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13499_QA302_BANDIT)) {
                if ((NPC_ISDEAD(NONE_13499_QA302_BANDIT)) == (FALSE)) {
                    B_REMOVENPC(0xd295);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13500_QA302_BANDIT)) {
                if ((NPC_ISDEAD(NONE_13500_QA302_BANDIT)) == (FALSE)) {
                    B_REMOVENPC(0xd29c);
                };
            };
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (5)) {
        if ((LOG_GETSTATUS(MIS_QA303)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA303), TOPIC_QA303, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA303, LOG_QA303_FAILED);
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (6)) {
        if ((LOG_GETSTATUS(MIS_QA304)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA304), TOPIC_QA304, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA304, LOG_QA304_LEAVEGUILD_FAILED);
            if ((QA304_LEAVEGUILD_MOVER_01) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf65e, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_02) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf640, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_03) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf646, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_04) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf64a, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_05) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf64e, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_06) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf652, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_07) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf656, 0, -(1));
            };
            if ((QA304_LEAVEGUILD_MOVER_08) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf65a, 0, -(1));
            };
            if (HLP_ISVALIDNPC(MIL_4003_HARBGUARD)) {
                if ((NPC_ISDEAD(MIL_4003_HARBGUARD)) == (FALSE)) {
                    B_STARTOTHERROUTINE(MIL_4003_HARBGUARD, "QA304_PATROL");
                };
            };
            if (HLP_ISVALIDNPC(MIL_4004_HARBGUARD)) {
                if ((NPC_ISDEAD(MIL_4004_HARBGUARD)) == (FALSE)) {
                    B_STARTOTHERROUTINE(MIL_4004_HARBGUARD, "QA304_PATROL");
                };
            };
            if (HLP_ISVALIDNPC(VLK_13504_FULKO)) {
                if ((NPC_ISDEAD(VLK_13504_FULKO)) == (FALSE)) {
                    B_REMOVENPC(0xd4e6);
                };
            };
            if (HLP_ISVALIDNPC(VLK_13507_CITIZEN)) {
                if ((NPC_ISDEAD(VLK_13507_CITIZEN)) == (FALSE)) {
                    B_REMOVENPC(0xd4fa);
                };
            };
            if (HLP_ISVALIDNPC(MIL_13506_SIGUND)) {
                if ((NPC_ISDEAD(MIL_13506_SIGUND)) == (FALSE)) {
                    B_REMOVENPC(0xd495);
                };
            };
            if (HLP_ISVALIDNPC(VLK_13505_WORKER)) {
                if ((NPC_ISDEAD(VLK_13505_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xd4ef);
                };
            };
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (7)) {
        if ((LOG_GETSTATUS(MIS_QA305)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA305), TOPIC_QA305, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA305, LOG_QA305_FAILED);
            QA305_HIDEEVENTS();
            if (HLP_ISVALIDNPC(SLD_13573_SOLIS)) {
                if ((NPC_ISDEAD(SLD_13573_SOLIS)) == (FALSE)) {
                    B_REMOVENPC(0xd322);
                };
            };
            B_STARTOTHERROUTINE(VLK_3018_OLAF, START);
            NPC_REFRESH(VLK_3018_OLAF);
            TELEPORTNPCTOWP(0xd500, VLK_3018_OLAF.WP);
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (8)) {
        if ((LOG_GETSTATUS(MIS_QA306)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA306), TOPIC_QA306, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA306, LOG_QA306_FAILED);
            if ((QA306_LEAVEGUILD_MOVER_01) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf710, 0, -(1));
            };
            if ((QA306_LEAVEGUILD_MOVER_02) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf703, 0, -(1));
            };
            if ((QA306_LEAVEGUILD_MOVER_03) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf6f9, 0, -(1));
            };
            B_STARTOTHERROUTINE(SLD_13711_BLOODWYN, START);
            NPC_REFRESH(SLD_13711_BLOODWYN);
            B_STARTOTHERROUTINE(SLD_13700_ARAXOS_GUARDMINE, START);
            NPC_REFRESH(SLD_13700_ARAXOS_GUARDMINE);
            B_STARTOTHERROUTINE(NONE_13709_WORKER, START);
            NPC_REFRESH(NONE_13709_WORKER);
            B_STARTOTHERROUTINE(NONE_13710_WORKER, START);
            NPC_REFRESH(NONE_13710_WORKER);
            B_STARTOTHERROUTINE(NONE_13728_WORKER, START);
            NPC_REFRESH(NONE_13728_WORKER);
            B_STARTOTHERROUTINE(NONE_13729_WORKER, START);
            NPC_REFRESH(NONE_13729_WORKER);
            B_STARTOTHERROUTINE(NONE_13730_WORKER, START);
            NPC_REFRESH(NONE_13730_WORKER);
            B_STARTOTHERROUTINE(NONE_13744_WORKER, START);
            NPC_REFRESH(NONE_13744_WORKER);
            B_STARTOTHERROUTINE(NONE_13745_WORKER, START);
            NPC_REFRESH(NONE_13745_WORKER);
            B_STARTOTHERROUTINE(NONE_13746_WORKER, START);
            NPC_REFRESH(NONE_13746_WORKER);
            B_STARTOTHERROUTINE(NONE_13747_WORKER, START);
            NPC_REFRESH(NONE_13747_WORKER);
            B_STARTOTHERROUTINE(NONE_13705_NIKOLT, START);
            NPC_REFRESH(NONE_13705_NIKOLT);
            B_STARTOTHERROUTINE(NONE_13725_WORKER, START);
            NPC_REFRESH(NONE_13725_WORKER);
            B_STARTOTHERROUTINE(NONE_13726_WORKER, START);
            NPC_REFRESH(NONE_13726_WORKER);
            if ((Q504_LOAFSVOLFZACKE) == (FALSE)) {
                B_STARTOTHERROUTINE(NONE_13706_TOLLEK, "GOLDMOB_GOAWAY");
                NPC_REFRESH(NONE_13706_TOLLEK);
                B_STARTOTHERROUTINE(NONE_13708_LOAFS, START);
                NPC_REFRESH(NONE_13708_LOAFS);
            };
            B_STARTOTHERROUTINE(SLD_13721_ARAXOS, START);
            NPC_REFRESH(SLD_13721_ARAXOS);
            MDL_REMOVEOVERLAYMDS(SLD_13721_ARAXOS, HUMANSDRUNKENMDS);
            MDL_APPLYOVERLAYMDS(SLD_13721_ARAXOS, HUMANSMILITIAMDS);
            if (HLP_ISVALIDNPC(NONE_13703_MURK)) {
                if ((NPC_ISDEAD(NONE_13703_MURK)) == (FALSE)) {
                    B_REMOVENPC(0xdc09);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13722_WORKER)) {
                if ((NPC_ISDEAD(NONE_13722_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xdc2c);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13723_WORKER)) {
                if ((NPC_ISDEAD(NONE_13723_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xdc2f);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13724_WORKER)) {
                if ((NPC_ISDEAD(NONE_13724_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xdc32);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13725_WORKER)) {
                if ((NPC_ISDEAD(NONE_13725_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xdc35);
                };
            };
            if (HLP_ISVALIDNPC(NONE_13726_WORKER)) {
                if ((NPC_ISDEAD(NONE_13726_WORKER)) == (FALSE)) {
                    B_REMOVENPC(0xdc3d);
                };
            };
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (9)) {
        if ((LOG_GETSTATUS(MIS_QA401)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_QA401), TOPIC_QA401, LOG_FAILED);
            B_LOGENTRY(TOPIC_QA401, LOG_QA401_FAILED);
            QA401_REMOVENPC();
            QA401_OTMARWHATDO();
            QA401_REMOVEBIGCRATES();
            if ((QA401_PABLOSEWERSSPAWN) >= (1)) {
                QA401_PABLOSEWERSSPAWN = 3;
            };
            FF_REMOVE(0xf5d7);
            if ((QA401_LEAVEGUILD_MOVER_01) == (TRUE)) {
                WLD_SENDTRIGGER("QA401_MOVER_BRIDGE_FIRE");
            };
            if ((QA401_LEAVEGUILD_MOVER_02) == (TRUE)) {
                FF_APPLYONCEEXTGT(0xf5c0, 0, -(1));
            };
            if ((Q206_SPAREPABLO) == (TRUE)) {
                B_STARTOTHERROUTINE(NONE_7004_PABLO, "ARAXOS");
                NPC_REFRESH(NONE_7004_PABLO);
                TELEPORTNPCTOWP(0xd93f, NONE_7004_PABLO.WP);
            };
            if (HLP_ISVALIDNPC(BDT_13558_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13558_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8ef);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13559_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13559_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8f2);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13560_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13560_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8f5);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13561_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13561_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8f8);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13562_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13562_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8fb);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13563_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13563_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd8fe);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13564_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13564_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd901);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13565_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13565_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd904);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13566_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13566_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd907);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13567_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13567_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd90a);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13568_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13568_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd90d);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13569_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13569_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd910);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13571_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13571_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd916);
                };
            };
            if (HLP_ISVALIDNPC(BDT_13572_SMUGGLER)) {
                if ((NPC_ISDEAD(BDT_13572_SMUGGLER)) == (FALSE)) {
                    B_REMOVENPC(0xd91b);
                };
            };
            if (HLP_ISVALIDNPC(NONE_7002_GETORYX)) {
                if ((NPC_ISDEAD(NONE_7002_GETORYX)) == (FALSE)) {
                    B_REMOVENPC(0xd936);
                };
            };
            if (HLP_ISVALIDNPC(NONE_7003_NIZAR)) {
                if ((NPC_ISDEAD(NONE_7003_NIZAR)) == (FALSE)) {
                    B_REMOVENPC(0xd93a);
                };
            };
            if (HLP_ISVALIDNPC(NONE_7005_HEKTOR)) {
                if ((NPC_ISDEAD(NONE_7005_HEKTOR)) == (FALSE)) {
                    B_REMOVENPC(0xd94b);
                };
            };
            if (HLP_ISVALIDNPC(SLD_13548_ARAXOS)) {
                if ((NPC_ISDEAD(SLD_13548_ARAXOS)) == (FALSE)) {
                    B_REMOVENPC(0xda46);
                };
            };
            if (HLP_ISVALIDNPC(SLD_13549_ARAXOS)) {
                if ((NPC_ISDEAD(SLD_13549_ARAXOS)) == (FALSE)) {
                    B_REMOVENPC(0xd950);
                };
            };
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (10)) {
        if ((LOG_GETSTATUS(MIS_KQ403)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_KQ403), TOPIC_KQ403, LOG_FAILED);
            B_LOGENTRY(TOPIC_KQ403, LOG_KQ403_FAILED);
            if ((KQ403_LEAVEGUILD_MOVER_01) == (TRUE)) {
                WLD_SENDTRIGGER("KQ403_BONE_01");
                WLD_SENDTRIGGER("KQ403_BONE_02");
                WLD_SENDTRIGGER("KQ403_BONE_03");
                WLD_SENDTRIGGER("KQ403_HOUSE_01");
            };
            if ((KQ403_LEAVEGUILD_MOVER_02) == (TRUE)) {
                WLD_SENDTRIGGER("KQ403_BLOOD");
                WLD_SENDTRIGGER("KQ403_HOUSE_02");
            };
            if ((KQ403_LEAVEGUILD_MOVER_03) == (TRUE)) {
                WLD_SENDTRIGGER("KQ403_SWORD");
                WLD_SENDTRIGGER("KQ403_HOUSE_03");
            };
            KQ403_DECISION = 2;
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (11)) {
        if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) {
            LOG_SETSTATUS(_@(MIS_SQ503), TOPIC_SQ503, LOG_FAILED);
            B_LOGENTRY(TOPIC_SQ503, LOG_SQ503_VZ_FAIL);
            if ((NPC_ISDEAD(MIL_13523_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeafe);
            };
            if ((NPC_ISDEAD(MIL_13524_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeb02);
            };
            if ((NPC_ISDEAD(MIL_13525_MILITIA)) == (FALSE)) {
                B_REMOVENPC(0xeb06);
            };
            if ((NPC_ISDEAD(SLD_13526_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb47);
            };
            if ((NPC_ISDEAD(SLD_13527_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb4b);
            };
            if ((NPC_ISDEAD(SLD_13528_ARAXOS)) == (FALSE)) {
                B_REMOVENPC(0xeb4f);
            };
            if ((Q307_POISONWAY) != (1)) {
                if (NPC_KNOWSINFO(HERO, 0x14ce7)) {
                    B_STARTOTHERROUTINE(VLK_6126_LENA, "AFTERQUEST");
                    NPC_REFRESH(VLK_6126_LENA);
                    TELEPORTNPCTOWP(0xe5d3, VLK_6126_LENA.WP);
                } else {
                    B_STARTOTHERROUTINE(VLK_6126_LENA, START);
                    NPC_REFRESH(VLK_6126_LENA);
                    TELEPORTNPCTOWP(0xe5d3, VLK_6126_LENA.WP);
                } else {
                    SQ507_STARTINGPOINT = 0;
                };
            };
            RESTOREROUTINE_WINSTAN();
            RESTOREROUTINE_GAROS();
        };
    };
    if ((REMOVEARAXOSARMOR_QUESTS_COUNT) == (12)) {
        RESTOREROUTINE_CARAMON();
        RESTOREROUTINE_GAROS();
        RESTOREROUTINE_ADELARD();
        RESTOREROUTINE_LORENZO();
        RESTOREROUTINE_SUNDER();
        RESTOREROUTINE_BEINARD();
        TELEPORTNPCTOWP(0xcb1c, SLD_1009_CARAMON.WP);
        TELEPORTNPCTOWP(0xcb49, SLD_1017_GAROS.WP);
        TELEPORTNPCTOWP(0xcb0a, SLD_1000_ADELARD.WP);
        TELEPORTNPCTOWP(0xcb64, SLD_5000_LORENZO.WP);
        TELEPORTNPCTOWP(0xe176, SLD_5002_SUNDER.WP);
        TELEPORTNPCTOWP(0xd778, VLK_6283_BEINARD.WP);
        if (HLP_ISVALIDNPC(NONE_7004_PABLO)) {
            if ((NPC_ISDEAD(NONE_7004_PABLO)) == (FALSE)) {
                B_STARTOTHERROUTINE(NONE_7004_PABLO, "ARAXOS");
                NPC_REFRESH(NONE_7004_PABLO);
                TELEPORTNPCTOWP(0xd93f, NONE_7004_PABLO.WP);
            };
        };
    };
}

var int REMOVEARAXOSARMOR_QUESTS_APPLY.REMOVEARAXOSARMOR_QUESTS_COUNT = 0;
func void B_REMOVEMILITIAARMOR_FULL() {
    GAMESERVICES_UNLOCKACHIEVEMENT(ACH_11);
    MARVIN_LOSTGUILDMILITA = TRUE;
    if ((HERO.GUILD) == (GIL_MIL)) {
        HERO.GUILD = GIL_VLK;
    };
    if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_MIL)) {
        AI_UNEQUIPARMOR(HERO);
    };
    NPC_REMOVEALLGUILDARMORS(HERO, GIL_MIL);
    MARVIN_MILITIASPECIALIZATION = MILITIA_SPECIALIZATION_NONE;
    B_REMOVEMILITIAARMOR_QUESTS();
}

func void B_REMOVEARAXOSARMOR_FULL() {
    MARVIN_LOSTGUILDARAXOS = TRUE;
    if ((HERO.GUILD) == (GIL_SLD)) {
        HERO.GUILD = GIL_VLK;
    };
    if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_SLD)) {
        AI_UNEQUIPARMOR(HERO);
    };
    NPC_REMOVEALLGUILDARMORS(HERO, GIL_SLD);
    MARVIN_ARAXOSSPECIALIZATION = ARAXOS_SPECIALIZATION_NONE;
    B_REMOVEARAXOSARMOR_QUESTS();
}

