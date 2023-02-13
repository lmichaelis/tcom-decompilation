func void CQ004_GOTOBARRACK() {
    B_STARTOTHERROUTINE(MIL_4048_CITYGUARD, TOT);
    NPC_REFRESH(MIL_4048_CITYGUARD);
    B_STARTOTHERROUTINE(MIL_4049_CITYGUARD, TOT);
    NPC_REFRESH(MIL_4049_CITYGUARD);
    B_STARTOTHERROUTINE(MIL_4044_SALL, "CQ004_BARRACK");
    CQ004_SALL_RTNCHECK = 1;
    NPC_REFRESH(MIL_4044_SALL);
    B_STARTOTHERROUTINE(VLK_6231_RECON, "CQ004_BARRACK");
    NPC_REFRESH(VLK_6231_RECON);
    B_STARTOTHERROUTINE(VLK_6232_VEIGO, "CQ004_BARRACK");
    NPC_REFRESH(VLK_6232_VEIGO);
    NPC_EXCHANGEROUTINE(VLK_6230_KETH, "CQ004_BARRACKGUIDE_01");
}

func void CQ004_SALLTRIALOG_END() {
    CQ004_RECONANDVEIGOCANTALK = TRUE;
    NPC_EXCHANGEROUTINE(VLK_6230_KETH, LEAN);
    NPC_EXCHANGEROUTINE(MIL_4044_SALL, START);
}

func void CQ004_VEIGORECONTRIALOG_END() {
    NPC_EXCHANGEROUTINE(VLK_6231_RECON, "Tavern");
    NPC_EXCHANGEROUTINE(VLK_6232_VEIGO, "Tavern");
    B_STARTOTHERROUTINE(VLK_6230_KETH, "FOLLOW");
    NPC_REFRESH(VLK_6230_KETH);
}

func void CQ004_BARRACKFINAL_PREPARE() {
    B_STARTOTHERROUTINE(MIL_4000_RODERICH, "CQ004_BARRACKJUDGMENT");
    CQ004_RODERICH_RTNCHECK = 1;
    NPC_REFRESH(MIL_4000_RODERICH);
    B_STARTOTHERROUTINE(VLK_6232_VEIGO, "CQ004_BARRACKJUDGMENT");
    NPC_REFRESH(VLK_6232_VEIGO);
    B_STARTOTHERROUTINE(VLK_6231_RECON, "CQ004_BARRACKJUDGMENT");
    NPC_REFRESH(VLK_6231_RECON);
    B_STARTOTHERROUTINE(VLK_6230_KETH, "CQ004_BARRACKJUDGMENT");
    NPC_REFRESH(VLK_6230_KETH);
    B_STARTOTHERROUTINE(MIL_4044_SALL, "CQ004_BARRACKJUDGMENT");
    CQ004_SALL_RTNCHECK = 2;
    NPC_REFRESH(MIL_4044_SALL);
    B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, "Judgment");
    NPC_REFRESH(MIL_4047_PRISONGUARD);
}

func void CQ004_FINISH() {
    B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, START);
    NPC_REFRESH(MIL_4047_PRISONGUARD);
    B_STARTOTHERROUTINE(MIL_4000_RODERICH, START);
    NPC_REFRESH(MIL_4000_RODERICH);
    RESTOREROUTINE_SALL();
    B_STARTOTHERROUTINE(VLK_6233_ALDER, START);
    NPC_REFRESH(VLK_6233_ALDER);
}

func void CQ004_WORKERSGOTOTAVERN_AFTERQUEST() {
    NPC_EXCHANGEROUTINE(VLK_6232_VEIGO, "Tavern");
    B_STARTOTHERROUTINE(VLK_6231_RECON, "Tavern");
    NPC_REFRESH(VLK_6231_RECON);
}

func void CQ004_FINISH_PRISON() {
    FF_APPLYONCEEXT(62677, 75, 4);
}

