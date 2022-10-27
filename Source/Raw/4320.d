instance DIA_FOLKARD_EXIT(C_INFO) {
    NPC = 0xe14e;
    NR = 999;
    CONDITION = DIA_FOLKARD_EXIT_CONDITION;
    INFORMATION = DIA_FOLKARD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_FOLKARD_EXIT_CONDITION() {
    return TRUE;
}

var int FOLKARD_CANTEACH2H = 0;
func void DIA_FOLKARD_EXIT_INFO() {
    if ((FOLKARD_CANTEACH2H) == (FALSE)) {
        FOLKARD_CANTEACH2H = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Train_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Train_03_03");
        TEACHER_LOGENTRY_FOLKARD();
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FOLKARD_AMBIENT(C_INFO) {
    NPC = 0xe14e;
    NR = 990;
    CONDITION = DIA_FOLKARD_AMBIENT_CONDITION;
    INFORMATION = DIA_FOLKARD_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_FOLKARD_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15d6c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Ambient_15_00");
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Ambient_13_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Ambient_13_02");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Ambient_13_03");
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Ambient_13_04");
    };
}

instance DIA_FOLKARD_BURGLARY(C_INFO) {
    NPC = 0xe14e;
    NR = 10;
    CONDITION = DIA_FOLKARD_BURGLARY_CONDITION;
    INFORMATION = DIA_FOLKARD_BURGLARY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FOLKARD_BURGLARY_CONDITION() {
    if ((NPC_HASITEMS(OTHER, 0x90cc)) && ((LOG_GETSTATUS(MIS_Q106)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_BURGLARY_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Burglary_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Burglary_03_03");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_FOLKARD_JORNGONE(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_JORNGONE_CONDITION;
    INFORMATION = DIA_FOLKARD_JORNGONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
    DESCRIPTION = "Can I ask you a few questions?";
}

func int DIA_FOLKARD_JORNGONE_CONDITION() {
    if ((LOG_GETSTATUS(MIS_GQ001)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_JORNGONE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_03_02");
    INFO_CLEARCHOICES(0x15d66);
    INFO_ADDCHOICE(0x15d66, "What do you know about this break-in?", 0x15d6a);
    INFO_ADDCHOICE(0x15d66, "Have you seen Jorn anywhere lately?", 0x15d6b);
}

func void DIA_FOLKARD_JORNGONE_THANKS() {
    GQ001_FALKARDINFO = (GQ001_FALKARDINFO) + (1);
    if ((GQ001_FALKARDINFO) >= (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_15_03");
        AI_LOGENTRY(TOPIC_GQ001, LOG_GQ001_FOLKARD_JORN);
        AI_STOPPROCESSINFOS(SELF);
        NPC_EXCHANGEROUTINE(MIL_710_FOLKARD, START);
        NPC_EXCHANGEROUTINE(BAU_701_KURT, "Speach");
    };
}

func void DIA_FOLKARD_JORNGONE_WHATUKNOW() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_whatuknow_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_whatuknow_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_whatuknow_03_03");
    DIA_FOLKARD_JORNGONE_THANKS();
}

func void DIA_FOLKARD_JORNGONE_HAVEUSEEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_haveuseen_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_haveuseen_15_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_haveuseen_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_JornGone_haveuseen_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_JornGone_haveuseen_03_10");
    DIA_FOLKARD_JORNGONE_THANKS();
}

instance DIA_FOLKARD_HELLO(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_HELLO_CONDITION;
    INFORMATION = DIA_FOLKARD_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FOLKARD_HELLO_CONDITION() {
    if ((((Q105_JORNVINETRIP) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q105)) != (LOG_RUNNING))) && (!(NPC_KNOWSINFO(OTHER, 0x12e98)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_HELLO_INFO() {
    if ((LOG_GETSTATUS(MIS_Q105)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_03_01");
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_03_02");
    };
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_03_03");
    INFO_CLEARCHOICES(0x15d6c);
    INFO_ADDCHOICE(0x15d6c, "It's none of your business who I am or what I'm doing here.", 0x15d70);
    INFO_ADDCHOICE(0x15d6c, "Don't you want to punch me, call me names and spit on me?", 0x15d71);
    INFO_ADDCHOICE(0x15d6c, "My name is Marvin and I recently arrived on the island.", 0x15d6f);
}

func void DIA_FOLKARD_HELLO_MYNAMEISMARVIN() {
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_MyNameIsMarvin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_MyNameIsMarvin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_MyNameIsMarvin_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_MyNameIsMarvin_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_MyNameIsMarvin_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_MyNameIsMarvin_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_MyNameIsMarvin_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_MyNameIsMarvin_03_08");
    INFO_CLEARCHOICES(0x15d6c);
}

func void DIA_FOLKARD_HELLO_PISSOFF() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_PissOff_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_PissOff_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_PissOff_03_03");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(0x15d6c);
}

func void DIA_FOLKARD_HELLO_SUPRISED() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_Suprised_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_Suprised_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Hello_Suprised_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Hello_Suprised_03_04");
    AI_RESETFACEANI(OTHER);
}

instance DIA_FOLKARD_YOURWORK(C_INFO) {
    NPC = 0xe14e;
    NR = 2;
    CONDITION = DIA_FOLKARD_YOURWORK_CONDITION;
    INFORMATION = DIA_FOLKARD_YOURWORK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What do you do here?";
}

func int DIA_FOLKARD_YOURWORK_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15d6c)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_YOURWORK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_YourWork_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_YourWork_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_YourWork_03_03");
}

instance DIA_FOLKARD_SQ109_START(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_SQ109_START_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_START_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Your replacement is missing?";
}

func int DIA_FOLKARD_SQ109_START_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x15d72)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ109_START_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_Start_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Start_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Start_03_03");
    INFO_CLEARCHOICES(0x15d75);
    INFO_ADDCHOICE(0x15d75, "I don't have time for this.", 0x15d7b);
    INFO_ADDCHOICE(0x15d75, "Maybe I could check out what's going on with him.", 0x15d79);
}

func void DIA_FOLKARD_SQ109_STARTQUEST() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_StartQuest_03_02");
    LOG_CREATETOPIC(TOPIC_SQ109, LOG_MISSION);
    LOG_SETSTATUS(_@(MIS_SQ109), TOPIC_SQ109, LOG_RUNNING);
    AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_START);
    INFO_CLEARCHOICES(0x15d75);
    INFO_ADDCHOICE(0x15d75, "For the right payment...", 0x15d80);
    INFO_ADDCHOICE(0x15d75, "Why not? I can try.", 0x15d7c);
    INFO_CLEARCHOICES(0x15d84);
    INFO_ADDCHOICE(0x15d84, "For the right payment...", 0x15d80);
    INFO_ADDCHOICE(0x15d84, "Why not? I can try.", 0x15d7c);
    SQ109_SPAWNROLF();
}

func void DIA_FOLKARD_SQ109_ACCEPTQUEST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_StartQuest_15_01");
    DIA_FOLKARD_SQ109_STARTQUEST();
}

var int FOLKARD_SQ109_TAKEQUEST = 0;
func void DIA_FOLKARD_SQ109_CANCELQUEST() {
    FOLKARD_SQ109_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_CancelQuest_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_CancelQuest_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_CancelQuest_03_03");
    INFO_CLEARCHOICES(0x15d75);
}

func void DIA_FOLKARD_SQ109_START_WITHOUTGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_WithoutGold_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_WithoutGold_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_WithoutGold_15_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_WithoutGold_03_04");
    INFO_CLEARCHOICES(0x15d75);
    INFO_ADDCHOICE(0x15d75, "I already have my weapon with me.", 0x15d83);
    INFO_ADDCHOICE(0x15d75, "Something would come in handy.", 0x15d82);
    INFO_CLEARCHOICES(0x15d84);
    INFO_ADDCHOICE(0x15d84, "I already have my weapon with me.", 0x15d83);
    INFO_ADDCHOICE(0x15d84, "Something would come in handy.", 0x15d82);
}

