instance DIA_ARNOLD_EXIT(C_INFO) {
    NPC = 0xd504;
    NR = 999;
    CONDITION = DIA_ARNOLD_EXIT_CONDITION;
    INFORMATION = DIA_ARNOLD_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARNOLD_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARNOLD_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

var int ARNOLDFIGHT = 0;
instance DIA_ARNOLD_HELLOTROUBLESOME3(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_HELLOTROUBLESOME3_CONDITION;
    INFORMATION = DIA_ARNOLD_HELLOTROUBLESOME3_INFO;
    DESCRIPTION = "Hey, you there.";
    PERMANENT = TRUE;
}

func int DIA_ARNOLD_HELLOTROUBLESOME3_CONDITION() {
    if ((((NPC_KNOWSINFO(OTHER, 0x12214)) == (FALSE)) && ((ARNOLDFIGHT) == (FALSE))) && ((NPC_GETDISTTOWP(OTHER, "HARBOUR_TAVERN_14")) <= (0xbb8))) {
        if ((KAPITEL) < (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_HELLOTROUBLESOME3_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_14_01");
    INFO_CLEARCHOICES(0x121e9);
    INFO_ADDCHOICE(0x121e9, "Don't bother yourselves.", 0x121ec);
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING)) {
        INFO_ADDCHOICE(0x121e9, "What's it like to have a molerat mother and a scavenger father?", 0x121ee);
        INFO_ADDCHOICE(0x121e9, "Could you guys be a little quieter?", 0x121ef);
    };
}

func void DIA_ARNOLD_HELLOTROUBLESOME3_DONTDISTURB() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_DontDisturb_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_DontDisturb_14_01");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ARNOLD_ATTACKMARVIN() {
    ARNOLDFIGHT = TRUE;
    FAQ003_FIGHTWITHARNOLDSTATUS = 1;
    AI_TURNTONPC(VLK_3019_ARNOLD, HERO);
    B_IMMEDIATEATTACKPLAYER(VLK_3019_ARNOLD, AR_NONE);
    VLK_3019_ARNOLD.AIVAR[96] = -(1);
    VLK_3019_ARNOLD.FLAGS = NPC_FLAG_IMPORTANT;
    VLK_3019_ARNOLD.AIVAR[45] = AF_RUNNING;
    AI_TURNTONPC(VLK_3020_TOM, HERO);
    B_IMMEDIATEATTACKPLAYER(VLK_3020_TOM, AR_NONE);
    VLK_3020_TOM.AIVAR[96] = -(1);
    VLK_3020_TOM.FLAGS = NPC_FLAG_IMPORTANT;
    VLK_3020_TOM.AIVAR[45] = AF_RUNNING;
    AI_TURNTONPC(VLK_3021_MIKKEL, HERO);
    B_IMMEDIATEATTACKPLAYER(VLK_3021_MIKKEL, AR_NONE);
    VLK_3021_MIKKEL.AIVAR[96] = -(1);
    VLK_3021_MIKKEL.FLAGS = NPC_FLAG_IMPORTANT;
    VLK_3021_MIKKEL.AIVAR[45] = AF_RUNNING;
}

func void DIA_ARNOLD_HELLOTROUBLESOME3_PROVOKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_Provoke_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_Provoke_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_Provoke_15_02");
    AI_FUNCTION(SELF, 0xf527);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_Provoke_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_Provoke_14_04");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x121ed);
}

func void DIA_ARNOLD_HELLOTROUBLESOME3_POLITE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_Polite_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_Polite_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_HelloTroublesome3_Polite_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_HelloTroublesome3_Polite_14_03");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf52d);
}

instance DIA_ARNOLD_BLACKTROLL(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_BLACKTROLL_CONDITION;
    INFORMATION = DIA_ARNOLD_BLACKTROLL_INFO;
    DESCRIPTION = DIALOG_TREATBLACKTROLL;
}

var int MARVINDRUNK = 0;
var int TROUBLESOME3OPINION = 0;
var int ROUND = 0;
var int BLACKTROLLDRINK = 0;
var int WINE = 0;
var int BEER = 0;
func int DIA_ARNOLD_BLACKTROLL_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING)) {
        if (((NPC_HASITEMS(OTHER, 0x9120)) >= (1)) && ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING))) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_CHCEKMARVINDRUNK() {
    if ((MARVINDRUNK) >= (4)) {
        MDL_APPLYOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
    };
}

