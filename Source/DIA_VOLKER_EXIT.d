instance DIA_VOLKER_EXIT(C_INFO) {
    NPC = 53402;
    NR = 999;
    CONDITION = DIA_VOLKER_EXIT_CONDITION;
    INFORMATION = DIA_VOLKER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKER_HELLO(C_INFO) {
    NPC = 53402;
    NR = 1;
    CONDITION = DIA_VOLKER_HELLO_CONDITION;
    INFORMATION = DIA_VOLKER_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKER_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 68776))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int VOLKER_HELLO_MODEST_COUNT;
var int VOLKER_HELLO_MODEST;
var int VOLKER_HELLO_WORK;
var int VOLKER_HELLO_INVESTIGATION;
var int VOLKER_HELLO_JORN;
var int VOLKER_HELLO_ATTEMPT;
var int VOLKER_HELLO_INVESTIGATION_COUNT;
func void DIA_VOLKER_HELLO_CHOICES() {
    if ((VOLKER_HELLO_MODEST_COUNT) == (3)) {
        VOLKER_HELLO_MODEST_COUNT = (VOLKER_HELLO_MODEST_COUNT) + (1);
        AI_LOGENTRY(TOPIC_Q308, LOG_Q308_VOLKERINFO);
    };
    INFO_CLEARCHOICES(73494);
    if ((((Q308_BRADLOCK_WANTSTOWORK) == (TRUE)) || ((VOLKER_HELLO_WORK) == (TRUE))) || ((VOLKER_HELLO_ATTEMPT) == (TRUE))) {
        if ((VOLKER_HELLO_JORN) == (FALSE)) {
            INFO_ADDCHOICE(73494, "I'm trying to find someone close to me.", 73505);
        };
    };
    if ((VOLKER_HELLO_MODEST) == (FALSE)) {
        INFO_ADDCHOICE(73494, "They don't look modest to me.", 73509);
    };
    if ((VOLKER_HELLO_WORK) == (FALSE)) {
        INFO_ADDCHOICE(73494, "I'd like to work for you.", 73510);
    };
    if ((VOLKER_HELLO_ATTEMPT) == (FALSE)) {
        INFO_ADDCHOICE(73494, "I was sent to solve the assassination attempt investigation.", 73507);
    };
}

func void DIA_VOLKER_HELLO_INFO() {
    if ((Q308_BRADLOCK_WANTSTOWORK) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_01");
        if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_02");
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_03");
        } else if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_04");
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_05");
        };
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_03_07");
    DIA_VOLKER_HELLO_CHOICES();
}

func void DIA_VOLKER_HELLO_JORN() {
    VOLKER_HELLO_JORN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Jorn_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Jorn_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Jorn_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Jorn_03_09");
    INFO_CLEARCHOICES(73494);
    INFO_ADDCHOICE(73494, "What are the guards interfering with?", 73514);
    if ((Q308_BRADLOCK_WANTSTOWORK) == (FALSE)) {
        INFO_ADDCHOICE(73494, "I think I know what we can do about this.", 73516);
    };
    INFO_ADDCHOICE(73494, "Once the investigation is resolved, the guards should leave.", 73528);
}

func void DIA_VOLKER_HELLO_ATTEMPT_DIALOGUE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Attempt_15_01");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Attempt_03_02");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Attempt_03_03");
    };
}

func void DIA_VOLKER_HELLO_ATTEMPT() {
    VOLKER_HELLO_ATTEMPT = TRUE;
    DIA_VOLKER_HELLO_ATTEMPT_DIALOGUE();
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Attempt_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Attempt_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Attempt_03_06");
    DIA_VOLKER_HELLO_CHOICES();
}

func void DIA_VOLKER_HELLO_MODEST_CHOICES() {
    INFO_CLEARCHOICES(73494);
    INFO_ADDCHOICE(73494, "He can also be brutal.", 73511);
    INFO_ADDCHOICE(73494, "What do you mean by that?", 73512);
    INFO_ADDCHOICE(73494, "I'm guessing you've always pursued the goal.", 73513);
}

func void DIA_VOLKER_HELLO_MODEST() {
    VOLKER_HELLO_MODEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Modest_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Modest_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Modest_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Modest_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Modest_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Modest_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Modest_03_07");
    DIA_VOLKER_HELLO_MODEST_CHOICES();
}

func void DIA_VOLKER_HELLO_WORK() {
    VOLKER_HELLO_WORK = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Work_03_02");
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Work_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Work_03_04");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Work_03_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Work_03_06");
    };
    DIA_VOLKER_HELLO_CHOICES();
}

