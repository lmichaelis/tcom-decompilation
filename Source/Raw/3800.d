instance DIA_OSIP_EXIT(C_INFO) {
    NPC = 0xcf1f;
    NR = 999;
    CONDITION = DIA_OSIP_EXIT_CONDITION;
    INFORMATION = DIA_OSIP_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OSIP_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OSIP_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OSIP_HELLO(C_INFO) {
    NPC = 0xcf1f;
    NR = 1;
    CONDITION = DIA_OSIP_HELLO_CONDITION;
    INFORMATION = DIA_OSIP_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OSIP_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11110))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSIP_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_HELLO_03_01");
}

instance DIA_OSIP_ARS(C_INFO) {
    NPC = 0xcf1f;
    NR = 1;
    CONDITION = DIA_OSIP_ARS_CONDITION;
    INFORMATION = DIA_OSIP_ARS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You mean Ars?";
}

func int DIA_OSIP_ARS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x117b2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSIP_ARS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_03_09");
    INFO_CLEARCHOICES(0x117b5);
    INFO_ADDCHOICE(0x117b5, "Anyone else been here?", 0x117b8);
    INFO_ADDCHOICE(0x117b5, "Are you saying Ars isn't behind the assassination attempt?", 0x117b9);
}

func void DIA_OSIP_ARS_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Who_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Who_03_04");
}

func void DIA_OSIP_ARS_ATTEMPT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_Attempt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Attempt_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_Attempt_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Attempt_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_Attempt_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Attempt_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Attempt_03_07");
    INFO_CLEARCHOICES(0x117b5);
    INFO_ADDCHOICE(0x117b5, "How am I supposed to do that?", 0x117ba);
}

func void DIA_OSIP_ARS_ATTEMPT_HOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_How_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_How_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_How_03_03");
    };
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_How_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_How_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_How_03_06");
    INFO_CLEARCHOICES(0x117b5);
    INFO_ADDCHOICE(0x117b5, "Where should I look for such a substance?", 0x117bb);
}

func void DIA_OSIP_ARS_ATTEMPT_HOW_WHERE() {
    SQ305_OSIP_GOTPOTION = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Ars_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ars_Where_03_03");
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_OSIP_MISSION);
    INFO_CLEARCHOICES(0x117b5);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OSIP_GOTPOTION(C_INFO) {
    NPC = 0xcf1f;
    NR = 1;
    CONDITION = DIA_OSIP_GOTPOTION_CONDITION;
    INFORMATION = DIA_OSIP_GOTPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have the concoction you asked for.";
}