var int FOLKARD_SQ109_NOSWORDFORYOU = 0;
var int FOLKARD_SQ109_WANTGOLD = 0;
var int FOLKARD_SQ109_INEEDSWORD = 0;
func void DIA_FOLKARD_SQ109_START_WITHGOLD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_WithGold_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_WithGold_03_02");
    FOLKARD_SQ109_NOSWORDFORYOU = TRUE;
    FOLKARD_SQ109_WANTGOLD = TRUE;
    INFO_CLEARCHOICES(0x15d75);
    INFO_CLEARCHOICES(0x15d84);
}

func void DIA_FOLKARD_SQ109_GIVESWORD() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_INeedSword_03_02");
    CREATEINVITEMS(SELF, 0x84e0, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x84e0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_INeedSword_15_03");
    INFO_CLEARCHOICES(0x15d75);
    INFO_CLEARCHOICES(0x15d84);
}

func void DIA_FOLKARD_SQ109_START_NEEDSWORD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_INeedSword_15_01");
    DIA_FOLKARD_SQ109_GIVESWORD();
}

func void DIA_FOLKARD_SQ109_START_IAMGOOD() {
    FOLKARD_SQ109_INEEDSWORD = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_IAmGood_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_IAmGood_03_02");
    INFO_CLEARCHOICES(0x15d75);
}

