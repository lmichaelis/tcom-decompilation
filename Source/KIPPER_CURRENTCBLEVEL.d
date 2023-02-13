var int KIPPER_CURRENTCBLEVEL;
var int KIPPER_NOMORE;
instance DIA_KIPPER_EXIT(C_INFO) {
    NPC = 57674;
    NR = 999;
    CONDITION = DIA_KIPPER_EXIT_CONDITION;
    INFORMATION = DIA_KIPPER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KIPPER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KIPPER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KIPPER_HELLO(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_HELLO_CONDITION;
    INFORMATION = DIA_KIPPER_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KIPPER_HELLO_CONDITION() {
    if ((KAPITEL) <= (4)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_03_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_03_04");
    INFO_CLEARCHOICES(89376);
    INFO_ADDCHOICE(89376, "I've heard something.", 89379);
    INFO_ADDCHOICE(89376, "No, I'm new here.", 89380);
}

func void DIA_KIPPER_HELLO_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Hello_YES_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_YES_03_01");
    INFO_CLEARCHOICES(89376);
}

func void DIA_KIPPER_HELLO_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Hello_NO_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_NO_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Hello_NO_03_02");
    INFO_CLEARCHOICES(89376);
}

instance DIA_KIPPER_TELLME(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_TELLME_CONDITION;
    INFORMATION = DIA_KIPPER_TELLME_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Tell me about this Beast.";
}

func int DIA_KIPPER_TELLME_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 89376)) && ((KAPITEL) <= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_TELLME_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_tellme_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_03_04");
    INFO_ADDCHOICE(89381, "No one in town has taken any interest in this matter?", 89384);
}

func void DIA_KIPPER_TELLME_NOBODY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_tellme_nobody_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_nobody_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_nobody_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_nobody_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_tellme_nobody_03_04");
}

instance DIA_KIPPER_SENTRY(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_SENTRY_CONDITION;
    INFORMATION = DIA_KIPPER_SENTRY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Are you a sentry?";
}

func int DIA_KIPPER_SENTRY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 89376)) && ((KAPITEL) <= (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_SENTRY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_sentry_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_sentry_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_sentry_03_02");
}

instance DIA_KIPPER_WHERE(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_WHERE_CONDITION;
    INFORMATION = DIA_KIPPER_WHERE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Where does this path lead?";
}

func int DIA_KIPPER_WHERE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 89376)) && ((KAPITEL) <= (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_WHERE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_where_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_where_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_where_03_02");
}

instance DIA_KIPPER_SQ118_NEEDHELP(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_SQ118_NEEDHELP_CONDITION;
    INFORMATION = DIA_KIPPER_SQ118_NEEDHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need help.";
}

func int DIA_KIPPER_SQ118_NEEDHELP_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ118)) == (LOG_RUNNING)) && ((SQ118_EZEKIEL_GUARDHELP) == (1))) && ((SQ118_GUARDSCOUNT) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_SQ118_NEEDHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_STAND_2_LGUARD);
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_03");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_04");
    AI_PLAYANI(SELF, "T_LGUARD_GREET");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_06");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_LGUARD_2_STAND);
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_11");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_13");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_14");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_15");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_SQ118_NeedHelp_15_16");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ118_NeedHelp_03_17");
    AI_LOGENTRY(TOPIC_SQ118, LOG_SQ118_KIPPER_COWARD);
}

instance DIA_KIPPER_WHEREISJORN(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_WHEREISJORN_CONDITION;
    INFORMATION = DIA_KIPPER_WHEREISJORN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can I ask you a few questions?";
}

func int DIA_KIPPER_WHEREISJORN_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 87898)) && ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING))) && (!(NPC_KNOWSINFO(OTHER, 87935)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_WHEREISJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_03_02");
    INFO_CLEARCHOICES(89394);
    INFO_ADDCHOICE(89394, "Have you seen or heard anything unusual recently?", 89397);
    INFO_ADDCHOICE(89394, "Did a bald, muscular guy walk by?", 89398);
    INFO_ADDCHOICE(89394, "What do you know about the break-in at Kurt's?", 89399);
}

func void DIA_KIPPER_WHEREISJORN_SAW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Saw_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_04");
    GQ001_KIPPERINFORMATIONJORN = (GQ001_KIPPERINFORMATIONJORN) + (1);
    if ((GQ001_KIPPERINFORMATIONJORN) >= (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Saw_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_06");
        INFO_CLEARCHOICES(89394);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_KIPPER);
    };
}

