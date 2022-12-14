instance DIA_ANA_EXIT(C_INFO) {
    NPC = 0xc978;
    NR = 999;
    CONDITION = DIA_ANA_EXIT_CONDITION;
    INFORMATION = DIA_ANA_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ANA_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ANA_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANA_Q102_HELLO(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q102_HELLO_CONDITION;
    INFORMATION = DIA_ANA_Q102_HELLO_INFO;
    DESCRIPTION = "Hey, are you okay?";
}

func int DIA_ANA_Q102_HELLO_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q102)) == (LOG_RUNNING)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q102_HELLO_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_08_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_08_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_08_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_08_05");
    INFO_CLEARCHOICES(0x1650f);
    INFO_ADDCHOICE(0x1650f, "It would look much worse on your corpse.", 0x16512);
    INFO_ADDCHOICE(0x1650f, "This is... really tragic news.", 0x16513);
    INFO_ADDCHOICE(0x1650f, "Relax, when it's all over, I'll buy you a new one!", 0x16514);
}

func void DIA_ANA_Q102_HELLO_YOURBODY() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_YourBody_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_YourBody_08_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_YourBody_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_YourBody_08_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_YourBody_08_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_YourBody_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_YourBody_08_06");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ANA_Q102_HELLO_TERRIFIC() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_Terrific_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_Terrific_08_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_Terrific_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_Terrific_08_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_Terrific_08_04");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_ANA_Q102_HELLO_NOWORRIES() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q102_Hello_NoWorries_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_NoWorries_08_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q102_Hello_NoWorries_08_02");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANA_Q104_WORKFORALBYN(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q104_WORKFORALBYN_CONDITION;
    INFORMATION = DIA_ANA_Q104_WORKFORALBYN_INFO;
    DESCRIPTION = "I'm looking for people to work.";
}

func int DIA_ANA_Q104_WORKFORALBYN_CONDITION() {
    if (((NPC_KNOWSINFO(OTHER, 0x1568f)) && ((LOG_GETSTATUS(MIS_Q104)) == (LOG_RUNNING))) && ((KAPITEL) != (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q104_WORKFORALBYN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q104_WorkForAlbyn_15_00");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q104_WorkForAlbyn_08_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q104_WorkForAlbyn_08_02");
    AI_LOGENTRY(TOPIC_Q104, LOG_Q104_ANA);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANA_GQ001_WHEREISJORN(C_INFO) {
    NPC = 0xc978;
    NR = 10;
    CONDITION = DIA_ANA_GQ001_WHEREISJORN_CONDITION;
    INFORMATION = DIA_ANA_GQ001_WHEREISJORN_INFO;
    DESCRIPTION = "Have you witnessed anything suspicious recently?";
}

func int DIA_ANA_GQ001_WHEREISJORN_CONDITION() {
    if ((NPC_KNOWSINFO(OTHER, 0x1575a)) && ((KAPITEL) != (5))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_GQ001_WHEREISJORN_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_GQ001_WhereIsJorn_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_GQ001_WhereIsJorn_08_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_GQ001_WhereIsJorn_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_GQ001_WhereIsJorn_08_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_GQ001_WhereIsJorn_08_05");
    if ((GQ001_INFOFROMFABIO) == (TRUE)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Ana_GQ001_WhereIsJorn_15_06");
        AI_OUTPUT(SELF, OTHER, "DIA_Ana_GQ001_WhereIsJorn_08_07");
    };
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_GQ001_WhereIsJorn_15_08");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ANA_Q501_HELLO(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_HELLO_CONDITION;
    INFORMATION = DIA_ANA_Q501_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ANA_Q501_HELLO_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x13788))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_HELLO_INFO() {
    NPC_EXCHANGEROUTINE(SELF, "Q501_HEALREFUGEE");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Hello_03_01");
    INFO_CLEARCHOICES(0x1651b);
    INFO_ADDCHOICE(0x1651b, "Do we know each other?", 0x1651e);
    INFO_ADDCHOICE(0x1651b, "Ana?", 0x1651f);
}

func void DIA_ANA_Q501_HELLO_KNOW() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Hello_Know_15_01");
    AI_STARTFACEANI(SELF, S_SURPRISE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Hello_Know_03_02");
}

func void DIA_ANA_Q501_HELLO_ANA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Hello_Ana_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Hello_Ana_03_02");
    INFO_CLEARCHOICES(0x1651b);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ANA_Q501_BANDITS(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_BANDITS_CONDITION;
    INFORMATION = DIA_ANA_Q501_BANDITS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "My friend and I were attacked by... bandits.";
}

func int DIA_ANA_Q501_BANDITS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1651b))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_BANDITS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Bandits_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_02");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_04");
    AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_07");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_03_09");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_HISTORY);
    INFO_CLEARCHOICES(0x16520);
    INFO_ADDCHOICE(0x16520, DIALOG_BESILENT, 0x16525);
    INFO_ADDCHOICE(0x16520, "I'm glad you made it out okay.", 0x16524);
}

