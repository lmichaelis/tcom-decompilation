instance DIA_NATHANIEL_EXIT(C_INFO) {
    NPC = 0xd783;
    NR = 999;
    CONDITION = DIA_NATHANIEL_EXIT_CONDITION;
    INFORMATION = DIA_NATHANIEL_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_NATHANIEL_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_NATHANIEL_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NATHANIEL_HELLO(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_HELLO_CONDITION;
    INFORMATION = DIA_NATHANIEL_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NATHANIEL_HELLO_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        if (((NATHANIEL_MAD) == (FALSE)) || ((SQ305_MARVINCANUSEBLAKELEVER) != (3))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_HELLO_INFO() {
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_HELLO_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_HELLO_03_02");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_HELLO_03_03");
}

instance DIA_NATHANIEL_WHO(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_WHO_CONDITION;
    INFORMATION = DIA_NATHANIEL_WHO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_NATHANIEL_WHO_CONDITION() {
    return TRUE;
}

var int NATHANIEL_MARVINKNOWHISNAME = 0;
func void DIA_NATHANIEL_WHO_INFO() {
    NATHANIEL_MARVINKNOWHISNAME = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Who_03_02");
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "Dia_Fredrik_AraxosWorker_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Who_03_04");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Who_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Who_03_06");
}

instance DIA_NATHANIEL_HOUSE(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_HOUSE_CONDITION;
    INFORMATION = DIA_NATHANIEL_HOUSE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "You got a big house for a poor man.";
}

func int DIA_NATHANIEL_HOUSE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x12aa7)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_HOUSE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_House_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_House_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_House_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_House_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_House_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_House_03_06");
}

instance DIA_NATHANIEL_LIE(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_LIE_CONDITION;
    INFORMATION = DIA_NATHANIEL_LIE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I have a warrant to search this house. (Lie)";
}

func int DIA_NATHANIEL_LIE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x117cf))) && (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL))) {
        if (!(NPC_KNOWSINFO(OTHER, 0x12ab2))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_LIE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Lie_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Lie_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Lie_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Lie_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Lie_03_05");
    AI_STOPPROCESSINFOS(SELF);
    if ((NATHANIEL_MARVINKNOWHISNAME) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_SEARCHHOUSE_V1);
    };
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_SEARCHHOUSE_V2);
}

func void NATHANIEL_KILLMARVIN() {
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

instance DIA_NATHANIEL_BLAKE(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_BLAKE_CONDITION;
    INFORMATION = DIA_NATHANIEL_BLAKE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Does a man named Blake live here?";
}

func int DIA_NATHANIEL_BLAKE_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x117cf)) && ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING))) {
        if (!(NPC_KNOWSINFO(OTHER, 0x12aae))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_BLAKE_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Blake_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_03_02");
    INFO_CLEARCHOICES(0x12ab2);
    INFO_ADDCHOICE(0x12ab2, "Osip says otherwise.", 0x12ab5);
    INFO_ADDCHOICE(0x12ab2, "Are you sure the name doesn't tell you anything?", 0x12ab9);
}

func void DIA_NATHANIEL_BLAKE_OSIP() {
    SQ305_NATHANIELCLOSEGATES = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Blake_Osip_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_Osip_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Blake_Osip_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_Osip_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_Osip_03_05");
    AI_FUNCTION(SELF, 0x12ab6);
    AI_TURNTONPC(HERO, SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, "KM_NATHANIEL_HOUSE_27");
    AI_USEMOB(SELF, "LEVER", -(1));
    AI_TURNTONPC(SELF, OTHER);
    AI_USEMOB(SELF, "LEVER", 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_Osip_03_06");
    AI_FUNCTION(SELF, 0x12ab7);
    if ((NATHANIEL_MARVINKNOWHISNAME) == (TRUE)) {
        AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_OPENCRATES_V1);
    };
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_OPENCRATES_V2);
    INFO_CLEARCHOICES(0x12ab2);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "WAIT");
}

func void NATHANIEL_TELEPORTNPC() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("KM_NATHANIEL_CRATE_CAMERA");
    TELEPORTNPCTOWP(0xd783, "KM_NATHANIEL_HOUSE_25");
    TELEPORTNPCTOWP(0x71b, "KM_NATHANIEL_HOUSE_24");
}

func void NATHANIEL_ENDCUTSCENE() {
    WLD_SENDUNTRIGGER("KM_NATHANIEL_CRATE_CAMERA");
    DIACAM_ENABLE();
}

