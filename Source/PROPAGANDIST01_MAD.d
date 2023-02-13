var int PROPAGANDIST01_MAD;
instance DIA_PROPAGANDIST_EXIT(C_INFO) {
    NPC = 53271;
    NR = 999;
    CONDITION = DIA_PROPAGANDIST_EXIT_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_PROPAGANDIST_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_PROPAGANDIST_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PROPAGANDIST_POSTER(C_INFO) {
    NPC = 53271;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST_POSTER_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_POSTER_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = DIALOG_TAKELEAFLET;
}

func int DIA_PROPAGANDIST_POSTER_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((Q311_TAVERNCUTSCENE) == (2))) {
        if ((PROPAGANDIST01_MAD) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_POSTER_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_Poster_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_Poster_03_02");
    CREATEINVITEMS(SELF, 37294, 1);
    B_GIVEINVITEMS(SELF, OTHER, 37294, 1);
    INFO_CLEARCHOICES(76563);
    INFO_ADDCHOICE(76563, "Who is the author of these flyers?", 76566);
}

func void DIA_PROPAGANDIST_POSTER_WHO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_Poster_Who_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_Poster_Who_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_Poster_Who_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_Poster_Who_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_Poster_Who_03_05");
    INFO_CLEARCHOICES(76563);
}

instance DIA_PROPAGANDIST_MOREPOSTERS(C_INFO) {
    NPC = 53271;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST_MOREPOSTERS_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_MOREPOSTERS_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Do you have more of these flyers?";
}

func int DIA_PROPAGANDIST_MOREPOSTERS_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 76563))) {
        if ((PROPAGANDIST01_MAD) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_MOREPOSTERS_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_03_04");
    INFO_CLEARCHOICES(76567);
    INFO_ADDCHOICE(76567, "Where are the other agitators?", 76570);
}

func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Where_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Where_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Where_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Where_03_04");
    INFO_CLEARCHOICES(76567);
    INFO_ADDCHOICE(76567, "So I can more easily break up this rabble of yours.", 76571);
    INFO_ADDCHOICE(76567, "I would like to learn more about your movement.", 76572);
}

func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE_DEFEAT() {
    if ((OTHER.GUILD) == (GIL_MIL)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Defeat_15_01");
        AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Defeat_03_02");
    };
    if ((OTHER.GUILD) == (GIL_SLD)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Defeat_15_03");
        AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Defeat_03_04");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Defeat_03_05");
    INFO_CLEARCHOICES(76567);
    AI_STOPPROCESSINFOS(SELF);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_MAD_V1);
    PROPAGANDIST01_MAD = TRUE;
}

func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE_MORE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_More_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_More_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_More_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_More_03_04");
    INFO_CLEARCHOICES(76567);
    INFO_ADDCHOICE(76567, "In my opinion, you need a leader.", 76574);
    if (NPC_HASGUILDARMOREQUIPPED(OTHER, GIL_MIL)) {
        INFO_ADDCHOICE(76567, "Perhaps other city guards would support your cause.", 76577);
    };
    INFO_ADDCHOICE(76567, "I may know someone who would support your cause.", 76578);
}

var int PROPAGANDIST01_LEADERTALK;
func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE_MORE_LEADER() {
    PROPAGANDIST01_LEADERTALK = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Leader_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Leader_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Leader_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Leader_03_04");
}

func void DIA_PROPAGANDIST_GETOUT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Militia_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AmbientMad_03_02");
}

func void DIA_PROPAGANDIST_SECONDPROPAGANDISTINFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_10");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Militia_15_11");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_INFO_V1);
    Q311_SPAWNLUDLOF();
}

func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE_MORE_MILITIA() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Militia_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_02");
    if ((PROPAGANDIST01_LEADERTALK) == (TRUE)) {
        DIA_PROPAGANDIST_GETOUT();
        AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_MAD_V2);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Militia_03_07");
    DIA_PROPAGANDIST_SECONDPROPAGANDISTINFO();
    INFO_CLEARCHOICES(76567);
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_PROPAGANDIST_MOREPOSTERS_WHERE_MORE_ARAXOS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_MorePosters_Araxos_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Araxos_03_02");
    if ((PROPAGANDIST01_LEADERTALK) == (TRUE)) {
        DIA_PROPAGANDIST_GETOUT();
        AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_MAD_V2);
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_MorePosters_Araxos_03_03");
    DIA_PROPAGANDIST_SECONDPROPAGANDISTINFO();
    INFO_CLEARCHOICES(76567);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PROPAGANDIST_WHAT(C_INFO) {
    NPC = 53271;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST_WHAT_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_WHAT_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "What are you doing here?";
}