func void CQ004_FINISH_PRISON_APPLY() {
    var int CQ004_FINISH_PRISON_COUNT;
    CQ004_FINISH_PRISON_COUNT = (CQ004_FINISH_PRISON_COUNT) + (1);
    if ((CQ004_FINISH_PRISON_COUNT) == (4)) {
        B_STARTOTHERROUTINE(VLK_6233_ALDER, START);
        NPC_REFRESH(VLK_6233_ALDER);
        B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, "GoToPrison");
        NPC_REFRESH(MIL_4047_PRISONGUARD);
        B_STARTOTHERROUTINE(VLK_6232_VEIGO, "GoToPrison");
        NPC_REFRESH(VLK_6232_VEIGO);
        B_STARTOTHERROUTINE(VLK_6233_ALDER, START);
        NPC_REFRESH(VLK_6233_ALDER);
        B_STARTOTHERROUTINE(VLK_6231_RECON, "GoToPrison");
        NPC_REFRESH(VLK_6231_RECON);
        B_STARTOTHERROUTINE(MIL_4044_SALL, START);
        NPC_REFRESH(MIL_4044_SALL);
        B_STARTOTHERROUTINE(MIL_4000_RODERICH, START);
        NPC_REFRESH(MIL_4000_RODERICH);
        MDL_APPLYOVERLAYMDS(VLK_6232_VEIGO, HUMANSTIREDMDS);
        MDL_APPLYOVERLAYMDS(VLK_6231_RECON, HUMANSTIREDMDS);
    };
}

func void CQ004_RECONANDVEIGOPRISONTIME() {
    if (((CQ004_RESULT) == (2)) || ((CQ004_RESULT) == (0))) {
        PRINTD("Recon i Veigo w więzieniu!");
        B_STARTOTHERROUTINE(VLK_6232_VEIGO, "Prison");
        NPC_REFRESH(VLK_6232_VEIGO);
        TELEPORTNPCTOWP(55134, VLK_6232_VEIGO.WP);
        B_STARTOTHERROUTINE(VLK_6231_RECON, "Prison");
        NPC_REFRESH(VLK_6231_RECON);
        TELEPORTNPCTOWP(55124, VLK_6231_RECON.WP);
    };
    if ((CQ004_RESULT) == (1)) {
        PRINTD("Alder w więzieniu!");
        B_STARTOTHERROUTINE(VLK_6233_ALDER, "CQ004_PRISON");
        NPC_REFRESH(VLK_6233_ALDER);
        TELEPORTNPCTOWP(55145, VLK_6233_ALDER.WP);
    };
    B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, START);
    NPC_REFRESH(MIL_4047_PRISONGUARD);
}

func void CQ004_CHANGEDOORRECON() {
    FF_APPLYONCEEXTGT(62681, 0, -(1));
}

func void CQ004_CHANGEDOORRECON_APPLY() {
    var ZCMOVER MOVER2;
    var int MOVPTR2;
    var ZCMOVER MOVER1;
    var int MOVPTR1;
    var int CQ004_CHANGEDOORRECON_APPLY_COUNT;
    if ((CQ004_CHANGEDOORRECON_APPLY_COUNT) == (0)) {
        PRINTD("Rozpoczynam - CQ004_ChangeDoorRecon_Apply");
        MOVPTR1 = MEM_SEARCHVOBBYNAME("KM_CQ004_RECONDOOR");
        MOVER1 = MEM_PTRTOINST(MOVPTR1);
        MOVPTR2 = MEM_SEARCHVOBBYNAME("KM_CQ004_NORMALDOOR");
        MOVER2 = MEM_PTRTOINST(MOVPTR2);
        CHANGEVOBCOLLISION("CQ004_RECONDOOR", FALSE, FALSE, FALSE, TRUE);
        CHANGEVOBCOLLISION("CQ004_NORMALDOOR", FALSE, FALSE, FALSE, TRUE);
        WLD_SENDTRIGGER("KM_CQ004_RECONDOOR");
        WLD_SENDTRIGGER("KM_CQ004_NORMALDOOR");
        CQ004_CHANGEDOORRECON_APPLY_COUNT = 1;
    };
    if (((((MOVER1.MOVERSTATE) != (MOVER_STATE_OPENING)) && ((MOVER1.MOVERSTATE) != (MOVER_STATE_CLOSING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_OPENING))) && ((MOVER2.MOVERSTATE) != (MOVER_STATE_CLOSING))) {
        PRINTD("Skończyłem - CQ004_ChangeDoorRecon_Apply");
        CHANGEVOBCOLLISION("CQ004_RECONDOOR", TRUE, TRUE, TRUE, TRUE);
        CHANGEVOBCOLLISION("CQ004_NORMALDOOR", TRUE, TRUE, TRUE, TRUE);
        FF_REMOVE(62681);
        CQ004_CHANGEDOORRECON_APPLY_COUNT = 0;
    };
}

