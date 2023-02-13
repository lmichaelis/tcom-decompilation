instance DIA_CAPTAIN_EXIT(C_INFO) {
    NPC = 51483;
    NR = 999;
    CONDITION = DIA_CAPTAIN_EXIT_CONDITION;
    INFORMATION = DIA_CAPTAIN_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CAPTAIN_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CAPTAIN_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance TRIA_CAPTAIN_Q101_JORNTRIALOG(C_INFO) {
    NPC = 51483;
    NR = 1;
    CONDITION = TRIA_CAPTAIN_Q101_JORNTRIALOG_CONDITION;
    INFORMATION = TRIA_CAPTAIN_Q101_JORNTRIALOG_INFO;
    IMPORTANT = TRUE;
}

func int TRIA_CAPTAIN_Q101_JORNTRIALOG_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q101)) == (LOG_RUNNING)) {
        if (((NPC_GETDISTTOWP(PIR_2_CAPTAIN, "SHIP_CAPTAIN_02")) <= (350)) && ((NPC_GETDISTTOWP(NONE_1_JORN, "SHIP_CAPTAIN_02")) <= (350))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void TRIA_CAPTAIN_Q101_JORNTRIALOG_INFO() {
    TRIA_INVITE(NONE_1_JORN);
    TRIA_STARTEXT(FALSE);
    AI_LOOKATNPC(OTHER, SELF);
    TRIA_WAIT();
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_TURNTONPC(SELF, NONE_1_JORN);
    AI_TURNTONPC(NONE_1_JORN, SELF);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_00");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_02");
    TRIA_WAIT();
    TRIA_NEXT(NONE_1_JORN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Jorn_Q101_JornTrialog_01_03");
    TRIA_WAIT();
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_04");
    INFO_CLEARCHOICES(64758);
    INFO_ADDCHOICE(64758, "Your people seem to be very excited about something.", 64769);
    INFO_ADDCHOICE(64758, "I thought we would sail to the end of the world and beyond.", 64767);
}

var int Q101_SHIP_EVERYBODYOUT;
func void Q101_SHIP_TELEPORTNPC_FADESCREEN() {
    MUSIC_OVERRIDETRACK(21950);
    WLD_SENDTRIGGER("Q101_MOVER_SHIP_LIGHT_DOWN");
    WLD_SENDTRIGGER("Q101_SND_SCARED");
    Q101_CAPTAIN_CUTSCENEENABLE = 3;
    Q101_SHIP_EVERYBODYOUT = TRUE;
    Q101_SHIP_TELEPORTNPC();
    WLD_SENDTRIGGER("SHIP_CAPITAN_04");
    WLD_SENDUNTRIGGER("SHIP_CAPITAN_03");
    FADESCREENFROMBLACK(2);
    HERO.AIVAR[4] = FALSE;
}

func void Q101_SHIP_FINISHCUTSCENE() {
    FADESCREENTOBLACKF(1, 64762, 1000);
}

func void Q101_SHIP_TOWATER() {
    HERO.AIVAR[4] = TRUE;
    Q101_CAPTAIN_CUTSCENEENABLE = 5;
}

func void TRIA_CAPTAIN_Q101_JORNTRIALOG_END() {
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_End_08_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_End_08_02");
    TRIA_FINISH();
    AI_STOPLOOKAT(SELF);
    AI_STOPLOOKAT(OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 64763);
}

func void TRIA_CAPTAIN_Q101_JORNTRIALOG_CAMERA() {
    WLD_SENDTRIGGER("SHIP_CAPITAN_03");
    WLD_SENDUNTRIGGER("SHIP_CAPITAN_02");
}

func void TRIA_CAPTAIN_Q101_JORNTRIALOG_2() {
    TRIA_CAPTAIN_Q101_JORNTRIALOG_CAMERA();
    INFO_CLEARCHOICES(64758);
    AI_TURNTONPC(SELF, HERO);
    AI_TURNTONPC(HERO, SELF);
    AI_OUTPUT(OTHER, SELF, "TRIA_Marvin_Q101_JornTrialog_15_05");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_06");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_07");
    TRIA_CAPTAIN_Q101_JORNTRIALOG_END();
}

var int Q101_ISHERORIGHT;
func void TRIA_CAPTAIN_Q101_JORNTRIALOG_1() {
    TRIA_CAPTAIN_Q101_JORNTRIALOG_CAMERA();
    INFO_CLEARCHOICES(64758);
    AI_OUTPUT(OTHER, SELF, "TRIA_Captain_Q101_JornTrialog_15_08");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_09");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_JornTrialog_08_10");
    Q101_ISHERORIGHT = TRUE;
    TRIA_CAPTAIN_Q101_JORNTRIALOG_END();
}