func int DIA_PROPAGANDIST_WHAT_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((Q311_TAVERNCUTSCENE) == (2))) {
        if ((PROPAGANDIST01_MAD) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_WHAT_INFO() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_What_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_03_05");
    INFO_CLEARCHOICES(76579);
    INFO_ADDCHOICE(76579, "What are your demands?", 76582);
}

func void DIA_PROPAGANDIST_WHAT_DEMANDS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_What_Demands_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_Demands_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_Demands_03_03");
    INFO_CLEARCHOICES(76579);
    INFO_ADDCHOICE(76579, "What is the governor's view on this?", 76583);
}

func void DIA_PROPAGANDIST_WHAT_DEMANDS_GOVERNOR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_What_Governor_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_Governor_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_What_Governor_15_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_Governor_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_What_Governor_03_05");
    INFO_CLEARCHOICES(76579);
}

instance DIA_PROPAGANDIST_GOAWAY(C_INFO) {
    NPC = 53271;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST_GOAWAY_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_GOAWAY_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Get out of this place or I'll throw you out by force.";
}

func int DIA_PROPAGANDIST_GOAWAY_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && ((Q311_TAVERNCUTSCENE) == (2))) {
        if ((PROPAGANDIST01_MAD) == (FALSE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_GOAWAY_INFO() {
    PROPAGANDIST01_MAD = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_GoAway_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_GoAway_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_GoAway_03_03");
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_MAD_V3);
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_PROPAGANDIST_AFTERFIGHT(C_INFO) {
    NPC = 53271;
    NR = 1;
    CONDITION = DIA_PROPAGANDIST_AFTERFIGHT_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_AFTERFIGHT_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_PROPAGANDIST_AFTERFIGHT_CONDITION() {
    if ((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) {
        if (((SELF.AIVAR[0]) == (FIGHT_LOST)) && ((PROPAGANDIST01_MAD) >= (0))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_AFTERFIGHT_INFO() {
    if ((PROPAGANDIST01_MAD) == (TRUE)) {
        PROPAGANDIST01_MAD = FALSE;
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AfterFight_03_01");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_AfterFight_15_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AfterFight_03_03");
    AI_STARTFACEANI(OTHER, S_ANGRY, 0, 1);
    AI_WAITTILLEND(OTHER, SELF);
    AI_DRAWWEAPON(OTHER);
    AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
    AI_STARTFACEANI(SELF, S_FRIGHTENED, 0, 1);
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_AfterFight_15_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AfterFight_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AfterFight_03_07");
    INFO_CLEARCHOICES(76587);
    INFO_ADDCHOICE(76587, "See how easy it went?", 76590);
    Q311_SPAWNLUDLOF();
}

func void DIA_PROPAGANDIST_AFTERFIGHT_EASY() {
    PROPAGANDIST01_MAD = 2;
    Q311_PROPAGANDIST01FLEE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_AfterFight_Easy_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AfterFight_Easy_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Propagandist_AfterFight_Easy_15_03");
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    INFO_CLEARCHOICES(76587);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, FLEE);
    AI_LOGENTRY(TOPIC_Q311, LOG_Q311_PROPAGANDIST01_INFO_V2);
}

instance DIA_PROPAGANDIST_AMBIENTMAD(C_INFO) {
    NPC = 53271;
    NR = 950;
    CONDITION = DIA_PROPAGANDIST_AMBIENTMAD_CONDITION;
    INFORMATION = DIA_PROPAGANDIST_AMBIENTMAD_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_PROPAGANDIST_AMBIENTMAD_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q311)) == (LOG_RUNNING)) && (NPC_ISINSTATE(SELF, 61599))) {
        if ((PROPAGANDIST01_MAD) > (0)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_PROPAGANDIST_AMBIENTMAD_INFO() {
    NPC_INITAMBIENTS(SELF, 2);
    if ((PROPAGANDIST01_MAD) == (1)) {
        AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AmbientMad_03_01");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AmbientMad_03_02");
        };
    };
    if ((PROPAGANDIST01_MAD) == (2)) {
        AI_STARTFACEANI(SELF, S_FRIGHTENED, 1, -(1));
        if ((NPC_GETLASTAMBIENT(SELF)) == (1)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AmbientMad_03_03");
        } else if ((NPC_GETLASTAMBIENT(SELF)) == (2)) {
            AI_OUTPUT(SELF, OTHER, "DIA_Propagandist_AmbientMad_03_04");
        };
    };
    AI_STOPPROCESSINFOS(SELF);
}