func void DIA_KIPPER_WHEREISJORN_JORN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Jorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Jorn_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Jorn_03_03");
    GQ001_KIPPERINFORMATIONJORN = (GQ001_KIPPERINFORMATIONJORN) + (1);
    if ((GQ001_KIPPERINFORMATIONJORN) >= (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Saw_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_06");
        INFO_CLEARCHOICES(89394);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_KIPPER);
    };
}

func void DIA_KIPPER_WHEREISJORN_KURT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Kurt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Kurt_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Kurt_03_03");
    GQ001_KIPPERINFORMATIONJORN = (GQ001_KIPPERINFORMATIONJORN) + (1);
    if ((GQ001_KIPPERINFORMATIONJORN) >= (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Kipper_WhereIsJorn_Saw_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_WhereIsJorn_Saw_03_06");
        INFO_CLEARCHOICES(89394);
        AI_STOPPROCESSINFOS(SELF);
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_KIPPER);
    };
}

instance DIA_KIPPER_FAQ001_NEWBODY(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_FAQ001_NEWBODY_CONDITION;
    INFORMATION = DIA_KIPPER_FAQ001_NEWBODY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KIPPER_FAQ001_NEWBODY_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 71447)) && ((KAPITEL) <= (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_FAQ001_NEWBODY_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_03_01");
    INFO_CLEARCHOICES(89400);
    INFO_ADDCHOICE(89400, "It looks like it.", 89405);
    INFO_ADDCHOICE(89400, "There is no certainty about this.", 89406);
    INFO_ADDCHOICE(89400, "I don't know what you're talking about.", 89407);
}

func void DIA_KIPPER_FAQ001_NEWBODY_EXIT() {
    INFO_CLEARCHOICES(89400);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

func void DIA_KIPPER_FAQ001_NEWBODY_BEAST() {
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_Maybe_03_03");
}

func void DIA_KIPPER_FAQ001_NEWBODY_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_FAQ001_NewBody_Yes_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_Yes_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_Yes_03_04");
    DIA_KIPPER_FAQ001_NEWBODY_EXIT();
}

func void DIA_KIPPER_FAQ001_NEWBODY_MAYBE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_FAQ001_NewBody_Maybe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_Maybe_03_02");
    DIA_KIPPER_FAQ001_NEWBODY_BEAST();
    DIA_KIPPER_FAQ001_NEWBODY_EXIT();
}

func void DIA_KIPPER_FAQ001_NEWBODY_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_FAQ001_NewBody_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_FAQ001_NewBody_No_03_02");
    DIA_KIPPER_FAQ001_NEWBODY_BEAST();
    DIA_KIPPER_FAQ001_NEWBODY_EXIT();
}

instance DIA_KIPPER_Q205_WATCHOUT(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_Q205_WATCHOUT_CONDITION;
    INFORMATION = DIA_KIPPER_Q205_WATCHOUT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_KIPPER_Q205_WATCHOUT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q205)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_Q205_WATCHOUT_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_03_01");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_03_02");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Q205_WatchOut_15_03");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_03_04");
    INFO_CLEARCHOICES(89408);
    INFO_ADDCHOICE(89408, "Is that all?", 89411);
}

func void DIA_KIPPER_Q205_WATCHOUT_ALL() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Q205_WatchOut_All_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_All_03_02");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(89408);
    INFO_ADDCHOICE(89408, "Relax, tell me exactly what happened. You're not in any danger.", 89412);
}

func void DIA_KIPPER_Q205_WATCHOUT_ALL_TELL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Q205_WatchOut_Tell_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Tell_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Tell_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Tell_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Tell_03_05");
    INFO_CLEARCHOICES(89408);
    INFO_ADDCHOICE(89408, "Don't you think this Beast is just a rumor?", 89414);
    INFO_ADDCHOICE(89408, "Maybe the guards went to get rid of the Beast?", 89415);
}

func void DIA_KIPPER_Q205_WATCHOUT_NEXT() {
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Next_03_01");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_LOGENTRY(TOPIC_Q205, LOG_Q205_KIPPER_FOREST);
    INFO_CLEARCHOICES(89408);
}

func void DIA_KIPPER_Q205_WATCHOUT_ALL_TELL_GOSSIP() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Q205_WatchOut_Gossip_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Gossip_03_02");
    DIA_KIPPER_Q205_WATCHOUT_NEXT();
}

