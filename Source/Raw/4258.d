instance DIA_DUSTER_VZ_EXIT(C_INFO) {
    NPC = 0xe730;
    NR = 999;
    CONDITION = DIA_DUSTER_VZ_EXIT_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DUSTER_VZ_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DUSTER_VZ_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DUSTER_Q514_LEAVE(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_Q514_LEAVE_CONDITION;
    INFORMATION = DIA_DUSTER_Q514_LEAVE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DUSTER_Q514_LEAVE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1545f))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_Q514_LEAVE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_Leave_03_01");
    INFO_CLEARCHOICES(0x15390);
    INFO_ADDCHOICE(0x15390, "If you're in such a hurry, you can always go back alone.", 0x15395);
    if ((((Q514_SWORD_CUTSCENE) == (4)) && ((NPC_HASITEMS(OTHER, 0x9a2a)) >= (1))) && ((NPC_HASITEMS(OTHER, 0x92f7)) >= (1))) {
        INFO_ADDCHOICE(0x15390, "Yeah, we got the Peacemaker. Time to leave this place.", 0x15394);
    };
}

func void DIA_DUSTER_Q514_LEAVE_WHATNEXT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Leave_Yes_15_02");
    INFO_CLEARCHOICES(0x15390);
    INFO_ADDCHOICE(0x15390, "Any idea how to get out of here?", 0x15396);
    INFO_CLEARCHOICES(0x15397);
    INFO_ADDCHOICE(0x15397, "Any idea how to get out of here?", 0x15396);
}

func void DIA_DUSTER_Q514_LEAVE_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Leave_Yes_15_01");
    DIA_DUSTER_Q514_LEAVE_WHATNEXT();
}

