instance DIA_THIEF_EXIT(C_INFO) {
    NPC = 0xd895;
    NR = 999;
    CONDITION = DIA_THIEF_EXIT_CONDITION;
    INFORMATION = DIA_THIEF_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_THIEF_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_THIEF_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_THIEF_HELLO(C_INFO) {
    NPC = 0xd895;
    NR = 1;
    CONDITION = DIA_THIEF_HELLO_CONDITION;
    INFORMATION = DIA_THIEF_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THIEF_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void THIEF_FMQ003_CHANGEWEIGARRTN() {
    B_STARTOTHERROUTINE(MIL_4016_WEGAR, "CHURCHFIGHT");
    NPC_REFRESH(MIL_4016_WEGAR);
}

func void THIEF_ARENAFIGHT() {
    SELF.AIVAR[96] = -(1);
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x126b3);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

func void DIA_THIEF_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_03_06");
    INFO_CLEARCHOICES(0x126b1);
    INFO_ADDCHOICE(0x126b1, "Yes, that's right. Let's go.", 0x126b6);
    INFO_ADDCHOICE(0x126b1, "Could I see what you're reading there?", 0x126b7);
}

func void DIA_THIEF_HELLO_LEAVE() {
    FMQ003_THIEFTALK = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Leave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Leave_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Leave_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Leave_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Leave_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Leave_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Leave_03_07");
    INFO_CLEARCHOICES(0x126b1);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_THIEF_HELLO_INSCPECT() {
    FMQ003_THIEFTALK = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Inscpect_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Inscpect_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Inscpect_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Inscpect_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_Hello_Inscpect_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_Hello_Inscpect_03_06");
    INFO_CLEARCHOICES(0x126b1);
    THIEF_ARENAFIGHT();
}

instance DIA_THIEF_THIEFNOTE(C_INFO) {
    NPC = 0xd895;
    NR = 2;
    CONDITION = DIA_THIEF_THIEFNOTE_CONDITION;
    INFORMATION = DIA_THIEF_THIEFNOTE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_THIEF_THIEFNOTE_CONDITION() {
    if ((FMQ003_THIEFNOTEREAD) == (TRUE)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_THIEF_THIEFNOTE_INFO() {
    SELF.AIVAR[45] = AF_NONE;
    (SELF.AIVAR[64]) == (TRUE);
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_03_02");
    INFO_CLEARCHOICES(0x126b8);
    INFO_ADDCHOICE(0x126b8, "You have one last chance.", 0x126bc);
    INFO_ADDCHOICE(0x126b8, "You can explain in the barracks.", 0x126bd);
}

func void THIEF_GOTOBARRACK() {
    MDL_APPLYOVERLAYMDS(SELF, HUMANSTIREDMDS);
    NPC_EXCHANGEROUTINE(SELF, "Barrack");
    NPC_SETREFUSETALK(MIL_4016_WEGAR, 2);
    B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, "WaitForPrisoner");
    NPC_REFRESH(MIL_4047_PRISONGUARD);
    INFO_CLEARCHOICES(0x126b8);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_THIEF_THIEFNOTE_PRISON() {
    FMQ003_THIEFTALK = 3;
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Prison_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Prison_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Prison_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Prison_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Prison_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Prison_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Prison_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Prison_15_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Prison_03_09");
    THIEF_GOTOBARRACK();
}

func void DIA_THIEF_THIEFNOTE_BARRACK() {
    FMQ003_THIEFTALK = 4;
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Barrack_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Barrack_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Barrack_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Barrack_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Barrack_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Barrack_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Thief_ThiefNote_Barrack_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Thief_ThiefNote_Barrack_03_08");
    THIEF_GOTOBARRACK();
}