func void DIA_VOLKER_HELLO_MODEST_BRUTAL() {
    VOLKER_HELLO_MODEST_COUNT = (VOLKER_HELLO_MODEST_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Brutal_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Brutal_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Brutal_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Brutal_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Brutal_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Brutal_03_06");
    if ((VOLKER_HELLO_MODEST_COUNT) == (3)) {
        DIA_VOLKER_HELLO_CHOICES();
    };
}

func void DIA_VOLKER_HELLO_MODEST_WHAT() {
    VOLKER_HELLO_MODEST_COUNT = (VOLKER_HELLO_MODEST_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_What_03_04");
    if ((VOLKER_HELLO_MODEST_COUNT) == (3)) {
        DIA_VOLKER_HELLO_CHOICES();
    };
}

func void DIA_VOLKER_HELLO_MODEST_GUESS() {
    VOLKER_HELLO_MODEST_COUNT = (VOLKER_HELLO_MODEST_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Guess_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Guess_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Guess_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Guess_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Guess_03_05");
    if ((VOLKER_HELLO_MODEST_COUNT) == (3)) {
        DIA_VOLKER_HELLO_CHOICES();
    };
}

func void DIA_VOLKER_HELLO_JORN_MILLITIA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Millitia_15_01");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Millitia_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Millitia_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Millitia_03_04");
}

func void DIA_VOLKER_HELLO_WHY_CHOICE() {
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Leave_03_02");
    INFO_CLEARCHOICES(73494);
    INFO_ADDCHOICE(73494, "Why do you think that?", 73521);
}

func void DIA_VOLKER_HELLO_JORN_MILLITIA_KNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_KNOW_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_KNOW_03_02");
    DIA_VOLKER_HELLO_ATTEMPT_DIALOGUE();
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_KNOW_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_KNOW_15_04");
    DIA_VOLKER_HELLO_WHY_CHOICE();
}

var int VOLKER_HELLO_WRONG;
var int VOLKER_HELLO_WHATCAN;
var int VOLKER_HELLO_SEE;
func void DIA_VOLKER_HELLO_MOREINFO() {
    INFO_CLEARCHOICES(73494);
    if ((VOLKER_HELLO_WRONG) == (FALSE)) {
        INFO_ADDCHOICE(73494, "Are you saying that the guard grabbed the wrong person?", 73524);
    };
    if ((VOLKER_HELLO_WHATCAN) == (FALSE)) {
        INFO_ADDCHOICE(73494, "What can you tell me about this organization?", 73525);
    };
    if ((VOLKER_HELLO_SEE) == (FALSE)) {
        INFO_ADDCHOICE(73494, "Did you see the assassin?", 73527);
    };
}

func void DIA_VOLKER_HELLO_WHY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_WHY_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WHY_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WHY_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_WHY_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WHY_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WHY_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WHY_03_07");
    DIA_VOLKER_HELLO_MOREINFO();
}

func void DIA_VOLKER_HELLO_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Next_03_02");
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_VOLKER_STARTINVESTIGATION);
    INFO_CLEARCHOICES(73494);
    INFO_ADDCHOICE(73494, "All right. I agree to this arrangement.", 73523);
}

func void DIA_VOLKER_HELLO_LETSGO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_LetsGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_LetsGo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_LetsGo_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_LetsGo_03_04");
    INFO_CLEARCHOICES(73494);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q308, LOG_Q308_VOLKERINFO2);
    LOG_CREATETOPIC(TOPIC_SQ305, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ305), TOPIC_SQ305, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ305, LOG_SQ305_PRESTART);
    LOG_CREATETOPIC(TOPIC_Q309, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q309), TOPIC_Q309, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q309, LOG_Q309_PRESTART);
    LOG_CREATETOPIC(TOPIC_Q311, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_Q311), TOPIC_Q311, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PRESTART);
    AI_FUNCTION(SELF, 63753);
}

