instance DIA_DALMON_EXIT(C_INFO) {
    NPC = 58315;
    NR = 999;
    CONDITION = DIA_DALMON_EXIT_CONDITION;
    INFORMATION = DIA_DALMON_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_DALMON_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_DALMON_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_DALMON_GUARDMINE(C_INFO) {
    NPC = 58315;
    NR = 1;
    CONDITION = DIA_DALMON_GUARDMINE_CONDITION;
    INFORMATION = DIA_DALMON_GUARDMINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need someone to guard the mine.";
}

func int DIA_DALMON_GUARDMINE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && (NPC_KNOWSINFO(OTHER, 82248))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_GUARDMINE_INFO() {
    Q404_MARVINASK_NEEDHELP();
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_GuardMine_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_GuardMine_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_GuardMine_03_04");
}

instance DIA_DALMON_PROBLEM(C_INFO) {
    NPC = 58315;
    NR = 1;
    CONDITION = DIA_DALMON_PROBLEM_CONDITION;
    INFORMATION = DIA_DALMON_PROBLEM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What's the problem?";
}

func int DIA_DALMON_PROBLEM_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 82221))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_PROBLEM_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_03_06");
    INFO_CLEARCHOICES(82224);
    INFO_ADDCHOICE(82224, "A girl sent a letter to a man?", 82228);
    INFO_ADDCHOICE(82224, "Hence the talk of a fight...", 82229);
}

func void DIA_DALMON_PROBLEM_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_Next_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_Next_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_Next_03_03");
    INFO_CLEARCHOICES(82224);
    AI_STOPPROCESSINFOS(SELF);
    CREATEINVITEMS(SELF, 37345, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37345, 1);
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_DALMONLETTER);
}

func void DIA_DALMON_PROBLEM_LETTER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_Letter_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_Letter_03_02");
    DIA_DALMON_PROBLEM_NEXT();
}

func void DIA_DALMON_PROBLEM_FIGHT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Problem_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Problem_Fight_03_02");
    DIA_DALMON_PROBLEM_NEXT();
}

instance DIA_DALMON_LETTER(C_INFO) {
    NPC = 58315;
    NR = 1;
    CONDITION = DIA_DALMON_LETTER_CONDITION;
    INFORMATION = DIA_DALMON_LETTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Ready to hear the content?";
}