func void DIA_KIPPER_Q205_WATCHOUT_ALL_TELL_BEAST() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Q205_WatchOut_Beast_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Q205_WatchOut_Beast_03_02");
    DIA_KIPPER_Q205_WATCHOUT_NEXT();
}

instance DIA_KIPPER_SQ416_NOWAY(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_SQ416_NOWAY_CONDITION;
    INFORMATION = DIA_KIPPER_SQ416_NOWAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_KIPPER_SQ416_NOWAY_CONDITION() {
    if (((KAPITEL) >= (4)) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_SUCCESS))) {
        if (NPC_ISINSTATE(SELF, 61599)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_SQ416_NOWAY_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_SQ416_NoWay_03_01");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
}

instance DIA_KIPPER_CROSSBOW(C_INFO) {
    NPC = 57674;
    NR = 1;
    CONDITION = DIA_KIPPER_CROSSBOW_CONDITION;
    INFORMATION = DIA_KIPPER_CROSSBOW_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you handle that crossbow?";
}

func int DIA_KIPPER_CROSSBOW_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 89385)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_CROSSBOW_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Crossbow_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Crossbow_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_Crossbow_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Crossbow_03_03");
    TEACHER_LOGENTRY_KIPPER();
}

var string KIPPER_PRINTS;
instance DIA_KIPPER_TRAIN(C_INFO) {
    NPC = 57674;
    NR = 7;
    CONDITION = DIA_KIPPER_TRAIN_CONDITION;
    INFORMATION = DIA_KIPPER_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to train.";
}

func int DIA_KIPPER_TRAIN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 89419)) && ((KIPPER_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_TRAIN_CHOICES() {
    var int KIPPER_GOLDCOST;
    KIPPER_GOLDCOST = 3;
    KIPPER_CURRENTCBLEVEL = OTHER.AIVAR[87];
    INFO_CLEARCHOICES(89423);
    INFO_ADDCHOICE(89423, DIALOG_BACK, 89428);
    INFO_ADDCHOICE(89423, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 1), KIPPER_GOLDCOST), 89429);
    INFO_ADDCHOICE(89423, B_BUILDLEARNSTRING2(PRINT_LEARNCROSSBOW5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_CROSSBOW, 5), (KIPPER_GOLDCOST) * (5)), 89430);
}

func void DIA_KIPPER_TRAIN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Kipper_TRAIN_15_00");
    if ((OTHER.AIVAR[87]) >= (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_TRAIN_03_01");
        KIPPER_NOMORE = TRUE;
    };
    if ((OTHER.AIVAR[87]) < (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_TRAIN_03_02");
        DIA_KIPPER_TRAIN_CHOICES();
    };
}

func void DIA_KIPPER_TRAIN_BACK() {
    INFO_CLEARCHOICES(89423);
}

func void DIA_KIPPER_TRAIN_CROSSBOW1() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (KIPPER_PAYMENT1)) {
        if ((KIPPER_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 34203, KIPPER_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 34203, KIPPER_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 1, 30);
        DIA_KIPPER_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (KIPPER_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Train_CROSSBOW1_03_01");
        KIPPER_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(KIPPER_PAYMENT1));
        PRINTSCREEN(KIPPER_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KIPPER_TRAIN_CHOICES();
    };
}

func void DIA_KIPPER_TRAIN_CROSSBOW5() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (KIPPER_PAYMENT5)) {
        if ((KIPPER_CURRENTCBLEVEL) < (OTHER.AIVAR[87])) {
            B_GIVEINVITEMS(OTHER, SELF, 34203, KIPPER_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
            NPC_REMOVEINVITEMS(SELF, 34203, KIPPER_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 5, 30);
        DIA_KIPPER_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 34203)) < (KIPPER_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Kipper_Train_CROSSBOW5_03_01");
        KIPPER_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(KIPPER_PAYMENT5));
        PRINTSCREEN(KIPPER_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_KIPPER_TRAIN_CHOICES();
    };
}

instance DIA_KIPPER_PICKPOCKET(C_INFO) {
    NPC = 57674;
    NR = 900;
    CONDITION = DIA_KIPPER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_KIPPER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_KIPPER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KIPPER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(89431);
    INFO_ADDCHOICE(89431, DIALOG_BACK, 89435);
    INFO_ADDCHOICE(89431, DIALOG_PICKPOCKET, 89434);
}

func void DIA_KIPPER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 34384, 3);
        B_GIVEINVITEMS(SELF, OTHER, 34384, 3);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(89431);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(89431);
}

func void DIA_KIPPER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(89431);
}