func void DIA_VOLKER_HELLO_WRONG() {
    VOLKER_HELLO_WRONG = TRUE;
    VOLKER_HELLO_INVESTIGATION_COUNT = (VOLKER_HELLO_INVESTIGATION_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Wrong_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Wrong_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Wrong_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Wrong_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Wrong_03_05");
    if ((VOLKER_HELLO_INVESTIGATION_COUNT) == (3)) {
        DIA_VOLKER_HELLO_NEXT();
    };
}

func void DIA_VOLKER_HELLO_WHATCAN() {
    VOLKER_HELLO_WHATCAN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_WhatCan_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WhatCan_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WhatCan_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_WhatCan_03_04");
    INFO_CLEARCHOICES(73494);
    INFO_ADDCHOICE(73494, "Why do they want you dead?", 73526);
}

func void DIA_VOLKER_HELLO_WRONG_DEATH() {
    VOLKER_HELLO_INVESTIGATION_COUNT = (VOLKER_HELLO_INVESTIGATION_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Death_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Death_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Death_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Death_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_Death_03_05");
    if ((VOLKER_HELLO_INVESTIGATION_COUNT) == (3)) {
        DIA_VOLKER_HELLO_NEXT();
    };
    DIA_VOLKER_HELLO_MOREINFO();
}

func void DIA_VOLKER_HELLO_SEE() {
    VOLKER_HELLO_SEE = TRUE;
    VOLKER_HELLO_INVESTIGATION_COUNT = (VOLKER_HELLO_INVESTIGATION_COUNT) + (1);
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_See_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_See_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_See_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_See_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_HELLO_See_03_05");
    if ((VOLKER_HELLO_INVESTIGATION_COUNT) == (3)) {
        DIA_VOLKER_HELLO_NEXT();
    };
}

func void DIA_VOLKER_HELLO_JORN_LEAVE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_HELLO_Leave_15_01");
    DIA_VOLKER_HELLO_WHY_CHOICE();
}

instance DIA_VOLKER_IVYTRIALOG(C_INFO) {
    NPC = 53402;
    NR = 1;
    CONDITION = DIA_VOLKER_IVYTRIALOG_CONDITION;
    INFORMATION = DIA_VOLKER_IVYTRIALOG_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKER_IVYTRIALOG_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q308)) == (LOG_SUCCESS)) {
        if (((NPC_GETDISTTOWP(VLK_15000_VOLKER, "PARTM4_VOLKER_HOUSE_FIREPLACE")) <= (300)) && ((NPC_GETDISTTOWP(NONE_16_IVY, "PARTM4_VOLKER_HOUSE_18")) <= (300))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_IVYTRIALOG_INFO() {
    TRIA_INVITE(NONE_16_IVY);
    TRIA_START();
    AI_LOOKATNPC(SELF, OTHER);
    AI_LOOKATNPC(OTHER, SELF);
    TRIA_WAIT();
    TRIA_NEXT(VLK_15000_VOLKER);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_03_01");
    TRIA_WAIT();
    TRIA_NEXT(NONE_16_IVY);
    AI_TURNTONPC(SELF, NONE_16_IVY);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_03_03");
    TRIA_WAIT();
    TRIA_NEXT(VLK_15000_VOLKER);
    AI_TURNTONPC(SELF, NONE_16_IVY);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_03_05");
    INFO_CLEARCHOICES(73529);
    INFO_ADDCHOICE(73529, DIALOG_BESILENT, 73533);
    INFO_ADDCHOICE(73529, "Real? What do you mean, real? Then who was the beheaded man?", 73534);
    INFO_ADDCHOICE(73529, "What about my brother's kidnappers? When do we get them?", 73535);
}

func void DIA_VOLKER_IVYTRIALOG_NEXT() {
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Next_03_04");
    INFO_CLEARCHOICES(73529);
    if (NPC_KNOWSINFO(OTHER, 69060)) {
        INFO_ADDCHOICE(73529, "I ran into a group of Southerners...", 73537);
    };
    INFO_ADDCHOICE(73529, "During the investigation, I learned that the bolt came from the Wolf's Den.", 73536);
}

func void DIA_VOLKER_IVYTRIALOG_QUIET() {
    DIA_VOLKER_IVYTRIALOG_NEXT();
}

func void DIA_VOLKER_IVYTRIALOG_REAL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_IvyTrialog_Real_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Real_03_02");
    DIA_VOLKER_IVYTRIALOG_NEXT();
}

func void DIA_VOLKER_IVYTRIALOG_BROTHER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_IvyTrialog_Brother_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Brother_03_02");
    DIA_VOLKER_IVYTRIALOG_NEXT();
}

func void DIA_VOLKER_IVYTRIALOG_BROTHER_NEXT_INVESTIGATION() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_IvyTrialog_Investigation_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_02");
    AI_TURNTONPC(SELF, NONE_16_IVY);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_05");
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Investigation_03_07");
    if ((Q308_WHOWILLDIE) == (1)) {
        CREATEINVITEMS(SELF, 34203, Q308_VOLKERREWARD_V1);
    };
    CREATEINVITEMS(SELF, 34203, Q308_VOLKERREWARD_V2);
    B_GIVEINVITEMS(SELF, OTHER, 34203, Q308_VOLKERREWARD_V2);
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q400, LOG_Q400_START);
    AI_FUNCTION(SELF, 73538);
}