func void DIA_ANA_Q501_BANDITS_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_Next_03_01");
    INFO_CLEARCHOICES(0x16520);
    INFO_ADDCHOICE(0x16520, "Unfortunately, Jorn is dead.", 0x16526);
}

func void DIA_ANA_Q501_BANDITS_HAPPY() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Bandits_Happy_15_01");
    DIA_ANA_Q501_BANDITS_NEXT();
}

func void DIA_ANA_Q501_BANDITS_SILENCE() {
    AI_WAIT(OTHER, 0x3f000000);
    AI_WAITTILLEND(SELF, OTHER);
    DIA_ANA_Q501_BANDITS_NEXT();
}

func void DIA_ANA_Q501_BANDITS_DEAD() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Bandits_Dead_15_01");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_Dead_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Bandits_Dead_03_03");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_CANHELP);
    INFO_CLEARCHOICES(0x16520);
    AI_RESETFACEANI(SELF);
}

instance DIA_ANA_Q501_HELP(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_HELP_CONDITION;
    INFORMATION = DIA_ANA_Q501_HELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "(Ask for help with getting the recipe)";
}

func int DIA_ANA_Q501_HELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x16520))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_HELP_INFO() {
    Q501_MARVINGOTOSLEEP = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Help_15_01");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Help_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Help_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Help_15_04");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Help_03_05");
    AI_RESETFACEANI(SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Help_03_06");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_WILLSEARCH);
}

instance DIA_ANA_Q501_NEXTDAY(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_NEXTDAY_CONDITION;
    INFORMATION = DIA_ANA_Q501_NEXTDAY_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ANA_Q501_NEXTDAY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_MARVINGOTOSLEEP) == (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_NEXTDAY_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_03_01");
    INFO_CLEARCHOICES(0x1652a);
    INFO_ADDCHOICE(0x1652a, "To be honest, I'm feeling pretty good today.", 0x1652f);
    INFO_ADDCHOICE(0x1652a, "I've been better...", 0x1652e);
}

func void DIA_ANA_Q501_NEXTDAY_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Next_03_02");
    INFO_CLEARCHOICES(0x1652a);
    INFO_ADDCHOICE(0x1652a, "Can I just walk out of the infirmary like that?", 0x16531);
    INFO_ADDCHOICE(0x1652a, "Where are Riordian and Rierol?", 0x16530);
}

func void DIA_ANA_Q501_NEXTDAY_BETTER() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_NextDay_Better_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Better_03_02");
    DIA_ANA_Q501_NEXTDAY_NEXT();
}

func void DIA_ANA_Q501_NEXTDAY_NOTBAD() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_NextDay_NotBad_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_NotBad_03_02");
    DIA_ANA_Q501_NEXTDAY_NEXT();
}

func void DIA_ANA_Q501_NEXTDAY_NOTBAD_NEXT_WHERE() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_NextDay_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Where_03_03");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_WHEREAREMAGES);
}