instance DIA_FOLKARD_SQ109_TAKEQUEST(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_SQ109_TAKEQUEST_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_TAKEQUEST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I'll look for your replacement.";
}

func int DIA_FOLKARD_SQ109_TAKEQUEST_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x15d75)) && ((FOLKARD_SQ109_TAKEQUEST) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ109_TAKEQUEST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_TakeQuest_15_01");
    DIA_FOLKARD_SQ109_ACCEPTQUEST();
}

instance DIA_FOLKARD_SQ109_QUESTIONS(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_SQ109_QUESTIONS_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_QUESTIONS_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I have a couple of questions.";
}

func int DIA_FOLKARD_SQ109_QUESTIONS_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_RUNNING)) {
        if (((FOLKARD_SQ109_BOAT) == (FALSE)) || ((FOLKARD_SQ109_ROLF) == (FALSE))) {
            if (!(NPC_KNOWSINFO(OTHER, 0x14fe6))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

var int FOLKARD_SQ109_BOAT = 0;
var int FOLKARD_SQ109_ROLF = 0;
func void DIA_FOLKARD_SQ109_QUESTIONS_INFO() {
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(0x15d87);
    INFO_ADDCHOICE(0x15d87, DIALOG_BACK, 0x15d8c);
    if ((FOLKARD_SQ109_ROLF) == (FALSE)) {
        INFO_ADDCHOICE(0x15d87, "What does Rolf look like?", 0x15d8e);
    };
    if ((FOLKARD_SQ109_BOAT) == (FALSE)) {
        INFO_ADDCHOICE(0x15d87, "Where is this boat?", 0x15d8d);
    };
}

func void DIA_FOLKARD_SQ109_QUESTIONS_BACK() {
    INFO_CLEARCHOICES(0x15d87);
}

func void DIA_FOLKARD_SQ109_QUESTIONS_BOAT() {
    FOLKARD_SQ109_BOAT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_Questions_Boat_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Questions_Boat_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Questions_Boat_03_03");
    AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FOLKARD_BOAT);
}

func void DIA_FOLKARD_SQ109_QUESTIONS_ROLF() {
    FOLKARD_SQ109_ROLF = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_Questions_Rolf_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Questions_Rolf_03_02");
    AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FOLKARD_ROLFDESIGN);
}

instance DIA_FOLKARD_SQ109_NEEDTHATSWORD(C_INFO) {
    NPC = 0xe14e;
    NR = 4;
    CONDITION = DIA_FOLKARD_SQ109_NEEDTHATSWORD_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_NEEDTHATSWORD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I think I could use a weapon of some sort though.";
}

func int DIA_FOLKARD_SQ109_NEEDTHATSWORD_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x15d72)) && ((FOLKARD_SQ109_INEEDSWORD) == (TRUE))) && ((FOLKARD_SQ109_NOSWORDFORYOU) == (FALSE))) && ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ109_NEEDTHATSWORD_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_NeedThatSword_15_01");
    DIA_FOLKARD_SQ109_GIVESWORD();
}

instance DIA_FOLKARD_SQ109_FOUNDROLF(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_SQ109_FOUNDROLF_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_FOUNDROLF_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Rolf is safe now.";
}

