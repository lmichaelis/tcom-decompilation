instance DIA_EDGAR_EXIT(C_INFO) {
    NPC = 52382;
    NR = 999;
    CONDITION = DIA_EDGAR_EXIT_CONDITION;
    INFORMATION = DIA_EDGAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_EDGAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_EDGAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int GQ001_TALKEDWITHEDGAR;
var int EDGAR_FIRSTDIALOGUE;
var int EDGAR_TOLDREASON;
var int EDGAR_FIRSTDIALOGUE_NOTICECHANGE;
const string EDGAR_CHECKPOINT = "PART3_GATEGUARD_01";
instance DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM(C_INFO) {
    NPC = 52382;
    NR = 1;
    CONDITION = DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CONDITION;
    INFORMATION = DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CONDITION() {
    if ((CITYENTERED) == (TRUE)) {
        SELF.AIVAR[14] = TRUE;
    };
    SELF.AIVAR[14] = FALSE;
    if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (700)) {
        if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDGAR_NOPASSCUTTER() {
    if ((EDGAR_FIRSTDIALOGUE_NOTICECHANGE) == (FALSE)) {
        EDGAR_FIRSTDIALOGUE_NOTICECHANGE = TRUE;
    };
    EDGAR_FIRSTDIALOGUE_NOTICECHANGE = 2;
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_PissOff_03_02");
}

func void DIA_EDGAR_NOPASS_FIRSTDIALOGUE() {
    var C_ITEM ITM;
    if ((EDGAR_FIRSTDIALOGUE) == (FALSE)) {
        EDGAR_FIRSTDIALOGUE = TRUE;
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (FALSE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_05");
        };
        AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_15_06");
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (FALSE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_07");
            AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_08");
        };
        AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_11");
        if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (FALSE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_14");
        };
    };
}

func void DIA_EDGAR_NOPASS_BADCHOICES() {
    INFO_ADDCHOICE(77216, "I'd love to punch you in the face.", 77234);
    INFO_ADDCHOICE(77216, "Maybe a few coins will convince you?", 77238);
    INFO_ADDCHOICE(77241, "I'd love to punch you in the face.", 77234);
    INFO_ADDCHOICE(77241, "Maybe a few coins will convince you?", 77238);
}

func void DIA_EDGAR_NOPASS_GOODCHOICES() {
    if (((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING)) && ((GQ001_TALKEDWITHEDGAR) == (FALSE))) {
        INFO_ADDCHOICE(77216, "Did a bald guy walk by here recently?", 77235);
    };
    if (((LOG_GETSTATUS(MIS_Q201)) == (LOG_RUNNING)) && ((GQ001_CANTRYENTERCITY) == (TRUE))) {
        if ((NPC_HASITEMS(OTHER, 37136)) > (0)) {
            INFO_ADDCHOICE(77216, "I have a pass!", 77240);
            INFO_ADDCHOICE(77241, "I have a pass!", 77240);
        };
    };
    INFO_ADDCHOICE(77216, "All right, I'll go.", 77239);
    INFO_ADDCHOICE(77241, "All right, I'll go.", 77239);
}

func void DIA_EDGAR_NOPASS_CUTTERCHOICES() {
    var C_ITEM ITM;
    ITM = NPC_GETEQUIPPEDARMOR(OTHER);
    if ((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) {
        if ((HLP_ISITEM(ITM, 35581)) == (TRUE)) {
            DIA_EDGAR_NOPASSCUTTER();
            if ((GQ001_CANTRYENTERCITY) == (TRUE)) {
                if ((NPC_HASITEMS(OTHER, 37137)) >= (1)) {
                    INFO_ADDCHOICE(77216, "I have a letter here from the woodcutters' camp.", 77230);
                };
                if ((NPC_HASITEMS(OTHER, 37137)) >= (1)) {
                    INFO_ADDCHOICE(77241, "I have a letter here from the woodcutters' camp.", 77230);
                };
            };
        };
    };
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_INFO() {
    var C_ITEM ITM;
    INFO_CLEARCHOICES(77216);
    ITM = NPC_GETEQUIPPEDARMOR(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_01");
    if (((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) && ((HLP_ISITEM(ITM, 35581)) == (TRUE))) {
        if ((EDGAR_FIRSTDIALOGUE) == (TRUE)) {
            if ((EDGAR_FIRSTDIALOGUE_NOTICECHANGE) == (FALSE)) {
                EDGAR_FIRSTDIALOGUE_NOTICECHANGE = TRUE;
                AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_16");
                AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_03_17");
                if ((EDGAR_TOLDREASON) == (FALSE)) {
                    INFO_ADDCHOICE(77216, "None of your business.", 77232);
                    INFO_ADDCHOICE(77216, "Yeah, I got hired at a sawmill.", 77233);
                };
            };
        };
    };
    if ((EDGAR_FIRSTDIALOGUE_NOTICECHANGE) != (1)) {
        DIA_EDGAR_NOPASS_CUTTERCHOICES();
        DIA_EDGAR_NOPASS_FIRSTDIALOGUE();
        DIA_EDGAR_NOPASS_BADCHOICES();
        DIA_EDGAR_NOPASS_GOODCHOICES();
    };
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, EDGAR_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

func void DIA_EDGAR_KILLHERO() {
    AI_RESETFACEANI(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 0);
}

func void DIA_EDGAR_OPENGATE() {
    AI_TURNAWAY(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Cutter_03_05");
    AI_FUNCTION(SELF, 77231);
    AI_TURNTONPC(SELF, OTHER);
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CUTTER_ENTERING() {
    CITYENTERED = TRUE;
    DIA_EDGAR_OPENGATE();
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Cutter_03_06");
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_NEXTMOVE);
    Q201_FINISHQUEST();
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CUTTER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Cutter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Cutter_03_02");
    B_GIVEINVITEMS(OTHER, SELF, 37137, 1);
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Cutter_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Cutter_03_04");
    B_GIVEINVITEMS(SELF, OTHER, 37137, 1);
    AI_LOGENTRY(TOPIC_Q201, LOG_Q201_EDGAR_ENTRY);
    DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CUTTER_ENTERING();
    INFO_CLEARCHOICES(77216);
    INFO_CLEARCHOICES(77241);
    AI_STOPPROCESSINFOS(SELF);
}

func void EDGAR_OPEN_WEST_GATE() {
    if ((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) {
        if ((Q312_GATESCLOSED) == (TRUE)) {
            Q312_GATESCLOSED = FALSE;
        };
    };
    WLD_SENDTRIGGER("CITYEASTGATEOPEN");
    WLD_SENDTRIGGER("WESTCITYGATE");
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_PISSOFF() {
    EDGAR_TOLDREASON = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_PissOff_15_01");
    DIA_EDGAR_NOPASSCUTTER();
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CONFIRM() {
    EDGAR_TOLDREASON = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Confirm_15_01");
    DIA_EDGAR_NOPASSCUTTER();
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_FIGHTWITHME() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_FightWithMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_FightWithMe_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_FightWithMe_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_FightWithMe_03_04");
    INFO_CLEARCHOICES(77216);
    INFO_CLEARCHOICES(77241);
    DIA_EDGAR_KILLHERO();
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_JORN() {
    GQ001_TALKEDWITHEDGAR = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Jorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Jorn_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Jorn_03_03");
    INFO_CLEARCHOICES(77216);
    INFO_ADDCHOICE(77216, "You really don't remember anything?", 77236);
    INFO_ADDCHOICE(77216, "What do I have to do for you to let me in?", 77237);
    INFO_CLEARCHOICES(77241);
    INFO_ADDCHOICE(77241, "You really don't remember anything?", 77236);
    INFO_ADDCHOICE(77241, "What do I have to do for you to let me in?", 77237);
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_JORN_REMEMBER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Remember_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Remember_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Remember_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Remember_03_04");
    INFO_CLEARCHOICES(77216);
    INFO_CLEARCHOICES(77241);
    AI_STOPPROCESSINFOS(SELF);
    GQ001_STARTENTERCITYQUEST();
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_JORN_YOURPRICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_YourPrice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_YourPrice_03_02");
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_GOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Gold_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Gold_03_02");
}

func void DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_GOODBYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_StopRightThereCriminalScum_Goodbye_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_StopRightThereCriminalScum_Goodbye_03_02");
    INFO_CLEARCHOICES(77216);
    INFO_CLEARCHOICES(77241);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_EDGAR_GOTCITYPERMIT() {
    B_GIVEINVITEMS(OTHER, SELF, 37136, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Edgar_GotCityPermit_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_GotCityPermit_03_02");
    B_USEFAKESCROLL();
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_GotCityPermit_03_03");
    DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_CUTTER_ENTERING();
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_EDGAR_YOUAGAIN(C_INFO) {
    NPC = 52382;
    NR = 1;
    CONDITION = DIA_EDGAR_YOUAGAIN_CONDITION;
    INFORMATION = DIA_EDGAR_YOUAGAIN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_EDGAR_YOUAGAIN_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, EDGAR_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDGAR_SECONDWARNING() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_YouAgain_03_02");
    AI_RESETFACEANI(SELF);
}

func void DIA_EDGAR_YOUAGAIN_INFO() {
    var C_ITEM ITM;
    INFO_CLEARCHOICES(77216);
    ITM = NPC_GETEQUIPPEDARMOR(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_YouAgain_03_01");
    if (((GQ001_TALKEDWITHEDGAR) == (FALSE)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) {
        DIA_EDGAR_STOPRIGHTTHERECRIMINALSCUM_JORN();
    };
    DIA_EDGAR_NOPASS_CUTTERCHOICES();
    DIA_EDGAR_NOPASS_BADCHOICES();
    DIA_EDGAR_NOPASS_GOODCHOICES();
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, EDGAR_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_EDGAR_LASTWARNING(C_INFO) {
    NPC = 52382;
    NR = 1;
    CONDITION = DIA_EDGAR_LASTWARNING_CONDITION;
    INFORMATION = DIA_EDGAR_LASTWARNING_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_EDGAR_LASTWARNING_CONDITION() {
    if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, EDGAR_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDGAR_LASTWARNING_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_LASTWARNING_03_01");
    DIA_EDGAR_KILLHERO();
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
}

instance DIA_EDGAR_Q312_WAITASEC(C_INFO) {
    NPC = 52382;
    NR = 1;
    CONDITION = DIA_EDGAR_Q312_WAITASEC_CONDITION;
    INFORMATION = DIA_EDGAR_Q312_WAITASEC_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_EDGAR_Q312_WAITASEC_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q312)) == (LOG_RUNNING)) && ((Q312_GOTGATEGUARDMESSAGE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_EDGAR_Q312_WAITASEC_INFO() {
    Q312_GOTGATEGUARDMESSAGE = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_03_01");
    B_USEFAKESCROLL();
    AMBIENT_ASKWHOYOUARE();
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_03_02");
    INFO_CLEARCHOICES(77249);
    INFO_ADDCHOICE(77249, "What's going on here?", 77252);
}

func void DIA_EDGAR_Q312_WAITASEC_YES_WHAT() {
    QA306_WHATSGOINGONHERE();
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_What_03_03");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_What_03_04");
        AI_LOGENTRY(TOPIC_Q312, LOG_Q312_GATEGUARD_MIL);
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Edgar_Q312_WaitASec_What_03_05");
        AI_LOGENTRY(TOPIC_Q312, LOG_Q312_GATEGUARD_SLD);
    };
    DIA_EDGAR_OPENGATE();
    INFO_CLEARCHOICES(77249);
    AI_STOPPROCESSINFOS(SELF);
}