func void DIA_ANA_Q501_NEXTDAY_NOTBAD_NEXT_LEAVE() {
    CREATEINVITEMS(SELF, 0x8b0a, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8b0a, 1);
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_NextDay_Leave_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Leave_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Leave_03_03");
    AI_WAITTILLEND(OTHER, SELF);
    AI_PLAYANI(OTHER, T_PLUNDER);
    AI_EQUIPARMOR(OTHER, 0x8b0a);
    AI_WAITTILLEND(SELF, OTHER);
    AI_PLAYANI(SELF, T_LAUGH_FEMALE);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Leave_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Leave_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NextDay_Leave_03_06");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_GUIDETORIEROL);
    INFO_CLEARCHOICES(0x1652a);
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[15] = TRUE;
    NPC_EXCHANGEROUTINE(SELF, "Q501_GUIDE_RIEROL");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ANA_Q501_RIEROLROOM(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_RIEROLROOM_CONDITION;
    INFORMATION = DIA_ANA_Q501_RIEROLROOM_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ANA_Q501_RIEROLROOM_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1652a))) && ((NPC_GETDISTTOWP(SELF, "PART8_MONASTERY_87")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_RIEROLROOM_INFO() {
    Q501_SPYCUTSCENESTATUS = 1;
    WLD_SENDTRIGGER("Q501_MOVER_CUTSCENETRIGGERBOX");
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_RierolRoom_03_01");
    AI_TURNTONPC(SELF, KDW_303_RIEROL);
    AI_FUNCTION(SELF, 0x16535);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_RierolRoom_03_02");
    NPC_EXCHANGEROUTINE(SELF, "Q501_WAITFORRIEROL");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0x16536);
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_PLAN);
}

func void Q501_ANA_RIEROLROOM_CAMERA_ON() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("Q501_RIEROL_01");
}

func void Q501_ANA_RIEROLROOM_CAMERA_OFF() {
    FF_APPLYONCEEXT(0xf78f, 75, 4);
}

instance DIA_ANA_PROBLEM(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_PROBLEM_CONDITION;
    INFORMATION = DIA_ANA_PROBLEM_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Mages have no problem with a woman running around the monastery?";
}

func int DIA_ANA_PROBLEM_CONDITION() {
    if ((Q501_MARVINGOTOSLEEP) >= (2)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_PROBLEM_INFO() {
    AI_STARTFACEANI(OTHER, S_SURPRISE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Problem_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Problem_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Problem_03_03");
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Problem_03_04");
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
}

instance DIA_ANA_Q501_WHERERIORDIAN(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_WHERERIORDIAN_CONDITION;
    INFORMATION = DIA_ANA_Q501_WHERERIORDIAN_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know where Riordian is?";
}

func int DIA_ANA_Q501_WHERERIORDIAN_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_MARVINGOTOSLEEP) == (6))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_WHERERIORDIAN_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_WhereRiordian_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_WhereRiordian_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_WhereRiordian_03_03");
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_WHEREISRIORDIAN);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ANA_Q501_DOORCLOSED(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_DOORCLOSED_CONDITION;
    INFORMATION = DIA_ANA_Q501_DOORCLOSED_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you know that storage room upstairs?";
}

func int DIA_ANA_Q501_DOORCLOSED_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x1653a))) && ((Q501_TRYEDOPENLABROOM) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_DOORCLOSED_INFO() {
    AI_STARTFACEANI(OTHER, S_THINK, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_DoorClosed_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_DoorClosed_03_02");
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_DoorClosed_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_DoorClosed_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_DoorClosed_03_05");
    CREATEINVITEMS(SELF, 0x9027, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x9027, 1);
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_GOTKEY);
    AI_FUNCTION(SELF, 0xf7a5);
}

instance DIA_ANA_Q501_NEEDHELP(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_NEEDHELP_CONDITION;
    INFORMATION = DIA_ANA_Q501_NEEDHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Ana, I need your help again.";
}

func int DIA_ANA_Q501_NEEDHELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_NEEDHELPWITHPOTION) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_NEEDHELP_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_NeedHelp_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_NeedHelp_03_02");
    AI_RESETFACEANI(SELF);
}