func int DIA_OSIP_GOTPOTION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && ((SQ305_OSIP_GOTPOTION) == (2))) {
        if (((NPC_HASITEMS(OTHER, 0x91b2)) >= (1)) || ((NPC_HASITEMS(OTHER, 0x91b3)) >= (1))) {
            if (((NPC_GETDISTTOWP(STRF_6405_OSIP, "PARTM3_PRISON_OSIP")) <= (350)) && ((NPC_GETDISTTOWP(MIL_6402_GUIDO, "PARTM3_PRISON_07")) <= (350))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSIP_GOTPOTION_INFO() {
    TRIA_INVITE(MIL_6402_GUIDO);
    TRIA_START();
    AI_LOOKATNPC(HERO, SELF);
    AI_LOOKATNPC(SELF, HERO);
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_03");
    AI_FUNCTION(SELF, 0x117bf);
    if ((NPC_HASITEMS(OTHER, 0x91b2)) >= (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_05");
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_07");
    };
    if ((NPC_HASITEMS(OTHER, 0x91b3)) >= (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_15_08");
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_15_09");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_10");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_11");
    AI_FUNCTION(SELF, 0x117c0);
    AI_WAITTILLEND(MIL_6402_GUIDO, HERO);
    AI_WAITTILLEND(MIL_6402_GUIDO, SELF);
    TRIA_WAIT();
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_12");
    AI_WAITTILLEND(HERO, MIL_6402_GUIDO);
    AI_WAITTILLEND(SELF, MIL_6402_GUIDO);
    AI_WAITTILLEND(MIL_6402_GUIDO, HERO);
    AI_WAITTILLEND(MIL_6402_GUIDO, SELF);
    TRIA_WAIT();
    TRIA_NEXT(MIL_6402_GUIDO);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_13");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_03_14");
    INFO_CLEARCHOICES(0x117bc);
    INFO_ADDCHOICE(0x117bc, "I didn't know there was such a ban.", 0x117c3);
}

func void OSIP_CUTSCENE01() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_01_A");
    TELEPORTNPCTOWP(0xcf1f, "PARTM3_PRISON_OSIP");
    TELEPORTNPCTOWP(0x71b, "PARTM3_CUTSCENE_HERO_02");
}

func void OSIP_CUTSCENE02() {
    WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_02_A");
    WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_01_A");
    TELEPORTNPCTOWP(0xcf02, "PARTM3_CUTSCENE_GUIDO");
    TELEPORTNPCTOWP(0x71b, "PARTM3_CUTSCENE_HERO");
}

func void OSIP_CUTSCENE03() {
    WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_03_A");
    WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_02_A");
}

func void OSIP_CUTSCENE04() {
    TELEPORTNPCTOWP(0xcf02, "PARTM3_CUTSCENE_GUIDO_02");
    WLD_SENDTRIGGER("KM_PRISON_CUTSCENE_04");
    WLD_SENDUNTRIGGER("KM_PRISON_CUTSCENE_03_A");
}

func void DIA_OSIP_GOTPOTION_KNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_Know_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_02");
    AI_FUNCTION(SELF, 0x117c1);
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x91b2)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8ce5, 1);
        AI_USEITEMTOSTATE(SELF, 0x8ce5, 1);
    };
    if ((NPC_HASITEMS(OTHER, 0x91b3)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8ce6, 1);
        AI_USEITEMTOSTATE(SELF, 0x8ce6, 1);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_05");
    if ((NPC_HASITEMS(OTHER, 0x91b2)) >= (1)) {
        AI_USEITEMTOSTATE(SELF, 0x8ce5, -(1));
    };
    if ((NPC_HASITEMS(OTHER, 0x91b3)) >= (1)) {
        AI_USEITEMTOSTATE(SELF, 0x8ce6, -(1));
    };
    AI_LOOKATNPC(SELF, OTHER);
    AI_TURNTONPC(SELF, MIL_6402_GUIDO);
    TRIA_WAIT();
    TRIA_NEXT(STRF_6405_OSIP);
    AI_TURNTONPC(SELF, MIL_6402_GUIDO);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_06");
    TRIA_WAIT();
    TRIA_NEXT(MIL_6402_GUIDO);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_07");
    AI_PLAYANI(SELF, "T_FINGERSCOUNT_START_GUIDO");
    AI_FUNCTION(SELF, 0x117c5);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_08");
    AI_PLAYANI(SELF, "T_SHOWFIST_REMOVE");
    AI_FUNCTION(SELF, 0x117c6);
    TRIA_WAIT();
    TRIA_NEXT(STRF_6405_OSIP);
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_09");
    AI_FUNCTION(SELF, 0x117c2);
    if ((NPC_HASITEMS(OTHER, 0x91b2)) >= (1)) {
        TRIA_WAIT();
        TRIA_NEXT(MIL_6402_GUIDO);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_10");
        TRIA_WAIT();
        TRIA_NEXT(STRF_6405_OSIP);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_11");
        TRIA_WAIT();
        TRIA_NEXT(MIL_6402_GUIDO);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_12");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_13");
        AI_WAITTILLEND(OTHER, SELF);
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 0x8ccc);
        AI_USEITEMTOSTATE(SELF, 0x8ccc, 1);
        AI_WAIT(SELF, 0x40400000);
        AI_USEITEMTOSTATE(SELF, 0x8ccc, -(1));
        AI_WAITTILLEND(SELF, OTHER);
        AI_WAITTILLEND(OTHER, SELF);
        AI_LOOKATNPC(SELF, OTHER);
        TRIA_WAIT();
        TRIA_NEXT(STRF_6405_OSIP);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_14");
        TRIA_WAIT();
        TRIA_NEXT(MIL_6402_GUIDO);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_15");
        AI_PLAYANI(SELF, "T_STOMACHHURT_START_GUIDO");
        AI_FUNCTION(SELF, 0x117c7);
        AI_WAITTILLEND(HERO, SELF);
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_Know_15_17");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_18");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_19");
        TRIA_WAIT();
        TRIA_NEXT(STRF_6405_OSIP);
        AI_FUNCTION(SELF, 0x117c9);
        AI_FUNCTION(SELF, 0x117ca);
    };
    if ((NPC_HASITEMS(OTHER, 0x91b3)) >= (1)) {
        TRIA_WAIT();
        TRIA_NEXT(MIL_6402_GUIDO);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_20");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_21");
        AI_WAITTILLEND(OTHER, SELF);
        AI_STOPLOOKAT(SELF);
        CREATEINVITEM(SELF, 0x8ccd);
        AI_USEITEMTOSTATE(SELF, 0x8ccd, 1);
        AI_WAIT(SELF, 0x40400000);
        AI_USEITEMTOSTATE(SELF, 0x8ccd, -(1));
        AI_WAITTILLEND(SELF, OTHER);
        AI_WAITTILLEND(OTHER, SELF);
        AI_LOOKATNPC(SELF, OTHER);
        AI_PLAYANI(SELF, "T_STOMACHHURT_START_GUIDO");
        AI_FUNCTION(SELF, 0x117c7);
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_23");
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_GotPotion_Know_15_25");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_GotPotion_Know_03_26");
        TRIA_WAIT();
        TRIA_NEXT(STRF_6405_OSIP);
        AI_FUNCTION(SELF, 0x117c9);
        AI_FUNCTION(SELF, 0x117cb);
    };
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
}