instance TRIA_CAPTAIN_Q101_TIMOTRIALOG(C_INFO) {
    NPC = 51483;
    NR = 1;
    CONDITION = TRIA_CAPTAIN_Q101_TIMOTRIALOG_CONDITION;
    INFORMATION = TRIA_CAPTAIN_Q101_TIMOTRIALOG_INFO;
    IMPORTANT = TRUE;
}

func int TRIA_CAPTAIN_Q101_TIMOTRIALOG_CONDITION() {
    if ((((NPC_GETDISTTOWP(SELF, "SHIP_CAPTAIN_03")) <= (300)) && ((NPC_GETDISTTOWP(NONE_6_TIMO, "SHIP_TIMO_02")) <= (300))) && (Q101_SHIP_EVERYBODYOUT)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void Q101_CAPTAIN_READYSWORD() {
    EQUIPWEAPON_TOGGLESEQUIP = 0;
    EQUIPWEAPON(PIR_2_CAPTAIN, 34048);
    EQUIPWEAPON_TOGGLESEQUIP = 1;
}

func void TRIA_CAPTAIN_Q101_TIMOTRIALOG_INFO() {
    TRIA_INVITE(NONE_6_TIMO);
    TRIA_INVITE(NONE_1_JORN);
    TRIA_STARTEXT(FALSE);
    AI_LOOKATNPC(OTHER, SELF);
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_02");
    TRIA_NEXT(NONE_6_TIMO);
    AI_TURNTONPC(SELF, PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_06_03");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_FUNCTION(SELF, 61987);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_04");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_05");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_06");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_07");
    AI_FUNCTION(SELF, 61988);
    AI_TURNTONPC(PIR_2_CAPTAIN, NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_08");
    TRIA_NEXT(NONE_6_TIMO);
    AI_TURNTONPC(SELF, PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_06_09");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_10");
    TRIA_NEXT(NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_06_11");
    AI_FUNCTION(SELF, 61989);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_06_12");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_TURNTONPC(PIR_2_CAPTAIN, NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_13");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_08_14");
    TRIA_NEXT(NONE_6_TIMO);
    AI_TURNTONPC(SELF, PIR_2_CAPTAIN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_06_15");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_LOOKATNPC(SELF, NONE_6_TIMO);
    TRIA_WAIT();
    AI_FUNCTION(SELF, 64772);
    AI_DRAWWEAPON(SELF);
    INFO_CLEARCHOICES(64770);
    INFO_ADDCHOICE(64770, DIALOG_DONOTTALK, 64776);
    INFO_ADDCHOICE(64770, DIALOG_INTERVENE, 64777);
}

func void Q101_CAPTAIN_TIMO_ATTACK() {
    MDL_APPLYOVERLAYMDS(NONE_6_TIMO, "HUMANS_SUDDENDEATH.MDS");
    AI_PLAYANI(NONE_6_TIMO, T_DEAD);
    SND_PLAY("FIG_SwordFinal");
    SND_PLAY("SVM_35_DEAD");
    B_MAGICHURTNPC(PIR_2_CAPTAIN, NONE_6_TIMO, 99999);
}

func void TRIA_CAPTAIN_Q101_END_TOWATER() {
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_FUNCTION(SELF, 61995);
    AI_TURNTONPC(SELF, HERO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_End_ToWater_08_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_End_ToWater_08_02");
    TRIA_FINISH();
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 64764);
}

func void TRIA_CAPTAIN_Q101_TIMOTRIALOG_NOREACT() {
    WLD_SENDTRIGGER("SHIP_CAPITAN_09");
    WLD_SENDUNTRIGGER("SHIP_CAPITAN_08");
    NONE_6_TIMO.FLAGS = 0;
    NONE_6_TIMO.ATTRIBUTE[0] = 1;
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NoReact_08_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NoReact_08_02");
    AI_GOTONPC(SELF, NONE_6_TIMO);
    AI_FUNCTION(SELF, 64774);
    AI_PLAYANI(SELF, T_1HATTACKR);
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_TIMOISDOWN);
    AI_REMOVEWEAPON(SELF);
    AI_FUNCTION(SELF, 61996);
    AI_WAIT(SELF, 1045220557);
    AI_TURNAWAY(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoIsDown_08_01");
    AI_TURNTONPC(SELF, NONE_14_VRAZKA);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoIsDown_08_02");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoIsDown_08_03");
    TRIA_NEXT(NONE_1_JORN);
    AI_TURNTONPC(SELF, NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Jorn_Q101_TimoIsDown_01_04");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_TURNTONPC(SELF, NONE_1_JORN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoIsDown_08_05");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoIsDown_08_06");
    TRIA_CAPTAIN_Q101_END_TOWATER();
}

func void TRIA_CAPTAIN_Q101_TIMOTRIALOG_NOTNECESSARY() {
    Q101_TIMOSURVIVE = TRUE;
    AI_FUNCTION(SELF, 61991);
    AI_TURNTONPC(SELF, OTHER);
    AI_OUTPUT(OTHER, SELF, "TRIA_Marvin_Q101_TimoTrialog_NotNecessary_15_01");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_02");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_03");
    if ((Q101_ISHERORIGHT) == (TRUE)) {
        AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_04");
    };
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_05");
    AI_FUNCTION(SELF, 61992);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_06");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_07");
    AI_OUTPUT(OTHER, SELF, "TRIA_Marvin_Q101_TimoTrialog_NotNecessary_15_08");
    AI_OUTPUT(OTHER, SELF, "TRIA_Marvin_Q101_TimoTrialog_NotNecessary_15_09");
    AI_FUNCTION(SELF, 61993);
    AI_OUTPUT(OTHER, SELF, "TRIA_Marvin_Q101_TimoTrialog_NotNecessary_15_10");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_11");
    AI_REMOVEWEAPON(SELF);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_12");
    AI_TURNAWAY(SELF, OTHER);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_13");
    TRIA_NEXT(NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_NotNecessary_06_14");
    AI_OUTPUT(SELF, OTHER, "TRIA_Timo_Q101_TimoTrialog_NotNecessary_06_15");
    AI_LOGENTRY(TOPIC_Q101, LOG_Q101_TIMOINTERVENTION);
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_FUNCTION(SELF, 61994);
    AI_TURNTONPC(SELF, NONE_14_VRAZKA);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_16");
    TRIA_NEXT(NONE_1_JORN);
    AI_TURNTONPC(SELF, NONE_6_TIMO);
    AI_OUTPUT(SELF, OTHER, "TRIA_Jorn_Q101_TimoTrialog_NotNecessary_01_17");
    TRIA_NEXT(PIR_2_CAPTAIN);
    AI_TURNTONPC(SELF, NONE_1_JORN);
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_18");
    AI_OUTPUT(SELF, OTHER, "TRIA_Captain_Q101_TimoTrialog_NotNecessary_08_19");
    TRIA_CAPTAIN_Q101_END_TOWATER();
}