instance DIA_ANA_Q501_HELPPOTION(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_HELPPOTION_CONDITION;
    INFORMATION = DIA_ANA_Q501_HELPPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "I need you to help me make a potion.";
}

func int DIA_ANA_Q501_HELPPOTION_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x16540))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_HELPPOTION_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_15_01");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_HelpPotion_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_15_03");
    AI_STARTFACEANI(SELF, S_WHAT, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_HelpPotion_03_04");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_15_05");
    INFO_CLEARCHOICES(0x16543);
    INFO_ADDCHOICE(0x16543, "Think of that man who once helped you...", 0x16549);
    INFO_ADDCHOICE(0x16543, "I need to get well so I can avenge my brother.", 0x16548);
    INFO_ADDCHOICE(0x16543, "Without this potion, my friend may not survive.", 0x16547);
}

func void DIA_ANA_Q501_HELPPOTION_NEXT() {
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_HelpPotion_Next_03_01");
    INFO_CLEARCHOICES(0x16543);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_ANA_WILLHELP);
    NPC_EXCHANGEROUTINE(SELF, "Q501_POTION_WAIT");
}

func void DIA_ANA_Q501_HELPPOTION_KESSEL() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_Kessel_15_01");
    DIA_ANA_Q501_HELPPOTION_NEXT();
}

func void DIA_ANA_Q501_HELPPOTION_BROTHER() {
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_Brother_15_01");
    DIA_ANA_Q501_HELPPOTION_NEXT();
}