func void SPAWNMEATBUGGUIDO() {
}

func void OSIP_APPLYSHOWFISTMDS() {
    MDL_APPLYOVERLAYMDS(STRF_6405_OSIP, "HumanS_FistShow.MDS");
}

func void OSIP_REMOVESHOWFISTMDS() {
    MDL_REMOVEOVERLAYMDS(STRF_6405_OSIP, "HumanS_FistShow.MDS");
}

func void OSIP_APPLYSTOMACHHURTMDS() {
    MDL_APPLYOVERLAYMDS(STRF_6405_OSIP, "HumanS_StomachHurt.MDS");
}

func void OSIP_REMOVESTOMACHHURTMDS() {
    MDL_REMOVEOVERLAYMDS(STRF_6405_OSIP, "HumanS_StomachHurt.MDS");
}

func void OSIP_ENDCUTSCENE() {
    if ((NPC_HASITEMS(HERO, 0x91b2)) >= (1)) {
    };
    if ((NPC_HASITEMS(HERO, 0x91b3)) >= (1)) {
        NPC_REMOVEINVITEM(HERO, 0x91b3);
    };
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(STRF_6405_OSIP);
}

func void OSIP_CUTSCENE_GUIDORUN() {
    SQ305_GUIDORUNAWAY = 1;
}

func void OSIP_TELEPORTMEATBUG() {
    SQ305_MAKEGUIDOMEATBUG = 1;
}

instance DIA_OSIP_AFTERCUTSCENE(C_INFO) {
    NPC = 0xcf1f;
    NR = 1;
    CONDITION = DIA_OSIP_AFTERCUTSCENE_CONDITION;
    INFORMATION = DIA_OSIP_AFTERCUTSCENE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OSIP_AFTERCUTSCENE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) {
        if (((SQ305_GUIDORUNAWAY) == (3)) || ((SQ305_MAKEGUIDOMEATBUG) == (3))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSIP_AFTERCUTSCENE_INFO() {
    AI_FUNCTION(SELF, 0x117c8);
    if ((SQ305_MAKEGUIDOMEATBUG) == (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_AfterCutscene_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_03");
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_AfterCutscene_15_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_05");
        AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_OSIP_POTIONEVENT_V1);
    };
    if ((SQ305_GUIDORUNAWAY) == (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Osip_AfterCutscene_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_07");
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_08");
        AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_OSIP_POTIONEVENT_V2);
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_AfterCutscene_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_AfterCutscene_03_11");
    B_GIVEPLAYERXP(XP_Q308_OSIPEVENT);
}

instance DIA_OSIP_DEAL(C_INFO) {
    NPC = 0xcf1f;
    NR = 1;
    CONDITION = DIA_OSIP_DEAL_CONDITION;
    INFORMATION = DIA_OSIP_DEAL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Back to our deal...";
}

func int DIA_OSIP_DEAL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x117cc))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OSIP_DEAL_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_03_04");
    INFO_CLEARCHOICES(0x117cf);
    INFO_ADDCHOICE(0x117cf, "Who's Blake?", 0x117d2);
}

