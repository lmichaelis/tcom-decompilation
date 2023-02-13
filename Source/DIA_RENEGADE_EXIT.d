instance DIA_RENEGADE_EXIT(C_INFO) {
    NPC = 56224;
    NR = 999;
    CONDITION = DIA_RENEGADE_EXIT_CONDITION;
    INFORMATION = DIA_RENEGADE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_RENEGADE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_RENEGADE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_RENEGADE_HELLO(C_INFO) {
    NPC = 56224;
    NR = 1;
    CONDITION = DIA_RENEGADE_HELLO_CONDITION;
    INFORMATION = DIA_RENEGADE_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_RENEGADE_HELLO_CONDITION() {
    return TRUE;
}

var int RENEGADEGUARD_Q205_INFORMATIONS;
func void DIA_RENEGADE_HELLO_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_03_01");
    AI_DRAWWEAPON(SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        Q205_MARVINHADMILITIAARMORRENEGADE = TRUE;
        AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_03_02");
        AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_03_03");
        INFO_CLEARCHOICES(78477);
        INFO_ADDCHOICE(78477, "None.", 78499);
        INFO_ADDCHOICE(78477, "Gerwin's.", 78487);
        INFO_ADDCHOICE(78477, "Oktav's.", 78498);
        INFO_ADDCHOICE(78477, "Roderich's.", 78488);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_03_04");
    INFO_CLEARCHOICES(78477);
    INFO_ADDCHOICE(78477, "I'm looking for Gerwin's unit.", 78500);
    INFO_ADDCHOICE(78477, "I guess I got a little lost.", 78501);
    INFO_ADDCHOICE(78477, "Roderich sent me.", 78502);
}

func void RENEGADE_Q205_ATTACKMARVIN() {
    Q205_MARVINRENEGADECAVE = 1;
    INFO_CLEARCHOICES(78477);
    AI_STOPPROCESSINFOS(SELF);
    MIL_6264_RENEGADE.ATTRIBUTE[4] = 999999;
    B_ATTACK(MIL_6264_RENEGADE, HERO, 0, 0);
}

func void RENEGADE_Q205_FUNWITHMARVIN() {
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Gerwin_03_07");
    RENEGADE_Q205_ATTACKMARVIN();
}

func void RENEGADE_Q205_SALVIWILLBEHAPPY() {
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Gerwin_03_06");
}

func void RENEGADE_Q205_SUSPICIOUS() {
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Gerwin_03_05");
}

func void RENEGADE_Q205_QUESTIONABOUTGERWIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_NoOne_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_NoOne_03_05");
}

func void RENEGADE_Q205_WANTSWEAPON() {
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WithGerwin_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_WithGerwin_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WithGerwin_03_06");
    INFO_CLEARCHOICES(78477);
    INFO_ADDCHOICE(78477, "I think I'll keep it with me after all.", 78496);
    INFO_ADDCHOICE(78477, "Of course not. (Give the equipment)", 78497);
}

func void DIA_RENEGADE_HELLO_GERWIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Gerwin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Gerwin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Gerwin_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Gerwin_15_04");
    RENEGADE_Q205_SUSPICIOUS();
    RENEGADE_Q205_SALVIWILLBEHAPPY();
    RENEGADE_Q205_FUNWITHMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Roderich_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Roderich_03_02");
    INFO_CLEARCHOICES(78477);
    INFO_ADDCHOICE(78477, "I'm looking for Sergeant Gerwin.", 78489);
    INFO_ADDCHOICE(78477, "Because he's paying me to do it.", 78490);
}