func int DIA_FOLKARD_SQ109_FOUNDROLF_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14ff9)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int FOLKARD_SQ109_ROLFISDEAD = 0;
func void DIA_FOLKARD_SQ109_FOUNDROLF_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_03_04");
    INFO_CLEARCHOICES(0x15d92);
    INFO_ADDCHOICE(0x15d92, "A couple of wolves, but we dealt with them somehow.", 0x15d9a);
    INFO_ADDCHOICE(0x15d92, "Well, that was easy.", 0x15d9b);
}

func void FOLKARD_SQ109_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_SQ109), TOPIC_SQ109, LOG_SUCCESS);
    GIVEREPUTATION_SILBACH();
    SQ109_SPAWNMONSTERS();
}

func void DIA_FOLKARD_SQ109_FOUNDROLF_TAKEGOLD() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_Finish_TakeGold_15_01");
    if ((FOLKARD_SQ109_WANTGOLD) == (TRUE)) {
        CREATEINVITEMS(SELF, 0x859b, SQ109_REWARD_TIER1);
    };
    CREATEINVITEMS(SELF, 0x859b, SQ109_REWARD_TIER2);
    if ((FOLKARD_SQ109_ROLFISDEAD) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_Finish_TakeGold_03_02");
    };
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, SQ109_REWARD_TIER2);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_Finish_TakeGold_03_03");
    if ((FOLKARD_SQ109_ROLFISDEAD) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FINISH_V2);
        B_GIVEPLAYERXP((XP_SQ109_ROLFISDEAD_TIER1) + ((XP_SQ109_FOUNDITEMS) * (SQ109_HOWMANYFOUNDITEMS)));
    };
    AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FINISH_V1);
    B_GIVEPLAYERXP((XP_SQ109_FOUNDROLF) + ((XP_SQ109_FOUNDITEMS) * (SQ109_HOWMANYFOUNDITEMS)));
    FOLKARD_SQ109_FINISHQUEST();
    INFO_CLEARCHOICES(0x15d92);
    INFO_CLEARCHOICES(0x15d9c);
}

func void DIA_FOLKARD_SQ109_FOUNDROLF_GIVESTUFF() {
    if ((((NPC_HASITEMS(OTHER, 0x90a9)) >= (1)) || ((NPC_HASITEMS(OTHER, 0x90aa)) >= (1))) || ((NPC_HASITEMS(OTHER, 0x8e27)) >= (1))) {
        AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_Finish_15_01");
        SQ109_GIVESTUFF();
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_Finish_03_02");
    };
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_Finish_03_03");
    if ((FOLKARD_SQ109_ROLFISDEAD) == (TRUE)) {
        INFO_CLEARCHOICES(0x15d9c);
        INFO_ADDCHOICE(0x15d9c, "Thanks, they'll come in handy.", 0x15d97);
        INFO_ADDCHOICE(0x15d9c, "Pass them on to Rolf's family.", 0x15d99);
    };
    DIA_FOLKARD_SQ109_FOUNDROLF_TAKEGOLD();
}

func void DIA_FOLKARD_SQ109_ROLFDEAD_IDONTWANTTHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_Finish_NoThanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Finish_NoThanks_03_02");
    AI_LOGENTRY(TOPIC_SQ109, LOG_SQ109_FINISH_V3);
    FOLKARD_SQ109_FINISHQUEST();
    B_GIVEPLAYERXP((XP_SQ109_ROLFISDEAD_TIER2) + ((XP_SQ109_FOUNDITEMS) * (SQ109_HOWMANYFOUNDITEMS)));
    INFO_CLEARCHOICES(0x15d9c);
}

func void DIA_FOLKARD_SQ109_FOUNDROLF_WOLFSATTACK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_WolfsAttack_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_WolfsAttack_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_WolfsAttack_03_03");
    DIA_FOLKARD_SQ109_FOUNDROLF_GIVESTUFF();
}

func void DIA_FOLKARD_SQ109_FOUNDROLF_EASYQUEST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_EasyQuest_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_EasyQuest_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_EasyQuest_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_FoundRolf_EasyQuest_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_FoundRolf_EasyQuest_03_05");
    DIA_FOLKARD_SQ109_FOUNDROLF_GIVESTUFF();
}