func void DIA_DUSTER_Q514_LEAVE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Leave_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_Leave_No_03_02");
    INFO_CLEARCHOICES(0x15390);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_DUSTER_Q514_LEAVE_YES_WAY() {
    Q514_SWORD_KICKBROKENWALL = 1;
    MOB_CHANGEFOCUSNAME("VZ_KICKWALL", "MOBNAME_KICK");
    MDL_REMOVEOVERLAYMDS(SELF, HUMANSFLEEMDS);
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Leave_Way_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_Leave_Way_03_02");
    NPC_EXCHANGEROUTINE(SELF, FOLLOW);
    INFO_CLEARCHOICES(0x15390);
    INFO_CLEARCHOICES(0x15397);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DUSTER_Q514_READYLEAVE(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_Q514_READYLEAVE_CONDITION;
    INFORMATION = DIA_DUSTER_Q514_READYLEAVE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Follow me, it's time to leave this place.";
}

func int DIA_DUSTER_Q514_READYLEAVE_CONDITION() {
    if (((((NPC_KNOWSINFO(OTHER, 0x15390)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((Q514_SWORD_CUTSCENE) == (4))) && ((NPC_HASITEMS(OTHER, 0x9a2a)) >= (1))) && ((NPC_HASITEMS(OTHER, 0x92f7)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_Q514_READYLEAVE_INFO() {
    DIA_DUSTER_Q514_LEAVE_WHATNEXT();
}

instance DIA_DUSTER_Q514_NOISE(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_Q514_NOISE_CONDITION;
    INFORMATION = DIA_DUSTER_Q514_NOISE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DUSTER_Q514_NOISE_CONDITION() {
    if (((((NPC_GETDISTTOWP(SELF, "VOLFZACK_CRAWLER_04")) <= (400)) && ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING))) && ((Q514_SWORD_FINISH) == (1))) && ((Q514_CRAWLER_SPOOKYNOISES) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_Q514_NOISE_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_Noise_03_01");
    INFO_CLEARCHOICES(0x1539a);
    INFO_ADDCHOICE(0x1539a, "I heard something. Be careful and stay close to me.", 0x1539e);
    INFO_ADDCHOICE(0x1539a, "You must have misheard.", 0x1539f);
}

func void DIA_DUSTER_Q514_NOISE_END() {
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(0x1539a);
    AI_STOPPROCESSINFOS(OTHER);
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DACK_NOISE);
}

func void DIA_DUSTER_Q514_NOISE_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Noise_Yes_15_01");
    DIA_DUSTER_Q514_NOISE_END();
}

func void DIA_DUSTER_Q514_NOISE_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_Q514_Noise_No_15_01");
    DIA_DUSTER_Q514_NOISE_END();
}

instance DIA_DUSTER_Q514_RUNAWAY(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_Q514_RUNAWAY_CONDITION;
    INFORMATION = DIA_DUSTER_Q514_RUNAWAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DUSTER_Q514_RUNAWAY_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1539a))) && ((NPC_GETDISTTOWP(SELF, "VOLFZACK_CRAWLER_08")) <= (750))) && ((Q514_CRAWLER_SPOOKYNOISES) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_Q514_RUNAWAY_INFO() {
    SELF.FLAGS = 0;
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_RunAway_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_Q514_RunAway_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DACK_RUNAWAY);
    NPC_EXCHANGEROUTINE(SELF, FLEE);
}

var string DUSTER_VZ_PRINTS = "";
var int DUSTER_VZ_NOMORE = 0;
var int DUSTER_VZ_CURRENTCBLEVEL = 0;
instance DIA_DUSTER_VZ_TRAIN(C_INFO) {
    NPC = 0xe730;
    NR = 7;
    CONDITION = DIA_DUSTER_VZ_TRAIN_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_TRAIN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Can you teach me something about mining?";
}

func int DIA_DUSTER_VZ_TRAIN_CONDITION() {
    if ((((DUSTER_VZ_NOMORE) == (FALSE)) && (NPC_KNOWSINFO(OTHER, 0x15441))) && (!(NPC_KNOWSINFO(OTHER, 0x1544e)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_TRAIN_CHOICES() {
    DUSTER_VZ_GOLDCOST = 10;
    DUSTER_VZ_CURRENTCBLEVEL = OTHER.HITCHANCE[4];
    INFO_CLEARCHOICES(0x153a6);
    INFO_ADDCHOICE(0x153a6, DIALOG_BACK, 0x153ab);
    if ((HERO_HACKCHANCE) <= (95)) {
        INFO_ADDCHOICE(0x153a6, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE5, 0, DUSTER_VZ_PAYMENT5), 0x153ad);
    };
    if ((HERO_HACKCHANCE) <= (99)) {
        INFO_ADDCHOICE(0x153a6, B_BUILDLEARNSTRING2(PRINT_LEARN_MINE1, 0, DUSTER_VZ_PAYMENT1), 0x153ac);
    };
}

var int DIA_DUSTER_VZ_TRAIN_CHOICES.DUSTER_VZ_GOLDCOST = 0;
func void DIA_DUSTER_VZ_TRAIN_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMeMining");
    if ((HERO_HACKCHANCE) >= (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
        DUSTER_VZ_NOMORE = TRUE;
    };
    B_SAY(SELF, OTHER, "$SURE_V1");
    DIA_DUSTER_VZ_TRAIN_CHOICES();
}

func void DIA_DUSTER_VZ_TRAIN_BACK() {
    INFO_CLEARCHOICES(0x153a6);
}

func void DIA_DUSTER_VZ_TRAIN_1POINTS() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DUSTER_VZ_PAYMENT1)) {
        if ((HERO_HACKCHANCE) < (100)) {
            B_UPGRADE_HERO_HACKCHANCE(1);
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_DUSTER_VZ_TRAIN_CHOICES();
}

func void DIA_DUSTER_VZ_TRAIN_5POINTS() {
    if ((HERO_HACKCHANCE) == (100)) {
        B_SAY(SELF, OTHER, "$NoLearnOverPersonalMAX");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DUSTER_VZ_PAYMENT5)) {
        if ((HERO_HACKCHANCE) < (95)) {
            B_UPGRADE_HERO_HACKCHANCE(5);
        } else {
            B_UPGRADE_HERO_HACKCHANCE((100) - (HERO_HACKCHANCE));
        } else {
            /* set_instance(0) */;
        };
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_DUSTER_VZ_TRAIN_CHOICES();
}

func void DIA_DUSTER_VZ_TRAIN_CROSSBOW1() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DUSTER_VZ_PAYMENT1)) {
        if ((DUSTER_VZ_CURRENTCBLEVEL) < (OTHER.HITCHANCE[4])) {
            SND_PLAY(GELDBEUTEL);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DUSTER_VZ_PAYMENT1);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 1, 100);
        DIA_DUSTER_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DUSTER_VZ_PAYMENT1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Train_CROSSBOW1_03_01");
        DUSTER_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DUSTER_VZ_PAYMENT1));
        PRINTSCREEN(DUSTER_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DUSTER_VZ_TRAIN_CHOICES();
    };
}

