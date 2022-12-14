instance DIA_SMITHHELPER_EXIT(C_INFO) {
    NPC = 0xc8b6;
    NR = 999;
    CONDITION = DIA_SMITHHELPER_EXIT_CONDITION;
    INFORMATION = DIA_SMITHHELPER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_SMITHHELPER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_SMITHHELPER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_SMITHHELPER_LEARNTALENT(C_INFO) {
    NPC = 0xc8b6;
    NR = 1;
    CONDITION = DIA_SMITHHELPER_LEARNTALENT_CONDITION;
    INFORMATION = DIA_SMITHHELPER_LEARNTALENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Legitna nauka kowalstwa";
}

func int DIA_SMITHHELPER_LEARNTALENT_CONDITION() {
    return TRUE;
}

func void DIA_SMITHHELPER_LEARNTALENT_INFO() {
    INFO_CLEARCHOICES(0x165ca);
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) == (0)) {
        INFO_ADDCHOICE(0x165ca, B_BUILDLEARNSTRING("Kowalstwo: Podstawy", B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 1)), 0x165cd);
    };
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) == (1)) {
        INFO_ADDCHOICE(0x165ca, B_BUILDLEARNSTRING("Kowalstwo: Zaawansowane", B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 2)), 0x165ce);
    };
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) == (2)) {
        INFO_ADDCHOICE(0x165ca, B_BUILDLEARNSTRING("Kowalstwo: Mistrzowskie", B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 3)), 0x165cf);
    };
}

func void DIA_SMITHHELPER_LEARNTALENT_1() {
    B_TEACHPLAYERTALENTSMITH(SELF, OTHER, 1);
    INFO_CLEARCHOICES(0x165ca);
}

func void DIA_SMITHHELPER_LEARNTALENT_2() {
    B_TEACHPLAYERTALENTSMITH(SELF, OTHER, 2);
    INFO_CLEARCHOICES(0x165ca);
}

func void DIA_SMITHHELPER_LEARNTALENT_3() {
    SMITH_FINISHTRAIN = TRUE;
    SMITH_FINISHTRAIN_DAY = WLD_GETDAY();
    B_TEACHPLAYERTALENTSMITH(SELF, OTHER, 3);
    INFO_CLEARCHOICES(0x165ca);
}

instance DIA_SMITHHELPER_GIVETALENT(C_INFO) {
    NPC = 0xc8b6;
    NR = 1;
    CONDITION = DIA_SMITHHELPER_GIVETALENT_CONDITION;
    INFORMATION = DIA_SMITHHELPER_GIVETALENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Daj skillsy";
}

func int DIA_SMITHHELPER_GIVETALENT_CONDITION() {
    return TRUE;
}

func void DIA_SMITHHELPER_GIVETALENT_INFO() {
    INFO_CLEARCHOICES(0x165d0);
    INFO_ADDCHOICE(0x165d0, "Brak", 0x165d3);
    INFO_ADDCHOICE(0x165d0, "Zielony", 0x165d4);
    INFO_ADDCHOICE(0x165d0, "Do?wiadczony", 0x165d5);
    INFO_ADDCHOICE(0x165d0, "Mistrz", 0x165d6);
}

func void DIA_SMITHHELPER_GIVETALENT_0() {
    NPC_SETTALENTSKILL(OTHER, NPC_TALENT_SMITH, 0);
    INFO_CLEARCHOICES(0x165d0);
}

func void DIA_SMITHHELPER_GIVETALENT_1() {
    NPC_SETTALENTSKILL(OTHER, NPC_TALENT_SMITH, 1);
    INFO_CLEARCHOICES(0x165d0);
}

func void DIA_SMITHHELPER_GIVETALENT_2() {
    NPC_SETTALENTSKILL(OTHER, NPC_TALENT_SMITH, 2);
    INFO_CLEARCHOICES(0x165d0);
}

func void DIA_SMITHHELPER_GIVETALENT_3() {
    NPC_SETTALENTSKILL(OTHER, NPC_TALENT_SMITH, 3);
    INFO_CLEARCHOICES(0x165d0);
}

instance DIA_SMITHHELPER_GIVEHAMMER(C_INFO) {
    NPC = 0xc8b6;
    NR = 2;
    CONDITION = DIA_SMITHHELPER_GIVEHAMMER_CONDITION;
    INFORMATION = DIA_SMITHHELPER_GIVEHAMMER_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Daj m?otek";
}

func int DIA_SMITHHELPER_GIVEHAMMER_CONDITION() {
    return TRUE;
}

func void DIA_SMITHHELPER_GIVEHAMMER_INFO() {
    B_GIVEINVITEMS(SELF, OTHER, 0x84d3, 1);
}

instance DIA_SMITHHELPER_GIVESWORDRAW(C_INFO) {
    NPC = 0xc8b6;
    NR = 3;
    CONDITION = DIA_SMITHHELPER_GIVESWORDRAW_CONDITION;
    INFORMATION = DIA_SMITHHELPER_GIVESWORDRAW_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "Daj towar";
}

func int DIA_SMITHHELPER_GIVESWORDRAW_CONDITION() {
    return TRUE;
}

func void DIA_SMITHHELPER_GIVESWORDRAW_INFO() {
    B_GIVEINVITEMS(SELF, OTHER, 0x859a, 500);
}

