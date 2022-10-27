instance DIA_NOTGER_Q602_EXIT(C_INFO) {
    NPC = 0xe91b;
    NR = 999;
    CONDITION = DIA_NOTGER_Q602_EXIT_CONDITION;
    INFORMATION = DIA_NOTGER_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NOTGER_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NOTGER_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NOTGER_Q602_ULRYK(C_INFO) {
    NPC = 0xe91b;
    NR = 1;
    CONDITION = DIA_NOTGER_Q602_ULRYK_CONDITION;
    INFORMATION = DIA_NOTGER_Q602_ULRYK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NOTGER_Q602_ULRYK_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_FINALBATTLE_STARTFIGHT) >= (11))) {
        if ((((NPC_GETDISTTOWP(KDW_215_NOTGER_Q602, "PARTE5_NOTGER")) <= (400)) && ((NPC_GETDISTTOWP(MIL_4000_RODERICH_Q602, "PARTE5_RODERICH")) <= (400))) && ((NPC_GETDISTTOWP(NONE_15_ULRYK_Q602, "PARTE5_ULRYK")) <= (400))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NOTGER_Q602_ULRYK_INFO() {
    Q602_CANALSUNLOCKED = 1;
    MOB_CHANGEFOCUSNAME("Q602_CANALS_KICKDOOR", "MOBNAME_KICK");
    TRIA_INVITE(MIL_4000_RODERICH_Q602);
    TRIA_INVITE(NONE_15_ULRYK_Q602);
    if ((NPC_GETDISTTONPC(SELF, KDW_203_RIORDIAN_Q602)) <= (450)) {
        TRIA_INVITE(KDW_203_RIORDIAN_Q602);
    };
    TRIA_START();
    AI_LOOKATNPC(OTHER, SELF);
    AI_LOOKATNPC(SELF, OTHER);
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_15_ULRYK_Q602);
    AI_TURNTONPC(SELF, NONE_15_ULRYK_Q602);
    AI_TURNTONPC(MIL_4000_RODERICH_Q602, NONE_15_ULRYK_Q602);
    AI_FUNCTION(SELF, 0x160cb);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_05");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH_Q602);
    AI_TURNTONPC(SELF, NONE_15_ULRYK_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_06");
    AI_TURNTONPC(SELF, MIL_4000_RODERICH_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_07");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER_Q602);
    AI_FUNCTION(SELF, 0x160cc);
    AI_TURNTONPC(HERO, SELF);
    AI_GOTOWP(KDW_215_NOTGER_Q602, "PARTM5_CITYHALL_14");
    AI_WAIT(KDW_215_NOTGER_Q602, 0x3f800000);
    AI_TURNTONPC(SELF, MIL_4000_RODERICH_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_08");
    AI_FUNCTION(SELF, 0x160cd);
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH_Q602);
    AI_TURNTONPC(SELF, MIL_4000_RODERICH_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_09");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_10");
    TRIA_WAIT();
    TRIA_NEXT(MIL_4000_RODERICH_Q602);
    AI_FUNCTION(SELF, 0x160ce);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_11");
    AI_TURNTONPC(SELF, NONE_15_ULRYK_Q602);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_03_14");
    INFO_CLEARCHOICES(0x160c3);
    INFO_ADDCHOICE(0x160c3, "We're discussing it here, and the Usurer is running away.", 0x160c6);
}

func void DIA_NOTGER_Q602_ULRYK_VOLKER() {
    AI_FUNCTION(SELF, 0x160cf);
    AI_OUTPUT(OTHER, SELF, "DIA_Notger_Q602_ULRYK_Volker_15_01");
    if (NPC_KNOWSINFO(OTHER, 0x102b1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_Volker_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_Volker_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Notger_Q602_ULRYK_Volker_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_Volker_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_Volker_03_06");
    INFO_CLEARCHOICES(0x160c3);
    INFO_ADDCHOICE(0x160c3, "If he resists, I may have no choice.", 0x160ca);
    INFO_ADDCHOICE(0x160c3, "Understood.", 0x160c9);
}

func void DIA_NOTGER_Q602_FINISHTRIALOG() {
    Q602_FINALBATTLE_STARTFIGHT = 12;
    AI_STOPLOOKAT(OTHER);
    AI_STOPLOOKAT(SELF);
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x160c3);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x160c8);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN_Q602, "Q602_AFTERULRYK");
    NPC_REFRESH(KDW_203_RIORDIAN_Q602);
    TELEPORTNPCTOWP(0xe901, KDW_203_RIORDIAN_Q602.WP);
    WLD_INSERTNPC(0xe981, "PARTM5_FINALWAR_WOUNDED");
}

func void NOTGER_Q602_CHANGERTN() {
    B_STARTOTHERROUTINE(MIL_4000_RODERICH_Q602, "Q602_AFTERULRYK");
    NPC_REFRESH(MIL_4000_RODERICH_Q602);
    B_STARTOTHERROUTINE(NONE_15_ULRYK_Q602, "Q602_AFTERULRYK");
    NPC_REFRESH(NONE_15_ULRYK_Q602);
    NONE_15_ULRYK_Q602.FLAGS = 2;
    if ((NONE_15_ULRYK_Q602.ATTRIBUTE[0]) != (NONE_15_ULRYK_Q602.ATTRIBUTE[1])) {
        NONE_15_ULRYK_Q602.ATTRIBUTE[0] = NONE_15_ULRYK_Q602.ATTRIBUTE[1];
    };
    B_STARTOTHERROUTINE(KDW_215_NOTGER_Q602, "Q602_AFTERULRYK");
    NPC_REFRESH(KDW_215_NOTGER_Q602);
    HERO.AIVAR[4] = FALSE;
    FF_APPLYONCEEXT(0x160d2, 75, 4);
}

func void DIA_NOTGER_Q602_ULRYK_VOLKER_YES() {
    AI_FUNCTION(SELF, 0x160cf);
    AI_OUTPUT(OTHER, SELF, "DIA_Notger_Q602_ULRYK_Yes_15_01");
    AI_FUNCTION(SELF, 0x160d0);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_Yes_03_02");
    DIA_NOTGER_Q602_FINISHTRIALOG();
}

func void DIA_NOTGER_Q602_ULRYK_VOLKER_NO() {
    AI_FUNCTION(SELF, 0x160cf);
    AI_OUTPUT(OTHER, SELF, "DIA_Notger_Q602_ULRYK_No_15_01");
    AI_FUNCTION(SELF, 0x160d0);
    AI_OUTPUT(SELF, OTHER, "DIA_Notger_Q602_ULRYK_No_03_02");
    DIA_NOTGER_Q602_FINISHTRIALOG();
}

func void Q602_NOTGER_CAMERA_01() {
    TELEPORTNPCTOWP(0x71b, "PARTE5_HERO_02");
    WLD_SENDTRIGGER("Q602_ULRYK_02");
    WLD_SENDUNTRIGGER("Q602_ULRYK_01");
}

func void Q602_NOTGER_CAMERA_02() {
    WLD_SENDTRIGGER("Q602_ULRYK_03");
    WLD_SENDUNTRIGGER("Q602_ULRYK_02");
}

func void Q602_NOTGER_CAMERA_03() {
    WLD_SENDTRIGGER("Q602_AFTERULRYK_18");
}

func void Q602_NOTGER_CAMERA_04() {
    WLD_SENDTRIGGER("Q602_AFTERULRYK_19");
}

func void Q602_NOTGER_CAMERA_05() {
    WLD_SENDTRIGGER("Q602_AFTERULRYK_20");
}

func void Q602_NOTGER_CAMERA_06() {
    WLD_SENDTRIGGER("Q602_AFTERULRYK_21");
}

func void Q602_NOTGER_CAMERA_07() {
    WLD_SENDTRIGGER("Q602_AFTERULRYK_22");
}

func void Q602_NOTGER_CAMERA_APPLY() {
    Q602_NOTGER_CAMERA_COUNT = (Q602_NOTGER_CAMERA_COUNT) + (1);
    if ((Q602_NOTGER_CAMERA_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_01");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_02");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_03");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_04");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_05");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_06");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_07");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_08");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_09");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_10");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_11");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_12");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_13");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_14");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_15");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_16");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_17");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_18");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_19");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_20");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_21");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_22");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_23");
        WLD_SENDUNTRIGGER("Q602_AFTERULRYK_24");
        WLD_SENDUNTRIGGER("Q602_ULRYK_01");
        WLD_SENDUNTRIGGER("Q602_ULRYK_02");
        WLD_SENDUNTRIGGER("Q602_ULRYK_03");
        DIACAM_ENABLE();
        HERO.AIVAR[4] = FALSE;
    };
}

var int Q602_NOTGER_CAMERA_APPLY.Q602_NOTGER_CAMERA_COUNT = 0;