func void DIA_DUSTER_VZ_TRAIN_CROSSBOW5() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (DUSTER_VZ_PAYMENT5)) {
        if ((DUSTER_VZ_CURRENTCBLEVEL) < (OTHER.HITCHANCE[4])) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, DUSTER_VZ_PAYMENT5);
            SND_PLAY(GELDBEUTEL);
        };
        B_TEACHFIGHTTALENTPERCENT(SELF, OTHER, NPC_TALENT_CROSSBOW, 5, 100);
        DIA_DUSTER_VZ_TRAIN_CHOICES();
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (DUSTER_VZ_PAYMENT5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Train_CROSSBOW5_03_01");
        DUSTER_VZ_PRINTS = CONCATSTRINGS(PRINT_RGOLD, INTTOSTRING(DUSTER_VZ_PAYMENT5));
        PRINTSCREEN(DUSTER_VZ_PRINTS, -(1), -(1), FONT_SCREEN, 2);
        DIA_DUSTER_VZ_TRAIN_CHOICES();
    };
}

instance DIA_DUSTER_VZ_AMBIENT(C_INFO) {
    NPC = 0xe730;
    NR = 998;
    CONDITION = DIA_DUSTER_VZ_AMBIENT_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the morale?";
}

func int DIA_DUSTER_VZ_AMBIENT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_AMBIENT_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_VolfzackMorale3");
    if ((Q514_CATACOMBS_GARGOYLE_FIRSTMEETING) == (2)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Ambient_03_02");
    };
    if ((Q514_CAMPISREADY) == (FALSE)) {
        AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Ambient_03_03");
    };
    if ((Q514_CAMPISREADY) == (TRUE)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Ambient_03_04");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Ambient_03_01");
        };
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_DUSTER_VZ_Q514_KITCHENSTONES(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_VZ_Q514_KITCHENSTONES_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_Q514_KITCHENSTONES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I came across a room full of boulders. Looks like a pantry.";
}