var int NATHANIEL_MAD = 0;
func void DIA_NATHANIEL_BLAKE_SURE() {
    NATHANIEL_MAD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Blake_Sure_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Blake_Sure_03_02");
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_GOAWAY_V1);
    INFO_CLEARCHOICES(0x12ab2);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NATHANIEL_AMBIENTMAD(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_AMBIENTMAD_CONDITION;
    INFORMATION = DIA_NATHANIEL_AMBIENTMAD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_NATHANIEL_AMBIENTMAD_CONDITION() {
    if ((((NATHANIEL_MAD) == (TRUE)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING))) {
        if ((SQ305_MARVINCANUSEBLAKELEVER) != (3)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_AMBIENTMAD_INFO() {
    NPC_INITAMBIENTS(SELF, 3);
    if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_AmbientMad_03_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_AmbientMad_03_02");
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_AmbientMad_03_03");
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((NPC_GETLASTAMBIENT(SELF)) == (3)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_AmbientMad_03_04");
        AI_STOPPROCESSINFOS(SELF);
        B_ATTACK(SELF, OTHER, AR_KILL, 1);
    };
}

instance DIA_NATHANIEL_CRATES(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_CRATES_CONDITION;
    INFORMATION = DIA_NATHANIEL_CRATES_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's behind these bars?";
}

func int DIA_NATHANIEL_CRATES_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x12ab2)) && ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_RUNNING))) {
        if ((NPC_KNOWSINFO(OTHER, 0x12aae)) && ((NPC_GETDISTTOWP(SELF, "KM_NATHANIEL_HOUSE_27")) <= (500))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_CRATES_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_03_05");
    INFO_CLEARCHOICES(0x12abd);
    INFO_ADDCHOICE(0x12abd, "Could you open the bars, please?", 0x12ac0);
    INFO_ADDCHOICE(0x12abd, "I see.", 0x12ac1);
}

func void DIA_NATHANIEL_CRATES_OPEN() {
    SQ305_NATHANIELATTACKHERO = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_Open_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_Open_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_06");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_Open_15_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_08");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_Open_15_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Open_03_10");
    INFO_CLEARCHOICES(0x12abd);
    NATHANIEL_KILLMARVIN();
}

func void DIA_NATHANIEL_CRATES_OKAY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_Crates_Okay_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_Crates_Okay_03_02");
    AI_LOGENTRY(TOPIC_SQ305, LOG_Q308_NATHANIEL_GOAWAY_V2);
    INFO_CLEARCHOICES(0x12abd);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_NATHANIEL_WHATHAPPEND(C_INFO) {
    NPC = 0xd783;
    NR = 1;
    CONDITION = DIA_NATHANIEL_WHATHAPPEND_CONDITION;
    INFORMATION = DIA_NATHANIEL_WHATHAPPEND_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_NATHANIEL_WHATHAPPEND_CONDITION() {
    if (((SQ305_MARVINCANUSEBLAKELEVER) == (3)) && ((LOG_GETSTATUS(MIS_SQ305)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_WHATHAPPEND_INFO() {
    AI_DRAWWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_WhatHappend_03_01");
    INFO_CLEARCHOICES(0x12ac2);
    INFO_ADDCHOICE(0x12ac2, "Blake and his men are dead.", 0x12ac5);
    INFO_ADDCHOICE(0x12ac2, "You misheard.", 0x12ac6);
}

func void DIA_NATHANIEL_WHATHAPPEND_BLAKE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_WhatHappend_Blake_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_WhatHappend_Blake_15_02");
    AI_DRAWWEAPON(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_WhatHappend_Blake_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_WhatHappend_Blake_03_04");
    INFO_CLEARCHOICES(0x12ac2);
    NATHANIEL_KILLMARVIN();
}

func void DIA_NATHANIEL_WHATHAPPEND_NO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_WhatHappend_No_15_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Nathaniel_WhatHappend_No_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_WhatHappend_No_03_03");
    B_SAY(OTHER, SELF, NAME_SPL_GREENTENTACLE);
    AI_OUTPUT(SELF, OTHER, "DIA_Nathaniel_WhatHappend_No_03_04");
    INFO_CLEARCHOICES(0x12ac2);
    NATHANIEL_KILLMARVIN();
}

instance DIA_NATHANIEL_PICKPOCKET(C_INFO) {
    NPC = 0xd783;
    NR = 900;
    CONDITION = DIA_NATHANIEL_PICKPOCKET_CONDITION;
    INFORMATION = DIA_NATHANIEL_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_40;
}

func int DIA_NATHANIEL_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_NATHANIEL_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(0x12ac7);
    INFO_ADDCHOICE(0x12ac7, DIALOG_BACK, 0x12acb);
    INFO_ADDCHOICE(0x12ac7, DIALOG_PICKPOCKET, 0x12aca);
}

func void DIA_NATHANIEL_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        B_PICKPOCKET_AMBIENT_TIER_1();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(0x12ac7);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(0x12ac7);
}

func void DIA_NATHANIEL_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(0x12ac7);
}