instance DIA_FOLKARD_SQ109_ROLFDEAD(C_INFO) {
    NPC = 0xe14e;
    NR = 2;
    CONDITION = DIA_FOLKARD_SQ109_ROLFDEAD_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_ROLFDEAD_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FOLKARD_SQ109_ROLFDEAD_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_RUNNING)) {
        if (NPC_ISDEAD(BAU_11044_ROLF)) {
            if (((SQ109_ROLFFOUNDDEAD) == (TRUE)) || ((SQ109_ROLFDIED) == (TRUE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ109_ROLFDEAD_INFO() {
    FOLKARD_SQ109_ROLFISDEAD = TRUE;
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_RolfDead_03_01");
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    if ((SQ109_ROLFFOUNDDEAD) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_RolfDead_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_RolfDead_03_03");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_RolfDead_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_RolfDead_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_RolfDead_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_RolfDead_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_RolfDead_03_08");
    AI_RESETFACEANI(OTHER);
    DIA_FOLKARD_SQ109_FOUNDROLF_GIVESTUFF();
}

instance DIA_FOLKARD_SQ109_BEAST(C_INFO) {
    NPC = 0xe14e;
    NR = 90;
    CONDITION = DIA_FOLKARD_SQ109_BEAST_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ109_BEAST_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "By the way, Rolf mentioned that he saw some kind of Beast.";
}

func int DIA_FOLKARD_SQ109_BEAST_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)) && (NPC_KNOWSINFO(OTHER, 0x14ff3))) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_SUCCESS))) && ((LOG_GETSTATUS(MIS_SQ416)) != (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ109_BEAST_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ109_Beast_15_01");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Beast_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Beast_03_03");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ109_Beast_03_04");
}

instance DIA_FOLKARD_SQ118_NEEDHELP(C_INFO) {
    NPC = 0xe14e;
    NR = 10;
    CONDITION = DIA_FOLKARD_SQ118_NEEDHELP_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ118_NEEDHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need your help.";
}

func int DIA_FOLKARD_SQ118_NEEDHELP_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ118)) == (LOG_RUNNING)) && ((SQ118_EZEKIEL_GUARDHELP) == (1))) && ((SQ118_GUARDSCOUNT) < (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SQ118_FOLKAR_AGREE = 0;
func void DIA_FOLKARD_SQ118_NEEDHELP_READY() {
    SQ118_FOLKAR_AGREE = TRUE;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_10");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_11");
    AI_LOGENTRY(TOPIC_SQ118, LOG_SQ118_FOLKARD_READY);
    SQ118_COUNTGUARDS();
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ118_GUARD");
}

func void DIA_FOLKARD_SQ118_NEEDHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ118_NeedHelp_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ118_NeedHelp_15_03");
    if ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_04");
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_05");
        DIA_FOLKARD_SQ118_NEEDHELP_READY();
    };
    SQ118_FOLKARD_NEEDHELP = 1;
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_SQ118_NeedHelp_15_07");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_SQ118_NeedHelp_03_09");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ118, LOG_SQ118_FOLKARD_MARKUS);
}

instance DIA_FOLKARD_SQ118_FOUNDHELP(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_SQ118_FOUNDHELP_CONDITION;
    INFORMATION = DIA_FOLKARD_SQ118_FOUNDHELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_FOLKARD_SQ118_FOUNDHELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ118)) == (LOG_RUNNING)) && ((SQ118_GUARDSCOUNT) < (2))) {
        if ((SQ118_FOLKAR_AGREE) == (FALSE)) {
            if (((SQ118_FOLKARD_NEEDHELP) == (2)) || ((NPC_KNOWSINFO(OTHER, 0x15da2)) && ((LOG_GETSTATUS(MIS_SQ109)) == (LOG_SUCCESS)))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_SQ118_FOUNDHELP_INFO() {
    DIA_FOLKARD_SQ118_NEEDHELP_READY();
}

instance DIA_FOLKARD_OTHSHEEP(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_OTHSHEEP_CONDITION;
    INFORMATION = DIA_FOLKARD_OTHSHEEP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Haven't you seen a sheep somewhere lately?";
}

func int DIA_FOLKARD_OTHSHEEP_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x15bcf)) && (!(NPC_KNOWSINFO(OTHER, 0x15e5a)))) && ((LOG_GETSTATUS(MIS_SQ102)) == (LOG_RUNNING))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_OTHSHEEP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_OthSheep_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_OthSheep_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_OthSheep_15_03");
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_OUTPUT(SELF, OTHER, "DIA_Folkard_OthSheep_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_OthSheep_15_05");
    AI_LOGENTRY(TOPIC_SQ102, LOG_SQ102_FOLKARD_SEARCH);
}