func int DIA_DUSTER_VZ_Q514_KITCHENSTONES_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_BIGROCKSBLOCKWAY_V2_LOGENTRY) == (TRUE))) && ((Q514_TREASURY_EVENT) == (0))) && (((Q514_DUSTERWORK_TRAININGHALL) == (0)) || ((Q514_DUSTERWORK_TRAININGHALL) == (4)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_Q514_FIRSTTIMECOMMENT() {
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenStones_03_03");
}

var int DUSTER_VZ_Q514_FIRSTTIMECOMMENT = 0;
func void DIA_DUSTER_VZ_Q514_KITCHENSTONES_INFO() {
    Q514_DUSTERWORK_KITCHEN = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_KitchenStones_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_KitchenStones_15_02");
    if ((DUSTER_VZ_Q514_FIRSTTIMECOMMENT) == (FALSE)) {
        DUSTER_VZ_Q514_FIRSTTIMECOMMENT = TRUE;
        DIA_DUSTER_VZ_Q514_FIRSTTIMECOMMENT();
    };
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenStones_03_04");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_KITCHEN);
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q514_KITCHEN_GO");
    AI_FUNCTION(SELF, 0xefd9);
}

instance DIA_DUSTER_VZ_Q514_KITCHENHELP(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_VZ_Q514_KITCHENHELP_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_Q514_KITCHENHELP_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DUSTER_VZ_Q514_KITCHENHELP_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_DUSTERWORK_KITCHEN) == (3))) && ((Q514_TREASURY_EVENT) == (0))) && (((Q514_DUSTERWORK_TRAININGHALL) == (0)) || ((Q514_DUSTERWORK_TRAININGHALL) == (4)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_Q514_KITCHENHELP_INFO() {
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenHelp_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_KitchenHelp_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenHelp_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenHelp_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenHelp_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenHelp_03_06");
    AI_RESETFACEANI(SELF);
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_KITCHEN_SCARED);
}

instance DIA_DUSTER_VZ_Q514_KITCHENDEAD(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_VZ_Q514_KITCHENDEAD_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_Q514_KITCHENDEAD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I got rid of the skeletons.";
}

func int DIA_DUSTER_VZ_Q514_KITCHENDEAD_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_DUSTERWORK_KITCHEN) == (4))) && ((Q514_TREASURY_EVENT) == (0))) && (((Q514_DUSTERWORK_TRAININGHALL) == (0)) || ((Q514_DUSTERWORK_TRAININGHALL) == (4)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_Q514_KITCHENDEAD_INFO() {
    B_GIVEPLAYERXP(XP_Q514_DUSTER_KILLSKELE);
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_KitchenDead_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenDead_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_KitchenDead_03_03");
    AI_RESETFACEANI(SELF);
    NPC_EXCHANGEROUTINE(SELF, "CAMP");
    AI_STOPPROCESSINFOS(SELF);
    Q514_DUSTERWORK_KITCHEN = 5;
}

instance DIA_DUSTER_VZ_Q514_TRAININGHALL(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_VZ_Q514_TRAININGHALL_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_Q514_TRAININGHALL_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I found some kind of collapsed training room.";
}

func int DIA_DUSTER_VZ_Q514_TRAININGHALL_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_BIGROCKSBLOCKWAY_V1_LOGENTRY) == (1))) && ((Q514_TREASURY_EVENT) == (0))) && (((Q514_DUSTERWORK_KITCHEN) == (0)) || ((Q514_DUSTERWORK_KITCHEN) == (5)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_Q514_TRAININGHALL_INFO() {
    Q514_DUSTERWORK_TRAININGHALL = 1;
    NPC_EXCHANGEROUTINE(SELF, "Q514_TRAININGHALL");
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_TrainingHall_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_TrainingHall_15_02");
    if ((Q514_DUSTERWORK_KITCHEN) == (5)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_TrainingHall_03_04");
        B_SAY(OTHER, SELF, "$MARVIN_GuideWith");
        AI_WAITTILLEND(SELF, OTHER);
        AI_STOPPROCESSINFOS(SELF);
        AI_FUNCTION(SELF, 0xefdc);
    };
    if ((DUSTER_VZ_Q514_FIRSTTIMECOMMENT) == (FALSE)) {
        DUSTER_VZ_Q514_FIRSTTIMECOMMENT = TRUE;
        DIA_DUSTER_VZ_Q514_FIRSTTIMECOMMENT();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_TrainingHall_03_03");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_TRAININGHALL);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xefdb);
}

instance DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH(C_INFO) {
    NPC = 0xe730;
    NR = 1;
    CONDITION = DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH_CONDITION;
    INFORMATION = DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q514)) == (LOG_RUNNING)) && ((Q514_DUSTERWORK_TRAININGHALL) == (3))) && ((Q514_TREASURY_EVENT) == (0))) && (((Q514_DUSTERWORK_KITCHEN) == (0)) || ((Q514_DUSTERWORK_KITCHEN) == (5)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH_INFO() {
    Q514_DUSTERWORK_TRAININGHALL = 4;
    AI_STARTFACEANI(SELF, S_DISGUST, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_TrainingHall_Finish_03_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Duster_VZ_Q514_TrainingHall_Finish_03_02");
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_DUSTERWORK_TRAININGHALL_FINISH);
    INFO_CLEARCHOICES(0x153c1);
    INFO_ADDCHOICE(0x153c1, "Thanks, I'll be careful. You can go back to camp.", 0x153c4);
}

func void DIA_DUSTER_VZ_Q514_TRAININGHALL_FINISH_THANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Duster_VZ_Q514_TrainingHall_Finish_Thanks_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    INFO_CLEARCHOICES(0x153be);
    NPC_EXCHANGEROUTINE(SELF, "CAMP");
    AI_STOPPROCESSINFOS(SELF);
    AI_RESETFACEANI(SELF);
    AI_FUNCTION(SELF, 0xefdf);
}

