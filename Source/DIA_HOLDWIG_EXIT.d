instance DIA_HOLDWIG_EXIT(C_INFO) {
    NPC = 57074;
    NR = 999;
    CONDITION = DIA_HOLDWIG_EXIT_CONDITION;
    INFORMATION = DIA_HOLDWIG_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_HOLDWIG_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_HOLDWIG_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLDWIG_SQ116_PAYMENT(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ116_PAYMENT_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ116_PAYMENT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOLDWIG_SQ116_PAYMENT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) && ((SQ116_CANTALKWITHHOLDWIG) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ116_PAYMENT_INFO() {
    SQ116_VOLKERGUARDTALK = 1;
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_00");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ116_Payment_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_04");
    CREATEINVITEMS(SELF, 37009, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37009, 1);
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ116_Payment_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_07");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ116_Payment_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ116_Payment_04_09");
    B_SAY(SELF, OTHER, "$REWARD_CALM");
    AI_FUNCTION(SELF, 62313);
    AI_LOGENTRY(TOPIC_SQ116, LOG_SQ116_HOLWDIG_GOTGOLD);
    NPC_EXCHANGEROUTINE(SELF, "VINEYARD");
    AI_FUNCTION(SELF, 62308);
    B_STARTOTHERROUTINE(NONE_10016_VOLKERGUARD, "WAIT");
    NPC_REFRESH(NONE_10016_VOLKERGUARD);
    TELEPORTNPCTOWP(56783, NONE_10016_VOLKERGUARD.WP);
}

instance DIA_HOLDWIG_SQ225_WHATHAPPEND(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I come to you with a delicate matter.";
}

func int DIA_HOLDWIG_SQ225_WHATHAPPEND_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_WHATHAPPEND_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_15_02");
    B_STANDUP();
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_03_03");
    INFO_CLEARCHOICES(65143);
    INFO_ADDCHOICE(65143, "Need help defending the vineyard?", 65148);
    INFO_ADDCHOICE(65143, "Surely you can come to an agreement.", 65147);
}

func void DIA_HOLDWIG_SQ225_WHATHAPPEND_NEXT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Talk_15_06");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Talk_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Talk_03_08");
    INFO_CLEARCHOICES(65143);
    INFO_ADDCHOICE(65143, "Do you have any suspicions?", 65149);
}

func void DIA_HOLDWIG_SQ225_WHATHAPPEND_TALK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Talk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Talk_03_02");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Talk_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Talk_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Talk_03_05");
    DIA_HOLDWIG_SQ225_WHATHAPPEND_NEXT();
}

func void DIA_HOLDWIG_SQ225_WHATHAPPEND_PROTECT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Protect_15_01");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Protect_03_02");
    DIA_HOLDWIG_SQ225_WHATHAPPEND_NEXT();
}

func void DIA_HOLDWIG_SQ225_WHATHAPPEND_PROTECT_SOMEONE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Someone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Someone_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhatHappend_Someone_15_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhatHappend_Someone_03_04");
    INFO_CLEARCHOICES(65143);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HOLDWIG_INVESTIGATION);
}

instance DIA_HOLDWIG_SQ225_AFTERFARMERS(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_AFTERFARMERS_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_AFTERFARMERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I talked to your people.";
}

func int DIA_HOLDWIG_SQ225_AFTERFARMERS_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_TALKEDWITHFARMERSCOUNT) >= (4))) && (NPC_KNOWSINFO(OTHER, 65143))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_AFTERFARMERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFarmers_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFarmers_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFarmers_15_03");
    if (NPC_KNOWSINFO(OTHER, 80643)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFarmers_15_04");
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFarmers_03_05");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFarmers_03_06");
}

instance DIA_HOLDWIG_SQ225_WHOGERHARD(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_WHOGERHARD_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_WHOGERHARD_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who is this Gerhard guy anyway?";
}