var string FOLKARD_PRINTS = "";
var int FOLKARD_NOMORE = 0;
var int FOLKARD_CURRENT2HLEVEL = 0;
instance DIA_FOLKARD_TEACH(C_INFO) {
    NPC = 0xe14e;
    NR = 1;
    CONDITION = DIA_FOLKARD_TEACH_CONDITION;
    INFORMATION = DIA_FOLKARD_TEACH_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Let's start training.";
}

func int DIA_FOLKARD_TEACH_CONDITION() {
    if (((FOLKARD_CANTEACH2H) == (TRUE)) && ((FOLKARD_NOMORE) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_TEACH_CHOICES() {
    FOLKARD_GOLDCOST = 3;
    FOLKARD_CURRENT2HLEVEL = OTHER.AIVAR[85];
    INFO_CLEARCHOICES(0x15db0);
    INFO_ADDCHOICE(0x15db0, DIALOG_BACK, 0x15db5);
    INFO_ADDCHOICE(0x15db0, B_BUILDLEARNSTRING2(PRINT_LEARN2H1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 1), FOLKARD_GOLDCOST), 0x15db6);
    INFO_ADDCHOICE(0x15db0, B_BUILDLEARNSTRING2(PRINT_LEARN2H5, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_2H, 5), (FOLKARD_GOLDCOST) * (5)), 0x15db7);
}

var int DIA_FOLKARD_TEACH_CHOICES.FOLKARD_GOLDCOST = 0;
func void DIA_FOLKARD_TEACH_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Folkard_Teach_15_00");
    if ((OTHER.AIVAR[85]) < (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Teach_03_01");
        DIA_FOLKARD_TEACH_CHOICES();
    };
    if ((OTHER.AIVAR[85]) >= (30)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Teach_03_02");
        FOLKARD_NOMORE = TRUE;
    };
}

func void DIA_FOLKARD_TEACH_BACK() {
    INFO_CLEARCHOICES(0x15db0);
}

func void DIA_FOLKARD_TEACH_2H1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (FOLKARD_PAYMENT1)) {
        if ((FOLKARD_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, FOLKARD_PAYMENT1);
            NPC_REMOVEINVITEMS(SELF, 0x859b, FOLKARD_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 1, 30);
        DIA_FOLKARD_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (FOLKARD_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Teach_2H1_03_01");
        FOLKARD_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(FOLKARD_PAYMENT1));
        PRINTSCREEN(FOLKARD_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_FOLKARD_TEACH_CHOICES();
    };
}

func void DIA_FOLKARD_TEACH_2H5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (FOLKARD_PAYMENT5)) {
        if ((FOLKARD_CURRENT2HLEVEL) < (OTHER.AIVAR[85])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, FOLKARD_PAYMENT5);
            NPC_REMOVEINVITEMS(SELF, 0x859b, FOLKARD_PAYMENT5);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_2H, 5, 30);
        DIA_FOLKARD_TEACH_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (FOLKARD_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Folkard_Teach_2H5_03_01");
        FOLKARD_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(FOLKARD_PAYMENT5));
        PRINTSCREEN(FOLKARD_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_FOLKARD_TEACH_CHOICES();
    };
}

instance DIA_FOLKARD_PICKPOCKET(C_INFO) {
    NPC = 0xe14e;
    NR = 900;
    CONDITION = DIA_FOLKARD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_FOLKARD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_FOLKARD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_FOLKARD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x15db8);
    INFO_ADDCHOICE(0x15db8, DIALOG_BACK, 0x15dbc);
    INFO_ADDCHOICE(0x15db8, DIALOG_PICKPOCKET, 0x15dbb);
}

func void DIA_FOLKARD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x15db8);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x15db8);
}

func void DIA_FOLKARD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x15db8);
}