func void DIA_ANA_Q501_HELPPOTION_PAST() {
    AI_STARTFACEANI(OTHER, S_SMILE, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_HelpPotion_Past_15_01");
    DIA_ANA_Q501_HELPPOTION_NEXT();
}

instance DIA_ANA_Q501_MAKINGPOTION(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_MAKINGPOTION_CONDITION;
    INFORMATION = DIA_ANA_Q501_MAKINGPOTION_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Let's get on with this potion.";
}

func int DIA_ANA_Q501_MAKINGPOTION_CONDITION() {
    if (((((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x16543))) && ((NPC_GETDISTTOWP(SELF, "PART8_NOV_ROOM_RIORDRIAN")) <= (500))) && ((NPC_HASITEMS(OTHER, 0x92a0)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT() {
    Q501_MAKINGPOTION_GOODANWSERS = (Q501_MAKINGPOTION_GOODANWSERS) + (1);
    PRINTD(CS2("Dobrych odpowiedzi: ", INTTOSTRING(Q501_MAKINGPOTION_GOODANWSERS)));
}

func void DIA_ANA_Q501_MAKINGPOTION_RESULT() {
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_05");
    DIACAM_ENABLE();
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    AI_WAIT(SELF, 0x40400000);
    AI_WAITTILLEND(OTHER, SELF);
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_15_06");
    AI_USEMOB(SELF, "LAB", -(1));
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_08");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "(Drink the potion)", 0x1654e);
    INFO_ADDCHOICE(0x1654a, "If Rierol comes back here with him, they'll take the potion away from us.", 0x16552);
}

func void DIA_ANA_Q501_MAKINGPOTION_JUSTDRINK() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_15_09");
    B_MARVIN_USEFAKEQ501POTION();
    AI_FUNCTION(OTHER, 0xf7aa);
    AI_WAITTILLEND(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_10");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "I'm still standing, so we didn't break anything.", 0x16551);
    INFO_ADDCHOICE(0x1654a, "I feel like a newborn!", 0x16550);
}

func void DIA_ANA_Q501_MAKINGPOTION_FINISH() {
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_11");
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_15_12");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_13");
    INFO_CLEARCHOICES(0x1654a);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "Q501_RUNTOKESSEL");
    AI_FUNCTION(SELF, 0xf7ab);
}

func void DIA_ANA_Q501_MAKINGPOTION_YESV1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_YesV1_15_01");
    DIA_ANA_Q501_MAKINGPOTION_FINISH();
}

func void DIA_ANA_Q501_MAKINGPOTION_YESV2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_YesV2_15_01");
    DIA_ANA_Q501_MAKINGPOTION_FINISH();
}

func void DIA_ANA_Q501_MAKINGPOTION_RIEROL() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_Rierol_15_01");
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV6() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_05");
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_04");
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Pour in a bottle and a half of honey.", 0x16567);
    INFO_ADDCHOICE(0x1654a, "Pour in 2 tablespoons of honey.", 0x16568);
    INFO_ADDCHOICE(0x1654a, "Pour in a bottle of honey.", 0x16569);
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV5() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_04");
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_03");
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_05");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Add goblin berries.", 0x16565);
    INFO_ADDCHOICE(0x1654a, "Add dragonroot.", 0x16566);
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV4() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_03");
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_02");
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Add earth aloe.", 0x16563);
    INFO_ADDCHOICE(0x1654a, "Add sun aloe.", 0x16564);
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV3() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_02");
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_01");
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_04");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Add three healing herbs.", 0x16560);
    INFO_ADDCHOICE(0x1654a, "Add three healing plants.", 0x16561);
    INFO_ADDCHOICE(0x1654a, "Add three healing roots.", 0x16562);
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV2() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_01");
    WLD_SENDUNTRIGGER("KM_P8_MARVINPOTION_06");
    TELEPORTNPCTOWP(0x71b, "PART8_NOV_ROOM_03");
    AI_TURNTONPC(SELF, OTHER);
    AI_PLAYANI(SELF, "R_LAB_RANDOM_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_03");
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Add meadow knotweed.", 0x1655d);
    INFO_ADDCHOICE(0x1654a, "Add the king's sorrel.", 0x1655e);
    INFO_ADDCHOICE(0x1654a, "Add river myrtle.", 0x1655f);
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICESV1() {
    AI_STOPLOOKAT(OTHER);
    INFO_CLEARCHOICES(0x1654a);
    INFO_ADDCHOICE(0x1654a, "Pour in half a bottle of milk.", 0x1655a);
    INFO_ADDCHOICE(0x1654a, "Pour in whole bottle of milk.", 0x1655b);
    INFO_ADDCHOICE(0x1654a, "Pour in a tablespoon of milk.", 0x1655c);
}

func void DIA_ANA_Q501_MAKINGPOTION_INFO() {
    B_GIVEINVITEMS(OTHER, SELF, 0x92a0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_15_01");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPLOOKAT(SELF);
    AI_FUNCTION(SELF, 0x1656a);
    AI_USEMOB(SELF, "LAB", 1);
    AI_WAITTILLEND(OTHER, SELF);
    AI_TURNTONPC(OTHER, SELF);
    AI_LOOKATNPC(OTHER, SELF);
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_MakingPotion_03_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV1();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICE_V1() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV1_15_01");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV2();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICE_V2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV1_15_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV2();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICE_V3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV1_15_03");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV2();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV2_V1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV2_15_01");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV3();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV2_V2() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV2_15_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV3();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV2_V3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV2_15_03");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV3();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV3_V1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV3_15_01");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV4();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV3_V2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV3_15_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV4();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV3_V3() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV3_15_03");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV4();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV4_V1() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV4_15_01");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV5();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV4_V2() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV4_15_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV5();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV5_V1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV5_15_01");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV6();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV5_V2() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV5_15_02");
    DIA_ANA_Q501_MAKINGPOTION_CHOICESV6();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV6_V1() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV6_15_01");
    DIA_ANA_Q501_MAKINGPOTION_RESULT();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV6_V2() {
    DIA_ANA_Q501_MAKINGPOTION_COUNTPOINT();
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV6_15_02");
    DIA_ANA_Q501_MAKINGPOTION_RESULT();
}

