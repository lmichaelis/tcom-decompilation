instance DIA_GRAVEPIRATE_EXIT(C_INFO) {
    NPC = 0xe47c;
    NR = 999;
    CONDITION = DIA_GRAVEPIRATE_EXIT_CONDITION;
    INFORMATION = DIA_GRAVEPIRATE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_GRAVEPIRATE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_GRAVEPIRATE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_GRAVEPIRATE_FUNERAL(C_INFO) {
    NPC = 0xe47c;
    NR = 1;
    CONDITION = DIA_GRAVEPIRATE_FUNERAL_CONDITION;
    INFORMATION = DIA_GRAVEPIRATE_FUNERAL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_GRAVEPIRATE_FUNERAL_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 0x14bec)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_GRAVEPIRATE_FUNERAL_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_13_03");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_13_04");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_13_05");
    INFO_ADDCHOICE(0x14c04, "You know how to defeat Ben?", 0x14c07);
}

func void DIA_GRAVEPIRATE_FUNERAL_BEN() {
    AI_OUTPUT(OTHER, SELF, "DIA_GravePirate_Funeral_Ben_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_Ben_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_Ben_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_Ben_13_03");
    INFO_CLEARCHOICES(0x14c04);
    INFO_ADDCHOICE(0x14c04, "Sorry, I'm not interested.", 0x14c09);
    INFO_ADDCHOICE(0x14c04, "How much do you charge for such a service?", 0x14c0a);
}

func void Q306_STARTFINALFIGHT() {
    B_STARTOTHERROUTINE(NONE_7500_BEN, "ArenaFightWait");
    TELEPORTNPCTOWP(0xe4e7, Q306_OPPONENT_SPAWNWP);
    WLD_SENDTRIGGER("KM_Q306_ARENAFIGHT");
    Q306_READYFORFIGHT = 1;
    TOURNAMENT_TELEPORTVIEWRS();
    HERO.AIVAR[4] = FALSE;
}

func void DIA_GRAVEPIRATE_FUNERAL_NOTHANKS() {
    AI_OUTPUT(OTHER, SELF, "DIA_GravePirate_Funeral_NoThanks_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_NoThanks_13_01");
    AI_FUNCTION(SELF, 0x14c08);
    INFO_CLEARCHOICES(0x14c04);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GRAVEPIRATE_FUNERAL_HOWMUCH() {
    AI_OUTPUT(OTHER, SELF, "DIA_GravePirate_Funeral_HowMuch_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_HowMuch_13_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q306_GRAVEPIRATE_HEROGRAVE_V1)) {
        INFO_ADDCHOICE(0x14c04, "Let there be a simple burial. (100 GP)", 0x14c0c);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q306_GRAVEPIRATE_HEROGRAVE_V2)) {
        INFO_ADDCHOICE(0x14c04, "I would like to be burned. (150 GP)", 0x14c0d);
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (Q306_GRAVEPIRATE_HEROGRAVE_V3)) {
        INFO_ADDCHOICE(0x14c04, "I think a final boat trip would be appropriate. (500 GP)", 0x14c0e);
    };
}

func void DIA_GRAVEPIRATE_FUNERAL_END() {
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_End_13_01");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_End_13_02");
    AI_OUTPUT(SELF, OTHER, "DIA_GravePirate_Funeral_End_13_03");
    AI_FUNCTION(SELF, 0x14c08);
    INFO_CLEARCHOICES(0x14c04);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_GRAVEPIRATE_FUNERAL_CHEAP() {
    Q306_FUNERAL = 1;
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q306_GRAVEPIRATE_HEROGRAVE_V1);
    DIA_GRAVEPIRATE_FUNERAL_END();
}

func void DIA_GRAVEPIRATE_FUNERAL_CREMATION() {
    Q306_FUNERAL = 2;
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q306_GRAVEPIRATE_HEROGRAVE_V2);
    DIA_GRAVEPIRATE_FUNERAL_END();
}

func void DIA_GRAVEPIRATE_FUNERAL_SHIP() {
    Q306_FUNERAL = 3;
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, Q306_GRAVEPIRATE_HEROGRAVE_V3);
    DIA_GRAVEPIRATE_FUNERAL_END();
}