func int DIA_HOLDWIG_SQ225_WHOGERHARD_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65150))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int HOLDWIG_SQ225_INFORMATIONS_COUNT;
func void DIA_HOLDWIG_SQ225_YOURDECISION() {
    HOLDWIG_SQ225_INFORMATIONS_COUNT = (HOLDWIG_SQ225_INFORMATIONS_COUNT) + (1);
    if ((HOLDWIG_SQ225_INFORMATIONS_COUNT) >= (2)) {
        AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
        AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_Next_15_01");
        AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_Next_03_02");
        AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_Next_15_03");
        AI_RESETFACEANI(SELF);
        AI_RESETFACEANI(OTHER);
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_Next_03_04");
        INFO_CLEARCHOICES(65158);
        INFO_ADDCHOICE(65158, "I'm heading into town, I'll try to find something on him.", 65162);
        INFO_ADDCHOICE(65158, "I have to think about it.", 65164);
        INFO_ADDCHOICE(65158, "Deceitful action against a brother?", 65163);
        INFO_CLEARCHOICES(65153);
        INFO_ADDCHOICE(65153, "I'm heading into town, I'll try to find something on him.", 65162);
        INFO_ADDCHOICE(65153, "I have to think about it.", 65164);
        INFO_ADDCHOICE(65153, "Deceitful action against a brother?", 65163);
    };
}

func void DIA_HOLDWIG_SQ225_WHOGERHARD_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhoGerhard_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhoGerhard_03_02");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhoGerhard_03_03");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    DIA_HOLDWIG_SQ225_YOURDECISION();
}

instance DIA_HOLDWIG_SQ225_THINK(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_THINK_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_THINK_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you think that without him Andreas will withdraw his claim?";
}

func int DIA_HOLDWIG_SQ225_THINK_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65150))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_THINK_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_03_02");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_03_03");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    DIA_HOLDWIG_SQ225_YOURDECISION();
}

var int HOLDWIG_SQ225_TAKEQUEST;
func void DIA_HOLDWIG_SQ225_THINK_NEXT_YES() {
    SQ225_HOLDWIGWAY_AGREED = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, "T_GREETCOOL");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_Yes_03_02");
    INFO_CLEARCHOICES(65158);
    INFO_CLEARCHOICES(65153);
    INFO_CLEARCHOICES(65165);
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HOLDWIG_ACCEPT);
}

func void DIA_HOLDWIG_SQ225_THINK_NEXT_BROTHER() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_Brother_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_Brother_03_02");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

func void DIA_HOLDWIG_SQ225_THINK_NEXT_NO() {
    HOLDWIG_SQ225_TAKEQUEST = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_Think_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Think_No_03_02");
    INFO_CLEARCHOICES(65158);
    INFO_CLEARCHOICES(65153);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_HOLDWIG_SQ225_DECISION(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_DECISION_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_DECISION_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_HOLDWIG_SQ225_DECISION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) {
        if ((((HOLDWIG_SQ225_TAKEQUEST) == (TRUE)) && ((SQ225_HOLDWIGWAY_AGREED) == (FALSE))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_DECISION_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_Decision_03_01");
    INFO_CLEARCHOICES(65165);
    INFO_ADDCHOICE(65165, "I have to think about it.", 65164);
    INFO_ADDCHOICE(65165, "I'm heading into town, I'll try to find something on him.", 65162);
}

instance DIA_HOLDWIG_SQ225_WHERETOSTART(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_WHERETOSTART_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_WHERETOSTART_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Any idea where I should start?";
}

func int DIA_HOLDWIG_SQ225_WHERETOSTART_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_HOLDWIGWAY_AGREED) == (TRUE))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_WHERETOSTART_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_WhereToStart_15_01");
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhereToStart_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_WhereToStart_03_03");
}

instance DIA_HOLDWIG_SQ225_GERHARDGONE(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_GERHARDGONE_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_GERHARDGONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Gerhard will no longer be a threat.";
}

func int DIA_HOLDWIG_SQ225_GERHARDGONE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_HOLDWIGWAY_AGREED) == (1))) && ((SQ225_ANDERASWAY_FAILED) == (2))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_INFO() {
    B_GIVEPLAYERXP(XP_SQ225_HELPEDHOLDWIG);
    B_STANDUP();
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_03_05");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_03_06");
    AI_PLAYANI(SELF, R_SCRATCHHEAD);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    INFO_CLEARCHOICES(65171);
    INFO_ADDCHOICE(65171, "I see something's bothering you.", 65176);
    INFO_ADDCHOICE(65171, "What is it?", 65175);
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_NEXT() {
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_Next_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_Next_15_04");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_Next_03_05");
    INFO_CLEARCHOICES(65171);
    INFO_ADDCHOICE(65171, "It's time to hunt down these pests.", 65179);
    INFO_ADDCHOICE(65171, "Besides field raiders, what could have damaged the crops?", 65178);
    INFO_ADDCHOICE(65171, "Do you think Andreas could have ordered the sabotage of the vineyard?", 65177);
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_WHATV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_What_15_01");
    DIA_HOLDWIG_SQ225_GERHARDGONE_NEXT();
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_WHATV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_What_15_02");
    DIA_HOLDWIG_SQ225_GERHARDGONE_NEXT();
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_WHATV2_NEXT_ANDERAS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_Anderas_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_Anderas_03_02");
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_WHATV2_NEXT_GIANTBUG() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_GiantBug_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_GiantBug_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_GiantBug_03_03");
}