func void DIA_ARNOLD_BLACKTROLL_INFO() {
    if ((NPC_KNOWSINFO(OTHER, 0x12214)) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_15_01");
    B_GIVEINVITEMS(OTHER, SELF, 0x9120, 1);
    B_STANDUP();
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTONPC(SELF, OTHER);
    AI_FUNCTION(SELF, 0xf527);
    if ((NPC_KNOWSINFO(OTHER, 0x12214)) == (TRUE)) {
        B_TURNTONPC(SELF, VLK_3020_TOM);
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_14_02");
        B_TURNTONPC(SELF, HERO);
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_14_03");
    };
    B_TURNTONPC(SELF, VLK_3020_TOM);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_14_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_15_05");
    B_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_14_07");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "I'll pass.", 0x121fa);
    INFO_ADDCHOICE(0x121f0, "Why not?", 0x121fc);
}

func void DIA_ARNOLD_BLACKTROLL_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_No_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_No_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_No_14_02");
    AI_FUNCTION(SELF, 0xf528);
    AI_STOPPROCESSINFOS(SELF);
}

var int ARNOLD_FAQ003_DRINKTIME = 0;
func void DIA_ARNOLD_BLACKTROLL_YES() {
    DIA_ARNOLD_CHCEKMARVINDRUNK();
    ARNOLD_FAQ003_DRINKTIME = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Yes_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Yes_14_01");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "(Drink wine)", 0x121fe);
    INFO_ADDCHOICE(0x121f0, "(Drink beer)", 0x121ff);
    INFO_ADDCHOICE(0x121f0, "(Drink Black Troll)", 0x12200);
}

func void DIA_ARNOLD_BLACKTROLL_DRINK() {
    DIA_ARNOLD_CHCEKMARVINDRUNK();
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Drink_14_01");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "(Drink wine)", 0x121fe);
    INFO_ADDCHOICE(0x121f0, "(Drink beer)", 0x121ff);
    INFO_ADDCHOICE(0x121f0, "(Drink Black Troll)", 0x12200);
}

func void DIA_ARNOLD_BLACKTROLL_DRINK_WINE() {
    MARVINDRUNK = (MARVINDRUNK) + (2);
    DIA_ARNOLD_CHCEKMARVINDRUNK();
    AI_FUNCTION(SELF, 0xf529);
    B_MARVIN_USEFAKEWINE();
    WINE = TRUE;
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Drink_Wine_14_00");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "Just right for me!", 0x12201);
}

func void DIA_ARNOLD_BLACKTROLL_DRINK_BEER() {
    MARVINDRUNK = (MARVINDRUNK) + (1);
    DIA_ARNOLD_CHCEKMARVINDRUNK();
    AI_FUNCTION(SELF, 0xf529);
    B_MARVIN_USEFAKEBEER();
    BEER = TRUE;
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Drink_Beer_14_00");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "You guys don't go easy on the Troll!", 0x12201);
}

func void DIA_ARNOLD_BLACKTROLL_DRINK_BLACKTROLL() {
    MARVINDRUNK = (MARVINDRUNK) + (3);
    DIA_ARNOLD_CHCEKMARVINDRUNK();
    AI_FUNCTION(SELF, 0xf529);
    B_MARVIN_USEFAKEBLACKTROLL();
    BLACKTROLLDRINK = TRUE;
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Drink_BlackTroll_14_00");
    INFO_CLEARCHOICES(0x121f0);
    INFO_ADDCHOICE(0x121f0, "Oh hell, it stings!", 0x12201);
}

func void DIA_ARNOLD_BLACKTROLL_TALK() {
    if ((BEER) == (TRUE)) {
        if ((MARVINDRUNK) <= (3)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_Beer_15_00");
        } else if ((MARVINDRUNK) >= (4)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_Beer_15_01");
        };
        BEER = FALSE;
    };
    if ((WINE) == (TRUE)) {
        if ((MARVINDRUNK) <= (3)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_Wine_15_00");
        } else if ((MARVINDRUNK) >= (4)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_Wine_15_01");
        };
        WINE = FALSE;
    };
    if ((BLACKTROLLDRINK) == (TRUE)) {
        if ((MARVINDRUNK) <= (3)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_BlackTroll_15_00");
        } else if ((MARVINDRUNK) >= (4)) {
            AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Drink_BlackTroll_15_01");
        };
        BLACKTROLLDRINK = FALSE;
    };
    if ((ROUND) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round0_NotDrunk_14_00");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round0_NotDrunk_14_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round0_NotDrunk_14_02");
        INFO_CLEARCHOICES(0x121f0);
        INFO_ADDCHOICE(0x121f0, "And who needs the King?", 0x12202);
        INFO_ADDCHOICE(0x121f0, "For the King!", 0x12203);
    };
    if ((ROUND) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round1_Drunk_14_00");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round1_NotDrunk_14_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round1_NotDrunk_14_02");
        INFO_CLEARCHOICES(0x121f0);
        INFO_ADDCHOICE(0x121f0, "These here are nice.", 0x12204);
        INFO_ADDCHOICE(0x121f0, "The Old Town, of course.", 0x12205);
    };
    if ((ROUND) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round2_NotDrunk_14_00");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Round2_NotDrunk_14_02");
        INFO_CLEARCHOICES(0x121f0);
        INFO_ADDCHOICE(0x121f0, "Well... the gods won't pay my taxes for me.", 0x12207);
        INFO_ADDCHOICE(0x121f0, "Gods are to be respected.", 0x12206);
    };
}