func void DIA_VOLKER_IVYTRIALOG_BROTHER_NEXT_SOUTHERNERS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_IvyTrialog_Southerners_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Southerners_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_IvyTrialog_Southerners_03_03");
}

func void VOLKER_STARTCHAPTER4() {
    B_CHAPTERCHANGE(4, ARCHOLOS_ZEN, TRUE);
}

instance DIA_VOLKER_AMBIENT(C_INFO) {
    NPC = 53402;
    NR = 997;
    CONDITION = DIA_VOLKER_AMBIENT_CONDITION;
    INFORMATION = DIA_VOLKER_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the situation?";
}

func int DIA_VOLKER_AMBIENT_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 73494)) && (((LOG_GETSTATUS(MIS_Q308)) == (LOG_RUNNING)) || ((KAPITEL) == (4)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int Q309_VOLKERAMBIENT;
var int Q311_VOLKERAMBIENT;
func void DIA_VOLKER_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Ambient_15_00");
    if ((LOG_GETSTATUS(MIS_Q308)) != (LOG_SUCCESS)) {
        if (((LOG_GETSTATUS(MIS_Q309)) == (LOG_SUCCESS)) && ((Q309_VOLKERAMBIENT) == (FALSE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_Ambient_13_01");
            Q309_VOLKERAMBIENT = TRUE;
        } else if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_SUCCESS)) && ((Q311_VOLKERAMBIENT) == (FALSE))) {
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_Ambient_13_03");
            Q311_VOLKERAMBIENT = TRUE;
        } else {
            AI_OUTPUT(SELF, OTHER, "DIA_Volker_Ambient_13_04");
        };
    };
    if ((KAPITEL) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_Ambient_13_05");
    };
}

instance DIA_VOLKER_GUARDS(C_INFO) {
    NPC = 53402;
    NR = 50;
    CONDITION = DIA_VOLKER_GUARDS_CONDITION;
    INFORMATION = DIA_VOLKER_GUARDS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You got a lot of bodyguards here.";
}

func int DIA_VOLKER_GUARDS_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73494)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_GUARDS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Guards_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Guards_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Guards_03_03");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Guards_03_04");
    AI_RESETFACEANI(SELF);
}

instance DIA_VOLKER_WHAT(C_INFO) {
    NPC = 53402;
    NR = 60;
    CONDITION = DIA_VOLKER_WHAT_CONDITION;
    INFORMATION = DIA_VOLKER_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What exactly do you do?";
}

func int DIA_VOLKER_WHAT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73494)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_WHAT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_What_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_What_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_What_03_08");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_VOLKER_OLDCITY(C_INFO) {
    NPC = 53402;
    NR = 60;
    CONDITION = DIA_VOLKER_OLDCITY_CONDITION;
    INFORMATION = DIA_VOLKER_OLDCITY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I thought all the rich people lived in Old Town.";
}

func int DIA_VOLKER_OLDCITY_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73547)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_OLDCITY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_OldCity_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_OldCity_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_OldCity_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_OldCity_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_OldCity_03_05");
}

instance DIA_VOLKER_BUILDING(C_INFO) {
    NPC = 53402;
    NR = 60;
    CONDITION = DIA_VOLKER_BUILDING_CONDITION;
    INFORMATION = DIA_VOLKER_BUILDING_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Does that big building across the street belong to you too?";
}

func int DIA_VOLKER_BUILDING_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73550)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_BUILDING_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Building_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Building_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Building_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Building_03_04");
    AI_RESETFACEANI(OTHER);
}

instance DIA_VOLKER_GIVEGOLD(C_INFO) {
    NPC = 53402;
    NR = 60;
    CONDITION = DIA_VOLKER_GIVEGOLD_CONDITION;
    INFORMATION = DIA_VOLKER_GIVEGOLD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Can you lend me some money?";
}

func int DIA_VOLKER_GIVEGOLD_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 73553)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_GIVEGOLD_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_GiveGold_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_GiveGold_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_VOLKER_PICKPOCKET(C_INFO) {
    NPC = 53402;
    NR = 900;
    CONDITION = DIA_VOLKER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_VOLKER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_VOLKER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(73559);
    INFO_ADDCHOICE(73559, DIALOG_BACK, 73563);
    INFO_ADDCHOICE(73559, DIALOG_PICKPOCKET, 73562);
}

func void DIA_VOLKER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 34202, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34202, 1);
        CREATEINVITEMS(SELF, 40497, 1);
        B_GIVEINVITEMS(SELF, OTHER, 40497, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(73559);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(73559);
}

func void DIA_VOLKER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(73559);
}