func void DIA_HOLDWIG_SQ225_GERHARDGONE_WHATV2_NEXT_LETSGO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_STARTFACEANI(OTHER, S_SMUG, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_GerhardGone_LetsGo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_GerhardGone_LetsGo_03_02");
    AI_PLAYANI(SELF, "T_GREETCOOL");
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(65171);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HOLDWIG_NEWPROBLEM);
    SQ225_PREPAREGIANTBUGSCAVE();
}

instance DIA_HOLDWIG_SQ225_ANDERASATTACK(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_ANDERASATTACK_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_ANDERASATTACK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOLDWIG_SQ225_ANDERASATTACK_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && ((SQ225_FIGHTINVINEYARD_HOLDWIG) == (4))) && ((NPC_GETDISTTONPC(BAU_2245_HOLDWIG, VLK_11181_ANDERAS_VINEYARDFIGHT)) <= (1000))) {
        if (((NPC_ISDEAD(NONE_11222_MERCENARY)) && (NPC_ISDEAD(NONE_11223_MERCENARY))) && (NPC_ISINSTATE(VLK_11181_ANDERAS_VINEYARDFIGHT, 61603))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_INFO() {
    VLK_11181_ANDERAS_VINEYARDFIGHT.FLAGS = 0;
    VLK_11181_ANDERAS_VINEYARDFIGHT.GUILD = GIL_NONE;
    NPC_SETTRUEGUILD(VLK_11181_ANDERAS_VINEYARDFIGHT, GIL_NONE);
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_03_02");
    INFO_CLEARCHOICES(65180);
    INFO_ADDCHOICE(65180, "Do what he wanted to do to you.", 65185);
    INFO_ADDCHOICE(65180, "I think this is between you two. I won't interfere.", 65184);
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_CHOICES() {
    INFO_CLEARCHOICES(65180);
    INFO_ADDCHOICE(65180, "He deserved a severe punishment, but not death.", 65188);
    INFO_ADDCHOICE(65180, "A colony?", 65187);
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_NOTME() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AnderasAttack_NotMe_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_NotMe_03_02");
    DIA_HOLDWIG_SQ225_ANDERASATTACK_CHOICES();
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_DOIT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AnderasAttack_DoIt_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_DoIt_03_02");
    DIA_HOLDWIG_SQ225_ANDERASATTACK_CHOICES();
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_FINISH() {
    INFO_CLEARCHOICES(65180);
    AI_STOPPROCESSINFOS(SELF);
    if ((SQ225_HOLDWIG_FINISHWAY) == (1)) {
        AI_FUNCTION(SELF, 65189);
    };
    AI_FUNCTION(SELF, 65190);
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_NOTME_COLONY() {
    SQ225_HOLDWIG_FINISHWAY = 1;
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AnderasAttack_Colony_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_Colony_03_02");
    DIA_HOLDWIG_SQ225_ANDERASATTACK_FINISH();
}

func void DIA_HOLDWIG_SQ225_ANDERASATTACK_NOTME_NOTDEATH() {
    SQ225_HOLDWIG_FINISHWAY = 2;
    AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AnderasAttack_NotDeath_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AnderasAttack_NotDeath_03_02");
    DIA_HOLDWIG_SQ225_ANDERASATTACK_FINISH();
}

func void HOLDWIG_SQ225_FINISHEVENT_V1() {
    FADESCREENTOBLACKF(2, 61101, 1000);
}

func void HOLDWIG_SQ225_FINISHEVENT_V2() {
    SQ225_HOLDWIGWAY_STARTCUTSCENE = 1;
}

instance DIA_HOLDWIG_SQ225_AFTERFIGHT(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_SQ225_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_HOLDWIG_SQ225_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_HOLDWIG_SQ225_AFTERFIGHT_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65180))) && ((SQ225_HOLDWIGWAY_STARTCUTSCENE) == (3))) && ((SQ225_VALERIOTESTAMENT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_INFO() {
    BAU_2245_HOLDWIG.AIVAR[15] = FALSE;
    if ((SQ225_HOLDWIG_FINISHWAY) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_03_02");
    };
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_03_03");
    INFO_CLEARCHOICES(65191);
    if ((SQ225_HOLDWIG_FINISHWAY) == (1)) {
        INFO_ADDCHOICE(65191, "Good thing you didn't kill Andreas.", 65198);
        INFO_ADDCHOICE(65191, "Time to rebuild everything, huh?", 65197);
    };
    INFO_ADDCHOICE(65191, "I'm sorry about your brother.", 65196);
    INFO_ADDCHOICE(65191, "Andreas gave you no choice. In the end, you spared his life anyway.", 65195);
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_FINISH() {
    if ((SQ225_HOLDWIG_FINISHWAY) == (1)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_Work_03_03");
        AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HOLDWIG_FINISH_V1);
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_NoChoice_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFight_NoChoice_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_NoChoice_03_05");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HOLDWIG_FINISH_V2);
    CREATEINVITEMS(SELF, 34203, SQ225_HOLDWIGREWARD);
    B_GIVEINVITEMS(SELF, OTHER, 34203, SQ225_HOLDWIGREWARD);
    NPC_EXCHANGEROUTINE(SELF, "VINEYARD");
    INFO_CLEARCHOICES(65191);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_NOCHOICE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFight_NoChoice_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_NoChoice_03_02");
    DIA_HOLDWIG_SQ225_AFTERFIGHT_FINISH();
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_SORRY() {
    AI_STARTFACEANI(OTHER, S_SAD, 1, -(1));
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFight_Sorry_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_Sorry_03_02");
    AI_RESETFACEANI(OTHER);
    DIA_HOLDWIG_SQ225_AFTERFIGHT_FINISH();
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_WORK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFight_Work_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_Work_03_02");
    DIA_HOLDWIG_SQ225_AFTERFIGHT_FINISH();
}

func void DIA_HOLDWIG_SQ225_AFTERFIGHT_GOOD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_SQ225_AfterFight_Good_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_SQ225_AfterFight_Good_03_02");
    DIA_HOLDWIG_SQ225_AFTERFIGHT_FINISH();
}

instance DIA_HOLDWIG_Q505_HELP(C_INFO) {
    NPC = 57074;
    NR = 1;
    CONDITION = DIA_HOLDWIG_Q505_HELP_CONDITION;
    INFORMATION = DIA_HOLDWIG_Q505_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you provide me with some supplies for my expedition?";
}

func int DIA_HOLDWIG_Q505_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 80244))) {
        if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) {
            if (((SQ225_FINISHWAY) == (1)) || ((SQ225_FINISHWAY) == (3))) {
                if ((NPC_KNOWSINFO(OTHER, 72238)) == (FALSE)) {
                    return TRUE;
                };
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_Q505_HELP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$Q505_MARVIN_VALERIOASK");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_Q505_Help_03_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_Q505_Help_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    CREATEINVITEMS(SELF, 36908, 1);
    B_GIVEINVITEMS(SELF, OTHER, 36908, 1);
}

instance DIA_HOLDWIG_AFTERSQ225(C_INFO) {
    NPC = 57074;
    NR = 980;
    CONDITION = DIA_HOLDWIG_AFTERSQ225_CONDITION;
    INFORMATION = DIA_HOLDWIG_AFTERSQ225_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How's the situation in the vineyard?";
}

func int DIA_HOLDWIG_AFTERSQ225_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_SUCCESS)) || ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_FAILED))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_AFTERSQ225_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Holdwig_AfterSQ225_15_01");
    if ((SQ225_FINISHWAY) == (3)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_AfterSQ225_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_AfterSQ225_03_03");
    };
    if ((SQ225_FINISHWAY) == (1)) {
        AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Holdwig_AfterSQ225_03_04");
    };
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_HOLDWIG_PICKPOCKET(C_INFO) {
    NPC = 57074;
    NR = 900;
    CONDITION = DIA_HOLDWIG_PICKPOCKET_CONDITION;
    INFORMATION = DIA_HOLDWIG_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_HOLDWIG_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_HOLDWIG_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(65205);
    INFO_ADDCHOICE(65205, DIALOG_BACK, 65209);
    INFO_ADDCHOICE(65205, DIALOG_PICKPOCKET, 65208);
}

func void DIA_HOLDWIG_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        CREATEINVITEMS(SELF, 36373, 1);
        B_GIVEINVITEMS(SELF, OTHER, 36373, 1);
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(65205);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(65205);
}

func void DIA_HOLDWIG_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(65205);
}

