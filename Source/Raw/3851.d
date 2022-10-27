instance DIA_RECEPTIONIST_WANTROOM(C_INFO) {
    NPC = 0xd134;
    NR = 1;
    CONDITION = DIA_RECEPTIONIST_WANTROOM_CONDITION;
    INFORMATION = DIA_RECEPTIONIST_WANTROOM_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I want to rent a room.";
}

var int RECEPTIONIST_WANTROOM = 0;
var int RECEPTIONIST_WANTROOM_DAY = 0;
func int DIA_RECEPTIONIST_WANTROOM_CONDITION() {
    if ((RECEPTIONIST_WANTROOM) == (0)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RECEPTIONIST_WANTROOM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Receptionist_WantRoom_15_01");
    INFO_CLEARCHOICES(0x11b86);
    INFO_ADDCHOICE(0x11b86, DIALOG_BACK, 0x11b8c);
    INFO_ADDCHOICE(0x11b86, DIALOG_PAY100G, 0x11b8b);
}

func void DIA_RECEPTIONIST_WANTROOM_PAY() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ413_ROOMCOST)) {
        AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ413_ROOMCOST);
        B_SAY(SELF, OTHER, "$SURE_V3");
        RECEPTIONIST_WANTROOM = 1;
        RECEPTIONIST_WANTROOM_DAY = WLD_GETDAY();
        SQ413_LIMAKALLOWUSTOGO = 1;
    };
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$NOGOLD");
    AI_RESETFACEANI(SELF);
}

func void DIA_RECEPTIONIST_WANTROOM_BACK() {
    INFO_CLEARCHOICES(0x11b86);
}

instance DIA_RECEPTIONIST_WHEREMYMONEY(C_INFO) {
    NPC = 0xd134;
    NR = 1;
    CONDITION = DIA_RECEPTIONIST_WHEREMYMONEY_CONDITION;
    INFORMATION = DIA_RECEPTIONIST_WHEREMYMONEY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RECEPTIONIST_WHEREMYMONEY_CONDITION() {
    if (((RECEPTIONIST_WANTROOM) == (1)) && ((RECEPTIONIST_WANTROOM_DAY) <= ((WLD_GETDAY()) - (1)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RECEPTIONIST_WHEREMYMONEY_INFO() {
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    B_SAY(SELF, OTHER, "$NOGOLD");
    RECEPTIONIST_WANTROOM = 0;
    SQ413_LIMAKALLOWUSTOGO = 0;
    AI_RESETFACEANI(SELF);
}