func void DIA_ARNOLD_BLACKTROLL_NOKING() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_NoKing_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_NoKing_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_NoKing_14_01");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    TROUBLESOME3OPINION = (TROUBLESOME3OPINION) + (1);
    INFO_ADDCHOICE(0x121f0, "One more?", 0x121fd);
}

func void DIA_ARNOLD_BLACKTROLL_KING() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_King_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_King_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_King_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_King_14_02");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    TROUBLESOME3OPINION = (TROUBLESOME3OPINION) - (1);
    INFO_ADDCHOICE(0x121f0, "One more?", 0x121fd);
}

func void DIA_ARNOLD_BLACKTROLL_HERE() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Here_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_Here_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_Here_14_01");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    TROUBLESOME3OPINION = (TROUBLESOME3OPINION) + (1);
    INFO_ADDCHOICE(0x121f0, "One more?", 0x121fd);
}

func void DIA_ARNOLD_BLACKTROLL_OLDTOWN() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_OldTown_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_OldTown_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_OldTown_14_01");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    INFO_ADDCHOICE(0x121f0, "One more?", 0x121fd);
}

func void DIA_ARNOLD_BLACKTROLL_GODSYES() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_GodsYes_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_GodsYes_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_GodsYes_14_01");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    TROUBLESOME3OPINION = (TROUBLESOME3OPINION) + (1);
    AI_STOPPROCESSINFOS(SELF);
    if ((TROUBLESOME3OPINION) >= (2)) {
        AI_FUNCTION(SELF, 0xf52c);
    };
}

func void DIA_ARNOLD_BLACKTROLL_GODSNO() {
    if ((MARVINDRUNK) >= (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_GodsNo_Drunk_15_00");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_BlackTroll_GodsNo_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_GodsNo_14_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_BlackTroll_GodsNo_14_02");
    INFO_CLEARCHOICES(0x121f0);
    ROUND = (ROUND) + (1);
    TROUBLESOME3OPINION = (TROUBLESOME3OPINION) + (1);
    AI_STOPPROCESSINFOS(SELF);
    if ((TROUBLESOME3OPINION) >= (2)) {
        AI_FUNCTION(SELF, 0xf52c);
    };
}

instance DIA_ARNOLD_MARVINDRUNK(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_MARVINDRUNK_CONDITION;
    INFORMATION = DIA_ARNOLD_MARVINDRUNK_INFO;
    IMPORTANT = TRUE;
}

func int DIA_ARNOLD_MARVINDRUNK_CONDITION() {
    if (((ARNOLD_FAQ003_DRINKTIME) == (TRUE)) && ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING))) {
        if (((MARVINDRUNK) >= (7)) && ((ROUND) >= (3))) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void FAQ003_MARVINBLACKOUT2() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (FAQ003_ARNOLD_HEROLOSTMONEY)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, (FAQ003_ARNOLD_HEROLOSTMONEY) / (3));
    };
    NPC_CLEARAIQUEUE(VLK_3019_ARNOLD);
    LOG_SETSTATUS(_@(MIS_FAQ003), TOPIC_FAQ003, LOG_FAILED);
    AI_LOGENTRY(TOPIC_FAQ003, LOG_FAQ003_DRUNKFAILEDARNOLD);
    AI_UNEQUIPARMOR(HERO);
    AI_UNEQUIPWEAPONS(HERO);
    TELEPORTNPCTOWP(0x71b, "SLUMS_PATH_223");
    AI_PLAYANI(HERO, "T_WOUNDEDB_REMOVE");
    B_PASSTIME(1);
    FADESCREENFROMBLACK(1);
}

func void FAQ003_MARVINBLACKOUT1() {
    FADESCREENTOBLACKF(1, 0x1220a, 1000);
}

