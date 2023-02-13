instance DIA_OTHEKAR_EXIT(C_INFO) {
    NPC = 56657;
    NR = 999;
    CONDITION = DIA_OTHEKAR_EXIT_CONDITION;
    INFORMATION = DIA_OTHEKAR_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_OTHEKAR_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_OTHEKAR_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_OTHEKAR_Q501_ALMANAC(C_INFO) {
    NPC = 56657;
    NR = 1;
    CONDITION = DIA_OTHEKAR_Q501_ALMANAC_CONDITION;
    INFORMATION = DIA_OTHEKAR_Q501_ALMANAC_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I would like to borrow the 'The Almanac of Alchemical Measures'.";
}

func int DIA_OTHEKAR_Q501_ALMANAC_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_MARVINGOTOSLEEP) == (4))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTHEKAR_Q501_ALMANAC_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_Q501_Almanac_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_03_04");
    INFO_CLEARCHOICES(79805);
    INFO_ADDCHOICE(79805, "Maybe I can help you with that?", 79808);
}

func void DIA_OTHEKAR_Q501_ALMANAC_HELP() {
    Q501_CLEANBOOKS = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_Q501_Almanac_Help_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_Help_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_Help_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_Almanac_Help_03_04");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_OTHEKAR_BOOKHELP);
    INFO_CLEARCHOICES(79805);
    AI_STOPPROCESSINFOS(SELF);
}

var int Q501_WEGOTALMANACH;
instance DIA_OTHEKAR_Q501_GIVEBOOK(C_INFO) {
    NPC = 56657;
    NR = 1;
    CONDITION = DIA_OTHEKAR_Q501_GIVEBOOK_CONDITION;
    INFORMATION = DIA_OTHEKAR_Q501_GIVEBOOK_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "About the 'Almanac'...";
}

func int DIA_OTHEKAR_Q501_GIVEBOOK_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 79805))) && ((Q501_MARVINGOTOSLEEP) == (4))) && ((Q501_CLEANBOOKS) == (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTHEKAR_Q501_GIVEBOOK_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_Q501_GiveBook_15_01");
    if (((((((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_RELIGION", 37517)) == (TRUE)) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_ASTRONOMY", 37521)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_HISTORY", 37530)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_FAUNA", 37520)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_MAGIC", 37527)) == (TRUE))) && ((MOB_HASITEMS("KM_BOOKSHELF_MONASTERY_LITERATURE", 37524)) == (TRUE))) {
        Q501_CLEANBOOKS = 2;
        AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_GiveBook_03_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_GiveBook_03_04");
        Q501_WEGOTALMANACH = TRUE;
        AI_LOGENTRY(TOPIC_Q501, LOG_Q501_OTHEKAR_GIVEBOOK);
        CREATEINVITEMS(SELF, 37533, 1);
        B_GIVEINVITEMS(SELF, OTHER, 37533, 1);
        Q501_COUNTSTUFF();
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_Q501_GiveBook_03_02");
    AI_STOPPROCESSINFOS(SELF);
}

var int SQ506_OTHEKAR_AMBIENT;
instance DIA_OTHEKAR_SQ506_WAIT(C_INFO) {
    NPC = 56657;
    NR = 1;
    CONDITION = DIA_OTHEKAR_SQ506_WAIT_CONDITION;
    INFORMATION = DIA_OTHEKAR_SQ506_WAIT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_OTHEKAR_SQ506_WAIT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ506)) == (LOG_RUNNING)) && ((SQ506_GOTALLSTUF) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTHEKAR_SQ506_WAIT_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_03_01");
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_SQ506_Wait_15_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_03_05");
    INFO_CLEARCHOICES(79814);
    INFO_ADDCHOICE(79814, "I don't like your attitude. I'll give him his stuff back.", 79818);
    INFO_ADDCHOICE(79814, "If you think it will help him, I'll give you his things.", 79819);
}

func void DIA_OTHEKAR_SQ506_END() {
    INFO_CLEARCHOICES(79814);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, START);
}

func void DIA_OTHEKAR_SQ506_WAIT_NO() {
    SQ506_OTHEKARDECISION = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_SQ506_Wait_No_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_No_03_02");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    if ((Q501_CLEANBOOKS) == (2)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_No_03_03");
    };
    SQ506_OTHEKAR_AMBIENT = TRUE;
    AI_LOGENTRY(TOPIC_SQ506, LOG_SQ506_OTHEKAR_DONTGIVESTUFF);
    DIA_OTHEKAR_SQ506_END();
}

func void DIA_OTHEKAR_SQ506_WAIT_YES() {
    SQ506_OTHEKARDECISION = 1;
    SQ506_GIVEALLSTUFF();
    AI_OUTPUT(OTHER, SELF, "DIA_Othekar_SQ506_Wait_Yes_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_Yes_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Othekar_SQ506_Wait_Yes_03_03");
    SQ506_OTHEKAR_AMBIENT = TRUE;
    AI_LOGENTRY(TOPIC_SQ506, LOG_SQ506_OTHEKAR_GIVESTUFF);
    DIA_OTHEKAR_SQ506_END();
}

instance DIA_OTHEKAR_PICKPOCKET(C_INFO) {
    NPC = 56657;
    NR = 900;
    CONDITION = DIA_OTHEKAR_PICKPOCKET_CONDITION;
    INFORMATION = DIA_OTHEKAR_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_OTHEKAR_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_OTHEKAR_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(79820);
    INFO_ADDCHOICE(79820, DIALOG_BACK, 79824);
    INFO_ADDCHOICE(79820, DIALOG_PICKPOCKET, 79823);
}

func void DIA_OTHEKAR_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35989, 3);
        B_GIVEINVITEMS(SELF, OTHER, 35989, 3);
        CREATEINVITEMS(SELF, 33714, 1);
        B_GIVEINVITEMS(SELF, OTHER, 33714, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(79820);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(79820);
}

func void DIA_OTHEKAR_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(79820);
}
