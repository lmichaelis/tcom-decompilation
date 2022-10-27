instance DIA_PRIOR_EXIT(C_INFO) {
    NPC = 0xdd1f;
    NR = 999;
    CONDITION = DIA_PRIOR_EXIT_CONDITION;
    INFORMATION = DIA_PRIOR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PRIOR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PRIOR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PRIOR_Q502_CUTSCENE(C_INFO) {
    NPC = 0xdd1f;
    NR = 1;
    CONDITION = DIA_PRIOR_Q502_CUTSCENE_CONDITION;
    INFORMATION = DIA_PRIOR_Q502_CUTSCENE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PRIOR_Q502_CUTSCENE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1390f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PRIOR_STOPMAGESTAND() {
    AI_SETWALKMODE(KDW_215_NOTGER, NPC_RUN);
    AI_SETWALKMODE(KDW_216_INGOLF, NPC_RUN);
    AI_SETWALKMODE(KDW_214_BADULF, NPC_RUN);
    AI_SETWALKMODE(KDW_301_CUSTO, NPC_RUN);
    AI_SETWALKMODE(NONE_202_KESSEL, NPC_RUN);
}

func void PRIOR_STOPMAGESTANDV2() {
    AI_SETWALKMODE(KDW_215_NOTGER, NPC_RUN);
    AI_SETWALKMODE(NONE_202_KESSEL, NPC_RUN);
}

func void DIA_PRIOR_Q502_CUTSCENE_INFO() {
    TRIA_INVITE(KDW_215_NOTGER);
    TRIA_INVITE(KDW_216_INGOLF);
    TRIA_INVITE(KDW_214_BADULF);
    TRIA_INVITE(KDW_301_CUSTO);
    TRIA_INVITE(NONE_202_KESSEL);
    TRIA_START();
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_03_01");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    PRIOR_STOPMAGESTAND();
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_03_02");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_03_03");
    INFO_CLEARCHOICES(0x13695);
    INFO_ADDCHOICE(0x13695, DIALOG_BESILENT, 0x1369b);
    INFO_ADDCHOICE(0x13695, "My name is Marvin.", 0x1369c);
    TELEPORTNPCTOWP(0x71b, "PART8_CHURCH_STAND_01");
    TELEPORTNPCTOWP(0xdd70, "PART8_CHURCH_STAND_10");
}

func void DIA_PRIOR_Q502_CUTSCENE_NEXT() {
    PRIOR_STOPMAGESTAND();
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_WAITTILLEND(SELF, OTHER);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_NoTell_03_01");
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_NoTell_03_02");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_FUNCTION(SELF, 0x136a4);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_03");
    AI_FUNCTION(SELF, 0x136a5);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_07");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136a6);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_09");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136a7);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_11");
    AI_FUNCTION(SELF, 0x136a8);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Next_03_12");
    INFO_CLEARCHOICES(0x13695);
    INFO_ADDCHOICE(0x13695, "I worked with the Usurer for a while.", 0x1369e);
    INFO_ADDCHOICE(0x13695, DIALOG_BESILENT, 0x1369f);
}

func void DIA_PRIOR_Q502_CUTSCENE_NOTELL() {
    AI_FUNCTION(SELF, 0x136a3);
    DIA_PRIOR_Q502_CUTSCENE_NEXT();
}

func void DIA_PRIOR_Q502_CUTSCENE_TELL() {
    AI_FUNCTION(SELF, 0x136a3);
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Tell_15_01");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Tell_03_02");
    DIA_PRIOR_Q502_CUTSCENE_NEXT();
}

func void DIA_PRIOR_Q502_CUTSCENE_ABOUTVOLKER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_03");
    if ((Q308_WHOWILLDIE) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_04");
    };
    if ((Q308_WHOWILLDIE) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_05");
    };
    if ((Q308_WHOWILLDIE) == (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_06");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Volker_15_07");
    TRIA_WAIT();
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Volker_03_08");
    INFO_CLEARCHOICES(0x13695);
    INFO_ADDCHOICE(0x13695, "I found his hideout.", 0x136a0);
}

func void DIA_PRIOR_Q502_CUTSCENE_NOTELL_NEXT_VOLKER() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    AI_FUNCTION(SELF, 0x136a9);
    DIA_PRIOR_Q502_CUTSCENE_ABOUTVOLKER();
}