func int DIA_DALMON_LETTER_CONDITION() {
    if (((((NPC_KNOWSINFO(OTHER, 82224)) && ((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && ((Q404_ROSALINELETTERREAD) == (TRUE))) && ((NPC_HASITEMS(OTHER, 37345)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_LETTER_CHOICES_V1() {
    INFO_CLEARCHOICES(82230);
    INFO_ADDCHOICE(82230, "She writes that she doesn't like the city.", 82236);
    INFO_ADDCHOICE(82230, "She liked the city very much.", 82237);
    INFO_ADDCHOICE(82230, "She thinks the Den is a nicer place than the city.", 82238);
}

func void DIA_DALMON_LETTER_CHOICES_V2() {
    INFO_CLEARCHOICES(82230);
    INFO_ADDCHOICE(82230, "Her father is swamping her with work.", 82239);
    INFO_ADDCHOICE(82230, "Her father allows her to lounge around all day.", 82240);
    INFO_ADDCHOICE(82230, "Her father started drinking.", 82241);
}

func void DIA_DALMON_LETTER_CHOICES_V3() {
    INFO_CLEARCHOICES(82230);
    INFO_ADDCHOICE(82230, "She met some young paladin.", 82242);
    INFO_ADDCHOICE(82230, "Her father wants to marry her off to some merchant.", 82243);
    INFO_ADDCHOICE(82230, "A man named Borr tells her stories about the city.", 82244);
}

func void DIA_DALMON_LETTER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_15_01");
    B_STANDUP();
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_03_02");
    DIA_DALMON_LETTER_CHOICES_V1();
}

func void DIA_DALMON_LETTER_CITYV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV1_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV1_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV1_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV1_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV1_03_05");
    DIA_DALMON_LETTER_CHOICES_V2();
}

func void DIA_DALMON_LETTER_CITYV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV2_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV2_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV2_03_04");
    DIA_DALMON_LETTER_CHOICES_V2();
}

func void DIA_DALMON_LETTER_CITYV3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV3_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV3_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_CityV3_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_CityV3_03_04");
    DIA_DALMON_LETTER_CHOICES_V2();
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV1_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV1_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV1_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV1_03_04");
    DIA_DALMON_LETTER_CHOICES_V3();
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV2_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV2_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV2_03_04");
    DIA_DALMON_LETTER_CHOICES_V3();
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV3() {
    Q404_DALMON_TELLLIE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV3_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV3_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_FatherV3_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_FatherV3_03_04");
    DIA_DALMON_LETTER_CHOICES_V3();
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV3_BORRV1() {
    Q404_DALMON_TELLLIE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV1_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV1_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV1_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV1_03_04");
    INFO_CLEARCHOICES(82230);
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV3_BORRV2() {
    Q404_DALMON_TELLLIE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV2_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV2_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV2_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV2_03_04");
    INFO_CLEARCHOICES(82230);
}

func void DIA_DALMON_LETTER_CITYV3_FATHERV3_BORRV3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV3_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV3_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Letter_BorrV3_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Letter_BorrV3_03_04");
    INFO_CLEARCHOICES(82230);
}

instance DIA_DALMON_HELPMINE(C_INFO) {
    NPC = 58315;
    NR = 1;
    CONDITION = DIA_DALMON_HELPMINE_CONDITION;
    INFORMATION = DIA_DALMON_HELPMINE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "So? Will you go guard the mine?";
}

func int DIA_DALMON_HELPMINE_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q404)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 82230))) && ((Q404_GUARDMINE_NEEDHELP) == (TRUE))) && ((NPC_HASITEMS(OTHER, 37345)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_HELPMINE_INFO() {
    Q404_DALMONSTATUS = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_HelpMine_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_HelpMine_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_HelpMine_15_03");
    B_GIVEINVITEMS(OTHER, SELF, 37345, 1);
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_HelpMine_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_HelpMine_03_05");
    if ((Q404_DALMON_TELLLIE) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_HelpMine_03_06");
    };
    AI_LOGENTRY(TOPIC_Q404, LOG_Q404_DALMON_SUCCESS);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "LETTER");
}

instance DIA_DALMON_HELLO(C_INFO) {
    NPC = 58315;
    NR = 1;
    CONDITION = DIA_DALMON_HELLO_CONDITION;
    INFORMATION = DIA_DALMON_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_DALMON_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_DALMON_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Hello_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Hello_03_02");
}

instance DIA_DALMON_AMBIENT(C_INFO) {
    NPC = 58315;
    NR = 850;
    CONDITION = DIA_DALMON_AMBIENT_CONDITION;
    INFORMATION = DIA_DALMON_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_DALMON_AMBIENT_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 82248)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_AMBIENT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_Ambient_15_01");
    if ((Q404_DALMONSTATUS) == (0)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Ambient_03_02");
    };
    if ((Q404_DALMONSTATUS) == (1)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Ambient_03_03");
    };
    if (((Q404_DALMONSTATUS) == (2)) || ((Q404_DALMONSTATUS) == (3))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Ambient_03_04");
    };
    if ((Q404_DALMONSTATUS) == (4)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Dalmon_Ambient_03_05");
    };
}

instance DIA_DALMON_PICKPOCKET(C_INFO) {
    NPC = 58315;
    NR = 900;
    CONDITION = DIA_DALMON_PICKPOCKET_CONDITION;
    INFORMATION = DIA_DALMON_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_120;
}

func int DIA_DALMON_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_DALMON_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(82254);
    INFO_ADDCHOICE(82254, DIALOG_BACK, 82258);
    INFO_ADDCHOICE(82254, DIALOG_PICKPOCKET, 82257);
}

func void DIA_DALMON_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (3)) {
        B_PICKPOCKET_AMBIENT_TIER_3();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(82254);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(82254);
}

func void DIA_DALMON_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(82254);
}