func void DIA_ARNOLD_MARVINDRUNK_INFO() {
    MDL_REMOVEOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
    MDL_APPLYOVERLAYMDSTIMED(HERO, HUMANSDRUNKENMDS, 0x7530);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_MarvinDrunk_14_00");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, "R_VOMIT_SUNDER");
    AI_PLAYANI(OTHER, "T_WOUNDEDB_START");
    AI_FUNCTION(OTHER, 0x1220b);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf528);
}

instance DIA_ARNOLD_AFTERDRINKING(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_AFTERDRINKING_CONDITION;
    INFORMATION = DIA_ARNOLD_AFTERDRINKING_INFO;
    IMPORTANT = TRUE;
}

var int ARNOLDDRUNK = 0;
func int DIA_ARNOLD_AFTERDRINKING_CONDITION() {
    if (((ARNOLD_FAQ003_DRINKTIME) == (TRUE)) && ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING))) {
        if ((((MARVINDRUNK) <= (6)) && ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0x121f0))) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_AFTERDRINKING_INFO() {
    MDL_REMOVEOVERLAYMDS(HERO, HUMANSDRUNKENMDS);
    if ((TROUBLESOME3OPINION) >= (2)) {
        ARNOLDDRUNK = TRUE;
        AI_FUNCTION(SELF, 0xf52c);
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_AfterDrinking_Fail_14_00");
        AI_FUNCTION(SELF, 0xf52a);
    };
    if ((TROUBLESOME3OPINION) <= (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_AfterDrinking_Fail_14_01");
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_AfterDrinking_Fail_15_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_AfterDrinking_Fail_14_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_AfterDrinking_Fail_14_04");
        AI_OUTPUT(OTHER, SELF, "DIA_Arnold_AfterDrinking_Fail_15_05");
        AI_OUTPUT(SELF, OTHER, "DIA_Arnold_AfterDrinking_Fail_14_06");
        AI_LOGENTRY(TOPIC_FAQ003, LOG_FAQ003_NOMORETALKING);
        AI_FUNCTION(SELF, 0xf528);
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARNOLD_FIGHTWON(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_FIGHTWON_CONDITION;
    INFORMATION = DIA_ARNOLD_FIGHTWON_INFO;
    IMPORTANT = TRUE;
}

func int DIA_ARNOLD_FIGHTWON_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING)) {
        if ((FAQ003_FIGHTWITHARNOLDSTATUS) == (2)) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_FIGHTWON_INFO() {
    VLK_3019_ARNOLD.AIVAR[45] = AF_NONE;
    VLK_3019_ARNOLD.AIVAR[64] = TRUE;
    VLK_3020_TOM.AIVAR[45] = AF_NONE;
    VLK_3020_TOM.AIVAR[64] = TRUE;
    VLK_3021_MIKKEL.AIVAR[45] = AF_NONE;
    VLK_3021_MIKKEL.AIVAR[64] = TRUE;
    FAQ003_ARNOLDBEATEN = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_FightWon_14_00");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_FightWon_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_FightWon_14_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_FightWon_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_FightWon_14_04");
    CREATEINVITEMS(SELF, 0x859b, FAQ003_ARNODGIVEMONEY);
    B_GIVEINVITEMS(SELF, OTHER, 0x859b, FAQ003_ARNODGIVEMONEY);
    AI_FUNCTION(SELF, 0xf52b);
    AI_FUNCTION(SELF, 0xf52a);
    AI_LOGENTRY(TOPIC_FAQ003, LOG_FAQ003_KICKEDTHEIRASSES);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARNOLD_FIGHTLOST(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_FIGHTLOST_CONDITION;
    INFORMATION = DIA_ARNOLD_FIGHTLOST_INFO;
    IMPORTANT = TRUE;
}

func int DIA_ARNOLD_FIGHTLOST_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING)) {
        if ((FAQ003_FIGHTWITHARNOLDSTATUS) == (3)) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_FIGHTLOST_INFO() {
    VLK_3019_ARNOLD.AIVAR[45] = AF_NONE;
    VLK_3019_ARNOLD.AIVAR[64] = TRUE;
    VLK_3020_TOM.AIVAR[45] = AF_NONE;
    VLK_3020_TOM.AIVAR[64] = TRUE;
    VLK_3021_MIKKEL.AIVAR[45] = AF_NONE;
    VLK_3021_MIKKEL.AIVAR[64] = TRUE;
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_FightLost_14_00");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARNOLD_PRAWUS(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_PRAWUS_CONDITION;
    INFORMATION = DIA_ARNOLD_PRAWUS_INFO;
    IMPORTANT = TRUE;
}

func int DIA_ARNOLD_PRAWUS_CONDITION() {
    if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_RUNNING)) {
        if (((FAQ003_MARVINHADHELP) == (TRUE)) && (NPC_ISINSTATE(SELF, 0xf09f))) {
            if ((KAPITEL) < (3)) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_PRAWUS_INFO() {
    FAQ003_ARNOLDBEATEN = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Prawus_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Prawus_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Prawus_15_02");
    AI_FUNCTION(SELF, 0xf52b);
    AI_FUNCTION(SELF, 0xf52a);
    AI_LOGENTRY(TOPIC_FAQ003, LOG_FAQ003_KICKEDTHEIRASSESAP);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARNOLD_AMBIENT(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_AMBIENT_CONDITION;
    INFORMATION = DIA_ARNOLD_AMBIENT_INFO;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_ARNOLD_AMBIENT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_FAQ003)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_FAQ003)) != (LOG_SUCCESS))) {
        if ((KAPITEL) < (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_14_03");
    INFO_CLEARCHOICES(0x1221a);
    INFO_ADDCHOICE(0x1221a, DIALOG_THATSALL, 0x12221);
    INFO_ADDCHOICE(0x1221a, "Why don't you get yourself some work?", 0x1221d);
}

func void DIA_ARNOLD_AMBIENT_JOB() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_14_09");
    INFO_CLEARCHOICES(0x1221a);
    INFO_ADDCHOICE(0x1221a, "You're kind of right.", 0x1221e);
    INFO_ADDCHOICE(0x1221a, "You'll change your mind when the orcs knock on your door.", 0x1221f);
    INFO_ADDCHOICE(0x1221a, "Aren't you afraid you might end up behind bars?", 0x12220);
}

func void DIA_ARNOLD_AMBIENT_JOB_TRUE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_True_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_True_14_01");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ARNOLD_AMBIENT_JOB_ORCS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Orcs_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Orcs_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Orcs_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Orcs_14_03");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ARNOLD_AMBIENT_BYE_JAIL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Jail_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Jail_14_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Jail_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Jail_14_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Jail_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Jail_14_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Jail_14_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Jail_14_07");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ARNOLD_AMBIENT_BYE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Arnold_Ambient_Job_Bye_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_Ambient_Job_Bye_14_01");
    AI_STOPPROCESSINFOS(SELF);
}