func void DIA_PRIOR_Q502_CUTSCENE_NOTELL_NEXT_SILENCE() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    AI_FUNCTION(SELF, 0x136a9);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Silence_03_01");
    DIA_PRIOR_Q502_CUTSCENE_NOTELL_NEXT_VOLKER();
}

func void DIA_PRIOR_Q502_CUTSCENE_NOTELL_NEXT_VOLKER_SECRET() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136aa);
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Secret_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Secret_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Secret_15_03");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_WAITTILLEND(SELF, OTHER);
    AI_FUNCTION(SELF, 0x136ab);
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Secret_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Secret_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Secret_03_06");
    INFO_CLEARCHOICES(0x13695);
    INFO_ADDCHOICE(0x13695, "I was with Kessel when we were attacked.", 0x136a2);
}

func void DIA_PRIOR_Q502_CUTSCENE_FINISH() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136ae);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_01");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_02");
    TRIA_WAIT();
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    TRIA_NEXT(KDW_214_BADULF);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_08");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_11");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_FUNCTION(SELF, 0x136af);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_13");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136b0);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_15");
    TRIA_WAIT();
    AI_FUNCTION(SELF, 0x136b1);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_16");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_17");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Finish_03_18");
    TRIA_WAIT();
    AI_FUNCTION(SELF, 0x136b2);
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x13695);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_PRIOR_Q502_CUTSCENE_NOTELL_NEXT_VOLKER_SECRET_KESSEL() {
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136ac);
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Kessel_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Kessel_15_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Kessel_15_03");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136ad);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_CUTSCENE_Kessel_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_CUTSCENE_Kessel_15_05");
    DIA_PRIOR_Q502_CUTSCENE_FINISH();
}

func void PRIOR_MONASTERYCUTSCENE_01() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_02");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_01");
}

func void PRIOR_MONASTERYCUTSCENE_02() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_03");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_02");
}

func void PRIOR_MONASTERYCUTSCENE_03() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_04");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_03");
}

func void PRIOR_MONASTERYCUTSCENE_04() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_05");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_04");
}

func void PRIOR_MONASTERYCUTSCENE_05() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_06");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_05");
}

func void PRIOR_MONASTERYCUTSCENE_06() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_07");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_06");
}

func void PRIOR_MONASTERYCUTSCENE_07() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_08");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_07");
}

func void PRIOR_MONASTERYCUTSCENE_08() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_10");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_08");
}

func void PRIOR_MONASTERYCUTSCENE_09() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_11");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_10");
}

func void PRIOR_MONASTERYCUTSCENE_10() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_12");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_11");
}

func void PRIOR_MONASTERYCUTSCENE_11() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_13");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_12");
}

func void PRIOR_MONASTERYCUTSCENE_12() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_14");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_13");
}

func void PRIOR_MONASTERYCUTSCENE_13() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_15");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_14");
}

func void PRIOR_MONASTERYCUTSCENE_14() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_16");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_15");
}

func void PRIOR_MONASTERYCUTSCENE_15() {
    WLD_SENDTRIGGER("KM_P8_CHURCHTRIALOG_03");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_16");
}

func void PRIOR_MONASTERYCUTSCENE_16() {
    FADESCREENTOBLACKF(2, 0x136b3, 1000);
}

func void PRIOR_MONASTERYCUTSCENE_FADESCREEN() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_01_A");
    WLD_SENDUNTRIGGER("KM_P8_CHURCHTRIALOG_03");
    AI_STOPLOOKAT(KDW_200_PRIOR);
    AI_STOPLOOKAT(HERO);
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x13695);
    AI_STOPPROCESSINFOS(KDW_200_PRIOR);
    AI_STOPPROCESSINFOS(HERO);
    WLD_SETTIME(19, 0);
    FF_APPLYONCEEXT(0xf7c2, 1000, 5);
    Q502_PREPARENPCV2();
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(4);
}