func void DIA_OSIP_DEAL_BLAKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Blake_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Blake_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Blake_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Blake_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Blake_03_05");
    INFO_CLEARCHOICES(0x117cf);
    INFO_ADDCHOICE(0x117cf, "Why is Blake still at large?", 0x117d3);
}

func void DIA_OSIP_DEAL_BLAKE_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Why_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Why_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Why_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Why_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Why_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Why_03_06");
    INFO_CLEARCHOICES(0x117cf);
    INFO_ADDCHOICE(0x117cf, "How do I find Blake?", 0x117d6);
    INFO_ADDCHOICE(0x117cf, "Why are you telling me all this?", 0x117d7);
    INFO_ADDCHOICE(0x117cf, "Tell me about Mandes.", 0x117d8);
}

var int OSIP_DEAL_INFORMATIONCOUNT = 0;
func void DIA_OSIP_DEAL_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Next_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Next_15_02");
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_OSIP_LASTDIALOGUE);
    INFO_CLEARCHOICES(0x117cf);
    AI_STOPPROCESSINFOS(SELF);
    WLD_INSERTNPC(0xd718, "KM_NATHANIEL_HOUSE_BLAKE_01");
    WLD_INSERTNPC(0xd71a, "KM_NATHANIEL_HOUSE_BLAKE_02");
    WLD_INSERTNPC(0xd71c, "KM_NATHANIEL_HOUSE_BLAKE_03");
    FF_APPLYONCEEXTGT(0xf94b, 0, -(1));
}

func void DIA_OSIP_DEAL_BLAKE_WHY_HOW() {
    OSIP_DEAL_INFORMATIONCOUNT = (OSIP_DEAL_INFORMATIONCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_How_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_How_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_How_03_03");
    if ((OSIP_DEAL_INFORMATIONCOUNT) == (3)) {
        DIA_OSIP_DEAL_END();
    };
}

func void DIA_OSIP_DEAL_BLAKE_WHY_SECRET() {
    OSIP_DEAL_INFORMATIONCOUNT = (OSIP_DEAL_INFORMATIONCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Secret_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Secret_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Secret_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Secret_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Secret_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Secret_03_06");
    if ((OSIP_DEAL_INFORMATIONCOUNT) == (3)) {
        DIA_OSIP_DEAL_END();
    };
}

func void DIA_OSIP_DEAL_BLAKE_WHY_MANDES() {
    OSIP_DEAL_INFORMATIONCOUNT = (OSIP_DEAL_INFORMATIONCOUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Osip_Deal_Mandes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Mandes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Mandes_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Deal_Mandes_03_04");
    if ((OSIP_DEAL_INFORMATIONCOUNT) == (3)) {
        DIA_OSIP_DEAL_END();
    };
}

instance DIA_OSIP_AMBIENT(C_INFO) {
    NPC = 0xcf1f;
    NR = 950;
    CONDITION = DIA_OSIP_AMBIENT_CONDITION;
    INFORMATION = DIA_OSIP_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_OSIP_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_OSIP_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew2");
    if ((NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) && (NPC_KNOWSINFO(OTHER, 0x117cc))) {
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ambient_03_02");
    };
    if (((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x11110))) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ambient_03_01");
    };
    AI_STARTFACEANI(SELF, "S_SAD", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Osip_Ambient_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(SELF);
}

