func void SQ419_SMITHING_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if (((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) && ((SQ419_SMITHINGTIME) == (TRUE))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_SQ419_SMITHING;
        AI_PROCESSINFOS(HER);
    };
}

instance PC_SQ419_SMITHING_END(C_INFO) {
    NPC = 50091;
    NR = 999;
    CONDITION = PC_SQ419_SMITHING_CONDITION;
    INFORMATION = PC_SQ419_SMITHING_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int PC_SQ419_SMITHING_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SQ419_SMITHING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_SQ419_SMITHING_END_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    CREATEINVITEMS(HERO, 34183, 1);
}

instance PC_SQ419_SMITHING_LEFT_FIRST(C_INFO) {
    NPC = 50091;
    NR = 1;
    CONDITION = PC_SQ419_SMITHING_LEFT_FIRST_CONDITION;
    INFORMATION = PC_SQ419_SMITHING_LEFT_FIRST_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SQ419_SMITHING_LEFT_FIRST;
}

var int SQ419_SMITHING_COUNT;
var int SQ419_SMITHING_STATUS;
func int PC_SQ419_SMITHING_LEFT_FIRST_CONDITION() {
    if (((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SQ419_SMITHING)) && ((SQ419_SMITHING_STATUS) == (0))) && ((SQ419_SMITHING_COUNT) != (4))) && ((NPC_HASITEMS(OTHER, 34183)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_SQ419_SMITHING_LEFT_FIRST_INFO() {
    SQ419_SMITHING_STATUS = 1;
    AI_WAIT(HERO, 1065353216);
}

instance PC_SQ419_SMITHING_RIGHT_FIRST(C_INFO) {
    NPC = 50091;
    NR = 1;
    CONDITION = PC_SQ419_SMITHING_RIGHT_FIRST_CONDITION;
    INFORMATION = PC_SQ419_SMITHING_RIGHT_FIRST_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SQ419_SMITHING_RIGHT_FIRST;
}

func int PC_SQ419_SMITHING_RIGHT_FIRST_CONDITION() {
    if (((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SQ419_SMITHING)) && ((SQ419_SMITHING_STATUS) == (1))) && ((SQ419_SMITHING_COUNT) != (4))) && ((NPC_HASITEMS(OTHER, 34183)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_SQ419_SMITHING_RIGHT_FIRST_INFO() {
    SQ419_SMITHING_STATUS = 2;
    AI_WAIT(HERO, 1065353216);
}

instance PC_SQ419_SMITHING_LEFT_SECOND(C_INFO) {
    NPC = 50091;
    NR = 1;
    CONDITION = PC_SQ419_SMITHING_LEFT_SECOND_CONDITION;
    INFORMATION = PC_SQ419_SMITHING_LEFT_SECOND_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SQ419_SMITHING_LEFT_SECOND;
}

func int PC_SQ419_SMITHING_LEFT_SECOND_CONDITION() {
    if (((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SQ419_SMITHING)) && ((SQ419_SMITHING_STATUS) == (2))) && ((SQ419_SMITHING_COUNT) != (4))) && ((NPC_HASITEMS(OTHER, 34183)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void PC_SQ419_SMITHING_LEFT_SECOND_INFO() {
    SQ419_SMITHING_STATUS = 3;
    AI_WAIT(HERO, 1065353216);
}

instance PC_SQ419_SMITHING_RIGHT_SECOND(C_INFO) {
    NPC = 50091;
    NR = 1;
    CONDITION = PC_SQ419_SMITHING_RIGHT_SECOND_CONDITION;
    INFORMATION = PC_SQ419_SMITHING_RIGHT_SECOND_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_SQ419_SMITHING_RIGHT_SECOND;
}

func int PC_SQ419_SMITHING_RIGHT_SECOND_CONDITION() {
    if (((((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SQ419_SMITHING)) && ((SQ419_SMITHING_STATUS) == (3))) && ((SQ419_SMITHING_COUNT) != (4))) && ((NPC_HASITEMS(OTHER, 34183)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void SQ419_SMITHING_REMOVEITEM_APPLY() {
    var int SQ419_SMITHING_REMOVEITEM_COUNT;
    SQ419_SMITHING_REMOVEITEM_COUNT = (SQ419_SMITHING_REMOVEITEM_COUNT) + (1);
    if ((SQ419_SMITHING_REMOVEITEM_COUNT) == (5)) {
        SQ419_SMITHING_REMOVEITEM_COUNT = 0;
        NPC_REMOVEINVITEMS(HERO, 34183, 1);
        PRINTD("Usuwam rozgrzane ostrze");
    };
    if ((SQ419_SMITHING_COUNT) == (4)) {
        SQ419_SMITHINGTIME = FALSE;
    };
}

func void SQ419_SMITHING_REMOVEITEM_PREPARE() {
    FF_APPLYONCEEXT(63973, 30, 5);
    HERO.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    AI_STOPPROCESSINFOS(HERO);
}

func void PC_SQ419_SMITHING_RIGHT_SECOND_INFO() {
    SQ419_SMITHING_COUNT = (SQ419_SMITHING_COUNT) + (1);
    SQ419_SMITHING_STATUS = 0;
    CREATEINVITEMS(HERO, 37414, 1);
    PRINTS_EXT(PRINT_SQ419_SMIITH_SUCCESS, RGBA(50, 255, 50, 255));
    AI_WAIT(HERO, 1065353216);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_FUNCTION(HERO, 63975);
}

