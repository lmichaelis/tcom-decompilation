instance Q308_JUDGECUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16996);
}

func void Q308_DANISCUTSCENE_WAIT() {
    AI_WAITTILLEND(VLK_6388_MORRIS, MIL_4000_RODERICH);
    AI_WAITTILLEND(VLK_6388_MORRIS, SLD_5000_LORENZO);
    AI_WAITTILLEND(VLK_6388_MORRIS, VLK_6454_DANIS);
    AI_WAITTILLEND(VLK_6388_MORRIS, HERO);
    AI_WAITTILLEND(MIL_4000_RODERICH, VLK_6388_MORRIS);
    AI_WAITTILLEND(MIL_4000_RODERICH, SLD_5000_LORENZO);
    AI_WAITTILLEND(MIL_4000_RODERICH, VLK_6454_DANIS);
    AI_WAITTILLEND(MIL_4000_RODERICH, HERO);
    AI_WAITTILLEND(SLD_5000_LORENZO, VLK_6388_MORRIS);
    AI_WAITTILLEND(SLD_5000_LORENZO, MIL_4000_RODERICH);
    AI_WAITTILLEND(SLD_5000_LORENZO, VLK_6454_DANIS);
    AI_WAITTILLEND(SLD_5000_LORENZO, HERO);
    AI_WAITTILLEND(VLK_6454_DANIS, VLK_6388_MORRIS);
    AI_WAITTILLEND(VLK_6454_DANIS, MIL_4000_RODERICH);
    AI_WAITTILLEND(VLK_6454_DANIS, SLD_5000_LORENZO);
    AI_WAITTILLEND(VLK_6454_DANIS, HERO);
    AI_WAITTILLEND(HERO, VLK_6388_MORRIS);
    AI_WAITTILLEND(HERO, MIL_4000_RODERICH);
    AI_WAITTILLEND(HERO, SLD_5000_LORENZO);
    AI_WAITTILLEND(HERO, VLK_6454_DANIS);
}

func void Q308_DANISCUTSCENE_END() {
    FF_APPLYONCEEXT(0x16990, 75, 4);
}