func void ARNOLD_REVENGETIME() {
    B_IMMEDIATEATTACKPLAYER(VLK_3019_ARNOLD, AR_NONE);
    VLK_3019_ARNOLD.FLAGS = 0;
    NPC_REFRESH(VLK_3020_TOM);
    B_IMMEDIATEATTACKPLAYER(VLK_3020_TOM, AR_NONE);
    VLK_3020_TOM.FLAGS = 0;
    NPC_REFRESH(VLK_3021_MIKKEL);
    B_IMMEDIATEATTACKPLAYER(VLK_3021_MIKKEL, AR_NONE);
    VLK_3021_MIKKEL.FLAGS = 0;
}

instance DIA_ARNOLD_REVENGETIME(C_INFO) {
    NPC = 0xd504;
    NR = 1;
    CONDITION = DIA_ARNOLD_REVENGETIME_CONDITION;
    INFORMATION = DIA_ARNOLD_REVENGETIME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARNOLD_REVENGETIME_CONDITION() {
    if ((KAPITEL) >= (3)) {
        if ((((PROVOCATION_FAQ003_TOM) == (FALSE)) || ((PROVOCATION_FAQ003_ARNOLD) == (FALSE))) || ((PROVOCATION_FAQ003_MIKKEL) == (FALSE))) {
            if ((LOG_GETSTATUS(MIS_FAQ003)) == (LOG_SUCCESS)) {
                if ((RND_PROVOCATION_FAQ003_CH2) == (1)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_REVENGETIME_INFO() {
    RND_TODAYSPAWNED = (RND_TODAYSPAWNED) + (1);
    RND_TOTALSPAWNED = (RND_TOTALSPAWNED) + (1);
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_RevengeTime_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Arnold_RevengeTime_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(HERO, 0x12222);
}

instance DIA_ARNOLD_PICKPOCKET(C_INFO) {
    NPC = 0xd504;
    NR = 900;
    CONDITION = DIA_ARNOLD_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ARNOLD_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_ARNOLD_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARNOLD_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12226);
    INFO_ADDCHOICE(0x12226, DIALOG_BACK, 0x1222a);
    INFO_ADDCHOICE(0x12226, DIALOG_PICKPOCKET, 0x12229);
}

func void DIA_ARNOLD_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        CREATEINVITEMS(SELF, 0x8e17, 1);
        B_GIVEINVITEMS(SELF, OTHER, 0x8e17, 1);
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12226);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12226);
}

func void DIA_ARNOLD_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12226);
}