instance DIA_PRIOR_Q502_MONASTERYTRIALOG(C_INFO) {
    NPC = 0xdd1f;
    NR = 1;
    CONDITION = DIA_PRIOR_Q502_MONASTERYTRIALOG_CONDITION;
    INFORMATION = DIA_PRIOR_Q502_MONASTERYTRIALOG_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PRIOR_Q502_MONASTERYTRIALOG_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q502)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13695))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_PRIOR_Q502_MONASTERYTRIALOG_INFO() {
    TRIA_INVITE(KDW_215_NOTGER);
    TRIA_INVITE(NONE_202_KESSEL);
    TRIA_START();
    TELEPORTNPCTOWP(0x71b, "PART8_MONASTERY_TRIALOG_HERO");
    TELEPORTNPCTOWP(0xdd70, "PART8_MONASTERY_TRIALOG_KESSEL");
    TELEPORTNPCTOWP(0xdd5d, "PART8_MONASTERY_PLACE_05");
    TELEPORTNPCTOWP(0xdd1f, "PART8_MONASTERY_PLACE_10");
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_02");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_01_A");
    AI_LOOKATNPC(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_03_03");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    PRIOR_STOPMAGESTANDV2();
    INFO_CLEARCHOICES(0x136b4);
    INFO_ADDCHOICE(0x136b4, DIALOG_BESILENT, 0x136b7);
    INFO_ADDCHOICE(0x136b4, "You can't do this! Usurer must be punished!", 0x136b7);
}

func void DIA_PRIOR_Q502_MONASTERYTRIALOG_NOWAY() {
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    PRIOR_STOPMAGESTANDV2();
    AI_FUNCTION(SELF, 0x136bb);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_01");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_FUNCTION(SELF, 0x136bc);
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136bd);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_04");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_05");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_FUNCTION(SELF, 0x136be);
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_NoWay_03_08");
    INFO_CLEARCHOICES(0x136b4);
    INFO_ADDCHOICE(0x136b4, DIALOG_BESILENT, 0x136b9);
    INFO_ADDCHOICE(0x136b4, "The bridge? What does the bridge have to do with all this?", 0x136ba);
}

func void DIA_PRIOR_Q502_MONASTERYTRIALOG_FINISH() {
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136c0);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_03");
    TRIA_WAIT();
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    TRIA_NEXT(KDW_215_NOTGER);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_04");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_05");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_06");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136c1);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_07");
    TRIA_WAIT();
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    TRIA_NEXT(KDW_200_PRIOR);
    AI_FUNCTION(SELF, 0x136c3);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_08");
    TRIA_FINISH();
    INFO_CLEARCHOICES(0x136b4);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x136c4);
    AI_LOGENTRY(TOPIC_Q502, LOG_Q502_MAGES);
}

func void DIA_PRIOR_Q502_MONASTERYTRIALOG_NOWAY_SILENCE2() {
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_FUNCTION(SELF, 0x136bf);
    DIA_PRIOR_Q502_MONASTERYTRIALOG_FINISH();
}

func void DIA_PRIOR_Q502_MONASTERYTRIALOG_NOWAY_BRIDGE() {
    AI_FUNCTION(SELF, 0x136bf);
    AI_OUTPUT(OTHER, SELF, "DIA_Prior_Q502_MonasteryTrialog_Bridge_15_01");
    TRIA_WAIT();
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    TRIA_NEXT(NONE_202_KESSEL);
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Prior_Q502_MonasteryTrialog_Bridge_03_02");
    AI_TURNTONPC(SELF, NONE_202_KESSEL);
    DIA_PRIOR_Q502_MONASTERYTRIALOG_FINISH();
}

func void PRIOR_MONASTERYTRIALOG_01() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_03");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_02");
}

func void PRIOR_MONASTERYTRIALOG_02() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_04");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_03");
}

func void PRIOR_MONASTERYTRIALOG_03() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_05");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_04");
}

func void PRIOR_MONASTERYTRIALOG_04() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_06");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_05");
}

func void PRIOR_MONASTERYTRIALOG_05() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_07");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_06");
}

func void PRIOR_MONASTERYTRIALOG_06() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_08");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_07");
}

func void PRIOR_MONASTERYTRIALOG_07() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_09");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_08");
}

func void PRIOR_MONASTERYTRIALOG_08() {
    WLD_SENDTRIGGER("KM_P8_MONASTERYTRIALOG_10");
    WLD_SENDUNTRIGGER("KM_P8_MONASTERYTRIALOG_09");
}

func void PRIOR_MONASTERYTRIALOG_DIACAM() {
    DIACAM_ENABLE();
}

func void PRIOR_MONASTERYTRIALOG_END() {
    Q502_STARTTRIALOG = 3;
    Q502_QUITTRIALOG = 1;
    AI_STOPLOOKAT(HERO);
    Q501_NOVIZENORMALRTN_V2();
}

