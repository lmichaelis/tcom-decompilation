func void EVENTSMANAGER_CQ004() {
    var int CQ004_CHANGEVEIGORTN;
    var int CQ004_CHANGERECONRTN;
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_RUNNING)) {
        if ((((NPC_ISINSTATE(VLK_6230_KETH, 61599)) == (FALSE)) && ((NPC_ISINSTATE(VLK_6231_RECON, 61599)) == (FALSE))) && ((NPC_ISINSTATE(VLK_6232_VEIGO, 61599)) == (FALSE))) {
            if ((NPC_KNOWSINFO(HERO, 75354)) == (FALSE)) {
                if ((CQ004_KETHGUIDESTATUS) == (1)) {
                    if ((NPC_GETDISTTOWP(VLK_6230_KETH, "SLUMS_PATH_07")) <= (700)) {
                        PRINTD("Keth zmiana RTN");
                        CQ004_KETHGUIDESTATUS = 2;
                        B_STARTOTHERROUTINE(VLK_6230_KETH, "CQ004_BARRACKGUIDE_02");
                        NPC_REFRESH(VLK_6230_KETH);
                    };
                } else if ((CQ004_KETHGUIDESTATUS) == (2)) {
                    if ((NPC_GETDISTTOWP(VLK_6230_KETH, "SLUMS_PATH_21")) <= (700)) {
                        PRINTD("Keth zmiana RTN");
                        CQ004_KETHGUIDESTATUS = 3;
                        B_STARTOTHERROUTINE(VLK_6230_KETH, "CQ004_BARRACKGUIDE_03");
                        NPC_REFRESH(VLK_6230_KETH);
                    };
                } else if ((CQ004_KETHGUIDESTATUS) == (3)) {
                    if ((NPC_GETDISTTOWP(VLK_6230_KETH, "PARTM3_PATH_02")) <= (500)) {
                        CQ004_KETHGUIDESTATUS = 4;
                        B_STARTOTHERROUTINE(VLK_6230_KETH, "CQ004_BARRACKIDLE");
                        NPC_REFRESH(VLK_6230_KETH);
                        B_STARTOTHERROUTINE(VLK_6231_RECON, "CQ004_BARRACKIDLE");
                        NPC_REFRESH(VLK_6231_RECON);
                        B_STARTOTHERROUTINE(VLK_6232_VEIGO, "CQ004_BARRACKIDLE");
                        NPC_REFRESH(VLK_6232_VEIGO);
                        PRINTD("Keth, Recon i Vegio zmienili RTN!");
                    };
                };
                if ((CQ004_KETHGUIDESTATUS) != (4)) {
                    if ((CQ004_CHANGERECONRTN) == (FALSE)) {
                        if ((NPC_GETDISTTOWP(VLK_6231_RECON, "SLUMS_PATH_21")) <= (700)) {
                            PRINTD("Recon zmiana RTN");
                            CQ004_CHANGERECONRTN = TRUE;
                            B_STARTOTHERROUTINE(VLK_6231_RECON, "CQ004_BARRACK_02");
                            NPC_REFRESH(VLK_6231_RECON);
                        };
                    };
                    if ((CQ004_CHANGEVEIGORTN) == (FALSE)) {
                        if ((NPC_GETDISTTOWP(VLK_6232_VEIGO, "SLUMS_PATH_21")) <= (700)) {
                            PRINTD("Veigo zmiana RTN");
                            CQ004_CHANGEVEIGORTN = TRUE;
                            B_STARTOTHERROUTINE(VLK_6232_VEIGO, "CQ004_BARRACK_02");
                            NPC_REFRESH(VLK_6232_VEIGO);
                        };
                    };
                };
            };
        };
        if ((CQ004_RECONCHESTSTATUS) == (0)) {
            if (MOB_HASITEMS("RECON_CHEST", 37157)) {
                CQ004_RECONCHESTSTATUS = 1;
                B_LOGENTRY(TOPIC_CQ004, LOG_CQ004_RECONCHEST);
            };
        };
        if ((((CQ004_KETHCHEAT) == (TRUE)) && ((CQ004_ALDERCHANGERTN) == (0))) && ((NPC_ISINSTATE(VLK_6233_ALDER, 61599)) == (FALSE))) {
            if ((((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM1_PATH_97")) <= (700)) || ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_PATH_29")) <= (700))) || ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_PATH_137")) <= (700))) {
                if ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM1_PATH_97")) <= (700)) {
                    B_STARTOTHERROUTINE(VLK_6233_ALDER, "CQ004_WAITBARRACK01");
                    NPC_REFRESH(VLK_6233_ALDER);
                } else if ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_PATH_29")) <= (700)) {
                    B_STARTOTHERROUTINE(VLK_6233_ALDER, "CQ004_WAITBARRACK02");
                    NPC_REFRESH(VLK_6233_ALDER);
                } else if ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_PATH_137")) <= (700)) {
                    B_STARTOTHERROUTINE(VLK_6233_ALDER, "CQ004_WAITBARRACK03");
                    NPC_REFRESH(VLK_6233_ALDER);
                };
                CQ004_ALDERCHANGERTN = 1;
                PRINTD("Alder zmieni³ RTN!");
                AI_OUTPUTSVM(VLK_6233_ALDER, VLK_6233_ALDER, "DIA_Alder_CQ004_WAITBarrack_03_00");
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_SUCCESS)) {
        if ((CQ004_RECONANDVEIGOPRISON) == (FALSE)) {
            if ((CQ004_RESULT) == (2)) {
                if (NPC_KNOWSINFO(HERO, 67000)) {
                    if (((HLP_ISVALIDNPC(MIL_4047_PRISONGUARD)) && (HLP_ISVALIDNPC(VLK_6231_RECON))) && (HLP_ISVALIDNPC(VLK_6232_VEIGO))) {
                        if ((((NPC_GETDISTTOWP(MIL_4047_PRISONGUARD, "PARTM3_PRISON_06")) <= (500)) && ((NPC_GETDISTTOWP(VLK_6232_VEIGO, "PARTM3_PRISON_07")) <= (500))) && ((NPC_GETDISTTOWP(VLK_6231_RECON, "PARTM3_PRISON_08")) <= (500))) {
                            CQ004_RECONANDVEIGOPRISONTIME();
                            CQ004_RECONANDVEIGOPRISON = TRUE;
                        };
                    };
                };
            } else if ((CQ004_RESULT) == (1)) {
                if (((NPC_GETDISTTOWP(MIL_4047_PRISONGUARD, "PARTM3_PRISON_06")) <= (500)) && ((NPC_GETDISTTOWP(VLK_6233_ALDER, "PARTM3_PRISON_07")) <= (500))) {
                    CQ004_RECONANDVEIGOPRISONTIME();
                    CQ004_RECONANDVEIGOPRISON = TRUE;
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_CQ004)) == (LOG_FAILED)) {
        if ((CQ004_ALDERFAILED) == (TRUE)) {
            if ((CQ004_ALDERFAILED_DAY) <= ((WLD_GETDAY()) - (1))) {
                CQ004_ALDERFAILED = 2;
                CQ004_RECONANDVEIGOPRISONTIME();
                B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, START);
                B_STARTOTHERROUTINE(VLK_6230_KETH, TOT);
                RESTOREROUTINE_SALL();
            };
        };
    };
}