func void DIA_RENEGADE_HELLO_RODERICH_SEARCH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Search_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Search_03_02");
    RENEGADE_Q205_FUNWITHMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Pay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Pay_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Pay_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Pay_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Pay_03_05");
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Pay_15_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Pay_03_07");
    INFO_CLEARCHOICES(78477);
    INFO_ADDCHOICE(78477, "Who's in charge now?", 78491);
    INFO_ADDCHOICE(78477, "What happened to the previous sergeant?", 78492);
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Who_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Who_03_03");
    RENEGADEGUARD_Q205_INFORMATIONS = (RENEGADEGUARD_Q205_INFORMATIONS) + (1);
    if ((RENEGADEGUARD_Q205_INFORMATIONS) == (2)) {
        INFO_ADDCHOICE(78477, "Actually, what are you doing here?", 78493);
    };
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT() {
    Q205_MARVINKNOWABOUTLASTSERGEANT = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_What_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_What_03_06");
    RENEGADEGUARD_Q205_INFORMATIONS = (RENEGADEGUARD_Q205_INFORMATIONS) + (1);
    if ((RENEGADEGUARD_Q205_INFORMATIONS) == (2)) {
        INFO_ADDCHOICE(78477, "Actually, what are you doing here?", 78493);
    };
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_WhatDo_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WhatDo_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WhatDo_03_03");
    INFO_CLEARCHOICES(78477);
    INFO_ADDCHOICE(78477, "With you, of course.", 78494);
    INFO_ADDCHOICE(78477, "I'm loyal to Roderich.", 78495);
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_WITHGERWIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_WithGerwin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WithGerwin_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WithGerwin_03_03");
    RENEGADE_Q205_WANTSWEAPON();
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_WITHRODERICH() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_WithRoderich_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_WithRoderich_03_02");
    RENEGADE_Q205_ATTACKMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_WITHGERWIN_KEEP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Keep_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Keep_03_02");
    RENEGADE_Q205_ATTACKMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_WITHGERWIN_GIVE() {
    Q205_MARVINRENEGADECAVE = 4;
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Give_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Give_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Give_03_03");
    AI_FUNCTION(SELF, 62251);
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Give_03_04");
    AI_LOGENTRY(TOPIC_Q205, LOG_Q205_FOUNDRENEGADES);
    NPC_EXCHANGEROUTINE(SELF, "SALVI");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_OKTAV() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Oktav_15_01");
    RENEGADE_Q205_SUSPICIOUS();
    RENEGADE_Q205_SALVIWILLBEHAPPY();
    RENEGADE_Q205_FUNWITHMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICH_PAY_WHAT_WHATDO_NOONE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_NoOne_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_NoOne_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_NoOne_03_03");
    RENEGADE_Q205_QUESTIONABOUTGERWIN();
    RENEGADE_Q205_WANTSWEAPON();
}

func void DIA_RENEGADE_HELLO_SEARCHGERWIN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_SearchGerwin_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_SearchGerwin_03_02");
    RENEGADE_Q205_FUNWITHMARVIN();
}

func void DIA_RENEGADE_HELLO_LOST() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_Lost_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_Lost_03_02");
    RENEGADE_Q205_SALVIWILLBEHAPPY();
    RENEGADE_Q205_FUNWITHMARVIN();
}

func void DIA_RENEGADE_HELLO_RODERICHSEND() {
    AI_OUTPUT(OTHER, SELF, "DIA_Renegade_HELLO_RoderichSend_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_RoderichSend_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Renegade_HELLO_RoderichSend_03_03");
    RENEGADE_Q205_QUESTIONABOUTGERWIN();
    RENEGADE_Q205_WANTSWEAPON();
}

instance DIA_RENEGADE_AMBIENT(C_INFO) {
    NPC = 56224;
    NR = 1;
    CONDITION = DIA_RENEGADE_AMBIENT_CONDITION;
    INFORMATION = DIA_RENEGADE_AMBIENT_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_RENEGADE_AMBIENT_CONDITION() {
    if ((NPC_ISINSTATE(SELF, 61599)) && (NPC_KNOWSINFO(OTHER, 78509))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_RENEGADE_AMBIENT_INFO() {
    DIA_IMBUSY_ANGRY();
}

