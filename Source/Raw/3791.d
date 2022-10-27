instance DIA_ARAXOS_SQ207_EXIT(C_INFO) {
    NPC = 0xcc13;
    NR = 999;
    CONDITION = DIA_ARAXOS_SQ207_EXIT_CONDITION;
    INFORMATION = DIA_ARAXOS_SQ207_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARAXOS_SQ207_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARAXOS_SQ207_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARAXOS_SQ207_HELLO(C_INFO) {
    NPC = 0xcc13;
    NR = 1;
    CONDITION = DIA_ARAXOS_SQ207_HELLO_CONDITION;
    INFORMATION = DIA_ARAXOS_SQ207_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ARAXOS_SQ207_HELLO_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ207)) == (LOG_RUNNING)) && ((SQ207_DIMATOLEXX) == (4))) && ((SQ207_FAILED) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void ARAXOS_SQ207_FINISHEVENT() {
    SQ207_ARAXOSEVENT_FINSIH = TRUE;
    HERO.AIVAR[4] = FALSE;
}

func void DIA_ARAXOS_SQ207_HELLO_INFO() {
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_15_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_15_04");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_03_05");
    INFO_CLEARCHOICES(0x114da);
    INFO_ADDCHOICE(0x114da, "You're not getting anything from me. Take it up with Dima.", 0x114e1);
    INFO_ADDCHOICE(0x114da, "If you say so. So be it. Here's your gold", 0x114e0);
}

func void DIA_ARAXOS_SQ207_HELLO_LEAVE() {
    INFO_CLEARCHOICES(0x114da);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, TOT);
    AI_FUNCTION(SELF, 0x114dc);
}

func void DIA_ARAXOS_SQ207_HELLO_GIVEGOLD() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ207_ARAXOSPRICE)) {
        SQ207_HELPEDDIMAARAXOS = 1;
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ207_ARAXOSPRICE);
        AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_Yes_03_02");
    };
    SQ207_HELPEDDIMAARAXOS = 2;
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_Yes_03_03");
    DIA_ARAXOS_SQ207_HELLO_LEAVE();
}

func void DIA_ARAXOS_SQ207_HELLO_YES() {
    AI_STARTFACEANI(OTHER, S_NOPE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_Yes_15_01");
    AI_RESETFACEANI(OTHER);
    DIA_ARAXOS_SQ207_HELLO_GIVEGOLD();
}

func void DIA_ARAXOS_SQ207_HELLO_NO() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_No_15_01");
    AI_STARTFACEANI(SELF, "S_HOSTILE", 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_No_03_02");
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_No_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_No_03_04");
    INFO_CLEARCHOICES(0x114da);
    INFO_ADDCHOICE(0x114da, "I'll take my chances.", 0x114e3);
    INFO_ADDCHOICE(0x114da, "You won. Here's your money.", 0x114e2);
}

func void DIA_ARAXOS_SQ207_HELLO_NO_SURE() {
    AI_STARTFACEANI(OTHER, S_NOPE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_Sure_15_01");
    AI_RESETFACEANI(OTHER);
    DIA_ARAXOS_SQ207_HELLO_GIVEGOLD();
}

func void DIA_ARAXOS_SQ207_HELLO_NO_NOWAY() {
    SQ207_HELPEDDIMAARAXOS = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_NoWay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_NoWay_03_02");
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Araxos_SQ207_Hello_NoWay_15_03");
    AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Araxos_SQ207_Hello_NoWay_03_04");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    DIA_ARAXOS_SQ207_HELLO_LEAVE();
}

