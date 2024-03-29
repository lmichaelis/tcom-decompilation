instance DIA_CITYGUARD04_EXIT(C_INFO) {
    NPC = 53521;
    NR = 999;
    CONDITION = DIA_CITYGUARD04_EXIT_CONDITION;
    INFORMATION = DIA_CITYGUARD04_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_CITYGUARD04_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_CITYGUARD04_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_CITYGUARD04_SQ225_FOLLOWME(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD04_SQ225_FOLLOWME_CONDITION;
    INFORMATION = DIA_CITYGUARD04_SQ225_FOLLOWME_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD04_SQ225_FOLLOWME_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 69023))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD04_SQ225_FOLLOWME_INFO() {
    OLDCITYENTERED = 1;
    SQ225_OLDCITYUNLOCKED = 1;
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_CityGuard04_SQ225_FOLLOWME_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_06");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_FOLLOWME_03_07");
    AI_OUTPUT(OTHER, SELF, "DIA_CityGuard04_SQ225_FOLLOWME_15_08");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_MILITIA_GUIDE);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ225_GUIDE");
    SQ225_VOLKERGUARDSBRINGRTN();
    B_STARTOTHERROUTINE(VLK_11181_ANDERAS, "SQ225_WAIT");
    NPC_REFRESH(VLK_11181_ANDERAS);
    TELEPORTNPCTOWP(53767, VLK_11181_ANDERAS.WP);
}

instance DIA_CITYGUARD04_SQ225_HERE(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD04_SQ225_HERE_CONDITION;
    INFORMATION = DIA_CITYGUARD04_SQ225_HERE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD04_SQ225_HERE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65620))) && ((NPC_GETDISTTOWP(SELF, "PARTM5_HOUSE_ANDERAS_06")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int CITYGUARD04_BLOCKYOURPATH;
func void DIA_CITYGUARD04_SQ225_HERE_INFO() {
    CITYGUARD04_BLOCKYOURPATH = 1;
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_HERE_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SQ225_HERE_03_02");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_MILITIA_ANDREAS);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ225_BLOCKPATH");
}

instance DIA_CITYGUARD04_FIRSTWARN(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD04_FIRSTWARN_CONDITION;
    INFORMATION = DIA_CITYGUARD04_FIRSTWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

const string CITYGUARD04_CHECKPOINT = "PARTM5_HOUSE_ANDERAS_01";
var int CITYGUARD04_ALLOWUSTOGO;
func int DIA_CITYGUARD04_FIRSTWARN_CONDITION() {
    if (((CITYGUARD04_BLOCKYOURPATH) == (1)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_HOUSE_ANDERAS_01")) <= (900))) {
        if ((CITYGUARD04_ALLOWUSTOGO) == (TRUE)) {
            SELF.AIVAR[14] = TRUE;
        } else {
            SELF.AIVAR[14] = FALSE;
        };
        if ((NPC_GETDISTTONPC(SELF, OTHER)) <= (500)) {
            if (((((SELF.AIVAR[12]) == (GP_NONE)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_REFUSETALK(SELF)) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void CITYGUARD04_KILLHERO() {
    OTHER.AIVAR[13] = 0;
    SELF.AIVAR[12] = GP_NONE;
    AI_DRAWWEAPON(SELF);
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_GUARDSTOPSINTRUDER, 1);
}

func void DIA_CITYGUARD04_FIRSTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_FIRSTWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, CITYGUARD04_CHECKPOINT);
    SELF.AIVAR[12] = GP_FIRSTWARNGIVEN;
}

instance DIA_CITYGUARD04_SECONDWARN(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD04_SECONDWARN_CONDITION;
    INFORMATION = DIA_CITYGUARD04_SECONDWARN_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD04_SECONDWARN_CONDITION() {
    if (((CITYGUARD04_BLOCKYOURPATH) == (1)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_HOUSE_ANDERAS_01")) <= (900))) {
        if (((((SELF.AIVAR[12]) == (GP_FIRSTWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, CITYGUARD04_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD04_SECONDWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_SECONDWARN_03_01");
    OTHER.AIVAR[13] = NPC_GETDISTTOWP(OTHER, CITYGUARD04_CHECKPOINT);
    SELF.AIVAR[12] = GP_SECONDWARNGIVEN;
}

instance DIA_CITYGUARD04_LASTWARN(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD04_LASTWARN_CONDITION;
    INFORMATION = DIA_CITYGUARD04_LASTWARN_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD04_LASTWARN_CONDITION() {
    if (((CITYGUARD04_BLOCKYOURPATH) == (1)) && ((NPC_GETDISTTOWP(SELF, "PARTM5_HOUSE_ANDERAS_01")) <= (900))) {
        if (((((SELF.AIVAR[12]) == (GP_SECONDWARNGIVEN)) && ((SELF.AIVAR[14]) == (FALSE))) && ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (TRUE))) && ((NPC_GETDISTTOWP(OTHER, CITYGUARD04_CHECKPOINT)) < ((OTHER.AIVAR[13]) - (50)))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD04_LASTWARN_INFO() {
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard04_LASTWARN_03_01");
    CITYGUARD04_KILLHERO();
}

instance DIA_CITYGUARD_SQ225_ALLDONE(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD_SQ225_ALLDONE_CONDITION;
    INFORMATION = DIA_CITYGUARD_SQ225_ALLDONE_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Yeah, it's all taken care of.";
}

func int DIA_CITYGUARD_SQ225_ALLDONE_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 72177))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_SQ225_ALLDONE_INFO() {
    SQ225_OLDCITYDISABLED = 1;
    CITYGUARD04_BLOCKYOURPATH = 0;
    AI_OUTPUT(OTHER, SELF, "DIA_CityGuard_SQ225_AllDone_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_SQ225_AllDone_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_SQ225_AllDone_03_03");
    AI_LOGENTRY(TOPIC_SQ225, LOG_SQ225_MILITIA_BACK);
    AI_STOPPROCESSINFOS(SELF);
    NPC_EXCHANGEROUTINE(SELF, "SQ225_GUIDE2");
}

instance DIA_CITYGUARD_SQ225_GUIDEDONE(C_INFO) {
    NPC = 53521;
    NR = 1;
    CONDITION = DIA_CITYGUARD_SQ225_GUIDEDONE_CONDITION;
    INFORMATION = DIA_CITYGUARD_SQ225_GUIDEDONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_CITYGUARD_SQ225_GUIDEDONE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 65639))) && ((NPC_GETDISTTOWP(SELF, "PARTM4_PATH_61")) <= (500))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_CITYGUARD_SQ225_GUIDEDONE_INFO() {
    SELF.FLAGS = 0;
    SELF.AIVAR[15] = FALSE;
    AI_OUTPUT(SELF, OTHER, "DIA_CityGuard_SQ225_GuideDone_03_01");
    AI_STOPPROCESSINFOS(SELF);
    SQ225_ANDERASTAVERN();
}