func void DIA_ANA_Q501_MAKINGPOTION_CHOICEV6_V3() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_MakingPotion_ChoiceV6_15_03");
    DIA_ANA_Q501_MAKINGPOTION_RESULT();
}

func void DIA_ANA_Q501_MAKINGPOTION_CAMERA() {
    WLD_SENDTRIGGER("KM_P8_MARVINPOTION_06");
    DIACAM_DISABLE();
}

instance DIA_ANA_Q501_FINISH(C_INFO) {
    NPC = 0xc978;
    NR = 1;
    CONDITION = DIA_ANA_Q501_FINISH_CONDITION;
    INFORMATION = DIA_ANA_Q501_FINISH_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_ANA_Q501_FINISH_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q501)) == (LOG_RUNNING)) && ((Q501_AFTERLASTFADESCREEN) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ANA_Q501_FINISH_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_03_01");
    INFO_CLEARCHOICES(0x1656b);
    INFO_ADDCHOICE(0x1656b, "What happened this time? Where's Kessel?", 0x1656e);
    SQ506_PREPARENPC();
}

func void DIA_ANA_Q501_FINISH_KESSEL() {
    AI_STARTFACEANI(OTHER, S_TIRED, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Finish_Kessel_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_Kessel_03_02");
    AI_STARTFACEANI(SELF, S_TIRED, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_Kessel_03_03");
    AI_STARTFACEANI(SELF, S_SAD, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_Kessel_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_Kessel_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_Kessel_03_06");
    INFO_CLEARCHOICES(0x1656b);
    INFO_ADDCHOICE(0x1656b, "Maybe it's for the best...", 0x16571);
    INFO_ADDCHOICE(0x1656b, "What have you done?!", 0x16570);
}

func void DIA_ANA_Q501_FINISH_KESSEL_NEXT() {
    AI_LOGENTRY(TOPIC_Q501, LOG_Q501_FINISH);
    LOG_SETSTATUS(_@(MIS_Q501), TOPIC_Q501, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_Q501_FINISH);
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf7b7);
}

func void DIA_ANA_Q501_FINISH_KESSEL_WHAT() {
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Finish_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Ana_Q501_Finish_What_03_02");
    DIA_ANA_Q501_FINISH_KESSEL_NEXT();
}

func void DIA_ANA_Q501_FINISH_KESSEL_BETTER() {
    AI_OUTPUT(OTHER, SELF, "DIA_Ana_Q501_Finish_Better_15_01");
    DIA_ANA_Q501_FINISH_KESSEL_NEXT();
}

instance DIA_ANA_AMBIENT(C_INFO) {
    NPC = 0xc978;
    NR = 998;
    CONDITION = DIA_ANA_AMBIENT_CONDITION;
    INFORMATION = DIA_ANA_AMBIENT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "How are you doing?";
}

func int DIA_ANA_AMBIENT_CONDITION() {
    return TRUE;
}

func void DIA_ANA_AMBIENT_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_WhatNew4");
    if ((LOG_GETSTATUS(MIS_Q102)) == (LOG_RUNNING)) {
        if (((Q102_FABIO_READYTOSLEEP) == (TRUE)) || ((FABIOTOSILBACH) == (TRUE))) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_06");
        } else {
            NPC_INITAMBIENTS(SELF, 2);
            if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
                AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
                AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_04");
            } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
                AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
                AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_05");
            };
        } else {
            /* set_instance(0) */;
        };
    };
    if (((SILBACHSLEEP) == (2)) && ((KAPITEL) != (5))) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_07");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_08");
        };
    };
    if ((KAPITEL) == (5)) {
        NPC_INITAMBIENTS(SELF, 2);
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_STARTFACEANI(SELF, S_THINK, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_09");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            AI_OUTPUT(SELF, OTHER, "DIA_Ana_Ambient_03_10");
        };
    };
    AI_RESETFACEANI(SELF);
}

