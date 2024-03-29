instance DIA_WOLFSON_SQ417_02_EXIT(C_INFO) {
    NPC = 58173;
    NR = 999;
    CONDITION = DIA_WOLFSON_SQ417_02_EXIT_CONDITION;
    INFORMATION = DIA_WOLFSON_SQ417_02_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_WOLFSON_SQ417_02_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_WOLFSON_SQ417_02_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_WOLFSON_SQ417_02_WHATHAPPEND(C_INFO) {
    NPC = 58173;
    NR = 1;
    CONDITION = DIA_WOLFSON_SQ417_02_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_WOLFSON_SQ417_02_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_WOLFSON_SQ417_02_WHATHAPPEND_CONDITION() {
    if ((LOG_GETSTATUS(MIS_SQ417)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_WOLFSON_SQ417_02_WHATHAPPEND_INFO() {
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_SQ417_02_WhatHappend_03_01");
    INFO_CLEARCHOICES(82454);
    INFO_ADDCHOICE(82454, "None of your business, now get out of my way.", 82458);
    INFO_ADDCHOICE(82454, "Relax, I'm here on Arethe's orders.", 82457);
}

func void DIA_WOLFSON_SQ417_02_WHATHAPPEND_YES() {
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_SQ417_02_WhatHappend_Yes_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_SQ417_02_WhatHappend_Yes_15_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_SQ417_02_WhatHappend_Yes_03_03");
    INFO_CLEARCHOICES(82454);
    NPC_EXCHANGEROUTINE(SELF, "SQ417_SLEEP");
}

func void DIA_WOLFSON_SQ417_02_WHATHAPPEND_NO() {
    SQ417_FIGHTWITHWOLFSON = 1;
    SELF.AIVAR[96] = -(1);
    SELF.AIVAR[45] = AF_RUNNING;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_WolfSon_SQ417_02_WhatHappend_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_WolfSon_SQ417_02_WhatHappend_No_03_02");
    INFO_CLEARCHOICES(82454);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