func void Q308_DANISCUTSCENE_END_APPLY() {
    Q308_DANISCUTSCENE_END_COUNT = (Q308_DANISCUTSCENE_END_COUNT) + (1);
    if ((Q308_DANISCUTSCENE_END_COUNT) == (4)) {
        Q308_DANISCUTSCENE_END_COUNT = 0;
        WLD_SENDUNTRIGGER("KM_JUDGE_05");
        CHANGEVOBCOLLISION("Q308_DOOR", FALSE, FALSE, FALSE, FALSE);
        MOB_CHANGEFOCUSNAME("Q308_DOOR", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("Q308_THRONE_01", FALSE, FALSE, FALSE, FALSE);
        MOB_CHANGEFOCUSNAME("Q308_THRONE_01", "MOBNAME_NOTHING");
        CHANGEVOBCOLLISION("Q308_THRONE_02", FALSE, FALSE, FALSE, FALSE);
        MOB_CHANGEFOCUSNAME("Q308_THRONE_02", "MOBNAME_NOTHING");
        SLD_5000_LORENZO.AIVAR[92] = FALSE;
        MIL_4000_RODERICH.AIVAR[92] = FALSE;
        VLK_6454_DANIS.AIVAR[92] = FALSE;
        VLK_6388_MORRIS.AIVAR[92] = FALSE;
        if ((Q308_WHOWILLDIE) == (1)) {
            B_LOGENTRY(TOPIC_Q308, LOG_Q308_FINISH_V1);
        } else {
            B_LOGENTRY(TOPIC_Q308, LOG_Q308_FINISH_V2);
        } else {
            LOG_SETSTATUS(_@(MIS_Q308), TOPIC_Q308, LOG_SUCCESS);
        } else {
            RESTOREROUTINE_OKTAV();
        } else {
            B_GIVEPLAYERXP(XP_Q308_FINISH);
        } else {
            LOG_CREATETOPIC(TOPIC_Q400, LOG_MISSION);
        } else {
            LOG_SETSTATUS(_@(MIS_Q400), TOPIC_Q400, LOG_RUNNING);
        } else {
            B_LOGENTRY(TOPIC_Q400, LOG_Q400_PRESTART);
        } else {
            AI_STOPLOOKAT(SLD_5000_LORENZO);
        } else {
            AI_STOPLOOKAT(MIL_4000_RODERICH);
        } else {
            AI_STOPLOOKAT(VLK_6388_MORRIS);
        } else {
            AI_STOPLOOKAT(HERO);
        } else {
            DIACAM_ENABLE();
        } else {
            Q308_LORENZO_RTNCHECK = 2;
        } else {
            NPC_EXCHANGEROUTINE(SLD_5000_LORENZO, "TOWNHALL");
        } else {
            NPC_REFRESH(SLD_5000_LORENZO);
        } else {
            Q308_RODERICH_RTNCHECK = 2;
        } else {
            NPC_EXCHANGEROUTINE(MIL_4000_RODERICH, "TOWNHALL");
        } else {
            NPC_REFRESH(MIL_4000_RODERICH);
        } else {
            B_STARTOTHERROUTINE(VLK_6454_DANIS, "TOWNHALL");
        } else {
            NPC_REFRESH(VLK_6454_DANIS);
        } else {
            B_STARTOTHERROUTINE(VLK_6503_GOLAR, "TOWNHALL");
        } else {
            NPC_REFRESH(VLK_6503_GOLAR);
        } else {
            TELEPORTNPCTOWP(0xd243, VLK_6503_GOLAR.WP);
        } else {
            B_STARTOTHERROUTINE(VLK_6388_MORRIS, "TOWNHALL_FOLLOW");
        } else {
            NPC_REFRESH(VLK_6388_MORRIS);
        } else {
            TELEPORTNPCTOWP(0xd22c, "PARTM5_CITYHALL_23");
        } else {
            B_STARTOTHERROUTINE(NONE_16_IVY, "TOWNHALL");
        } else {
            NPC_REFRESH(NONE_16_IVY);
        } else {
            TELEPORTNPCTOWP(0xe4af, "PARTM5_ANGRYMOB_IVY");
        } else {
            WLD_INSERTNPC(0xd138, "PARTM5_ANGRYMOB_EXECUTIONER");
        } else if ((Q308_WHOWILLDIE) == (1)) {
            B_STARTOTHERROUTINE(OUT_6403_ARS, "DEATH");
            NPC_REFRESH(OUT_6403_ARS);
            TELEPORTNPCTOWP(0xcf1b, "PARTM5_CITYHALL_05");
        } else if ((Q308_WHOWILLDIE) == (2)) {
            B_STARTOTHERROUTINE(STRF_6405_OSIP, "DEATH");
            NPC_REFRESH(STRF_6405_OSIP);
            TELEPORTNPCTOWP(0xcf1f, "PARTM5_CITYHALL_05");
        } else if ((Q308_WHOWILLDIE) == (3)) {
            B_STARTOTHERROUTINE(VLK_6424_LUDLOF, "DEATH");
            NPC_REFRESH(VLK_6424_LUDLOF);
            TELEPORTNPCTOWP(0xd537, "PARTM5_CITYHALL_05");
        };
        HAVEN_STOPPARTYAFTERTOURNAMENT();
        WLD_SENDTRIGGER("KM_EXECUTIONKNEEL_MOVER");
        HERO.AIVAR[4] = FALSE;
    };
}

var int Q308_DANISCUTSCENE_END_APPLY.Q308_DANISCUTSCENE_END_COUNT = 0;
func void Q308_DANISCUTSCENE_01() {
    WLD_SENDTRIGGER("KM_JUDGE_02");
}

func void Q308_DANISCUTSCENE_02() {
    WLD_SENDTRIGGER("KM_JUDGE_04");
    WLD_SENDUNTRIGGER("KM_JUDGE_02");
    WLD_SENDUNTRIGGER("KM_JUDGE_01");
}

func void Q308_DANISCUTSCENE_03() {
    WLD_SENDTRIGGER("KM_JUDGE_03");
    WLD_SENDUNTRIGGER("KM_JUDGE_04");
}

func void Q308_DANISCUTSCENE_04() {
    WLD_SENDTRIGGER("KM_JUDGE_05");
    WLD_SENDUNTRIGGER("KM_JUDGE_03");
}

func void Q308_JUDGECUTSCENE_START() {
    WLD_SENDTRIGGER("KM_JUDGE_01");
    TELEPORTNPCTOWP(0x71b, "PARTM5_CITYHALL_33");
    TELEPORTNPCTOWP(0xd23d, "PARTM5_CITYHALL_DANIS");
    AI_LOOKATNPC(MIL_4000_RODERICH, VLK_6454_DANIS);
    AI_LOOKATNPC(SLD_5000_LORENZO, VLK_6454_DANIS);
    AI_LOOKATNPC(HERO, VLK_6454_DANIS);
    AI_USEMOB(VLK_6388_MORRIS, "THRONE", 1);
    SLD_5000_LORENZO.AIVAR[92] = TRUE;
    AI_USEMOB(SLD_5000_LORENZO, "THRONE", 1);
    MIL_4000_RODERICH.AIVAR[92] = TRUE;
    AI_USEMOB(MIL_4000_RODERICH, "THRONE", 1);
    VLK_6454_DANIS.AIVAR[92] = TRUE;
    VLK_6388_MORRIS.AIVAR[92] = TRUE;
    B_TURNTONPC(VLK_6454_DANIS, HERO);
    B_TURNTONPC(HERO, VLK_6454_DANIS);
    Q308_DANISCUTSCENE_WAIT();
    AI_STOPLOOKAT(VLK_6454_DANIS);
    CREATEINVITEM(VLK_6454_DANIS, 0x8486);
    AI_USEITEMTOSTATE(VLK_6454_DANIS, 0x8486, 1);
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_01");
    Q308_DANISCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 0x16992);
    Q308_DANISCUTSCENE_WAIT();
    if ((Q308_ARSPOINTS) >= (Q308_AGAINSTARSPOINTS)) {
        Q308_WHOWILLDIE = 1;
        AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_02");
        AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_03");
        AI_USEITEMTOSTATE(VLK_6454_DANIS, 0x8486, -(1));
        Q308_DANISCUTSCENE_WAIT();
        AI_USEMOB(SLD_5000_LORENZO, "THRONE", -(1));
        AI_TURNTONPC(SLD_5000_LORENZO, VLK_6454_DANIS);
        Q308_DANISCUTSCENE_WAIT();
        AI_TURNTONPC(VLK_6454_DANIS, SLD_5000_LORENZO);
        AI_OUTPUT(SLD_5000_LORENZO, HERO, "DIA_LORENZO_TOWNHALLCUTSCENE_03_04");
        Q308_DANISCUTSCENE_WAIT();
        AI_FUNCTION(HERO, 0x16993);
        AI_TURNTONPC(SLD_5000_LORENZO, VLK_6388_MORRIS);
        AI_OUTPUT(SLD_5000_LORENZO, HERO, "DIA_LORENZO_TOWNHALLCUTSCENE_03_05");
        Q308_DANISCUTSCENE_WAIT();
        AI_TURNTONPC(SLD_5000_LORENZO, VLK_6454_DANIS);
        AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_06");
        AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_07");
        Q308_DANISCUTSCENE_WAIT();
        AI_FUNCTION(HERO, 0x16994);
        AI_TURNAWAY(SLD_5000_LORENZO, VLK_6454_DANIS);
        AI_USEMOB(SLD_5000_LORENZO, "THRONE", 1);
        Q308_DANISCUTSCENE_WAIT();
    };
    if ((Q311_LUDLOFRIOT) == (2)) {
        Q308_WHOWILLDIE = 3;
    };
    Q308_WHOWILLDIE = 2;
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_11");
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_12");
    AI_USEITEMTOSTATE(VLK_6454_DANIS, 0x8486, -(1));
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_13");
    Q308_DANISCUTSCENE_WAIT();
    AI_USEMOB(MIL_4000_RODERICH, "THRONE", -(1));
    AI_TURNTONPC(MIL_4000_RODERICH, VLK_6454_DANIS);
    Q308_DANISCUTSCENE_WAIT();
    AI_TURNTONPC(VLK_6454_DANIS, MIL_4000_RODERICH);
    AI_OUTPUT(MIL_4000_RODERICH, HERO, "DIA_RODERICH_TOWNHALLCUTSCENE_03_14");
    Q308_DANISCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 0x16993);
    AI_TURNTONPC(MIL_4000_RODERICH, VLK_6388_MORRIS);
    AI_OUTPUT(MIL_4000_RODERICH, HERO, "DIA_RODERICH_TOWNHALLCUTSCENE_03_15");
    Q308_DANISCUTSCENE_WAIT();
    AI_TURNTONPC(MIL_4000_RODERICH, VLK_6454_DANIS);
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_06");
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_17");
    Q308_DANISCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 0x16994);
    AI_TURNAWAY(MIL_4000_RODERICH, VLK_6454_DANIS);
    AI_USEMOB(MIL_4000_RODERICH, "THRONE", 1);
    Q308_DANISCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6454_DANIS, HERO, "DIA_DANIS_TOWNHALLCUTSCENE_03_08");
    Q308_DANISCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 0x16995);
    AI_USEMOB(VLK_6388_MORRIS, "THRONE", -(1));
    AI_TURNTONPC(VLK_6388_MORRIS, HERO);
    Q308_DANISCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6388_MORRIS, HERO, "DIA_MORRIS_TOWNHALLCUTSCENE_03_09");
    AI_OUTPUT(VLK_6388_MORRIS, HERO, "DIA_MORRIS_TOWNHALLCUTSCENE_03_10");
    Q308_DANISCUTSCENE_WAIT();
    AI_FUNCTION(HERO, 0x1698f);
}

