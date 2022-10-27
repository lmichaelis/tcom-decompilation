func void SQ415_PREPAREFIGHT_SCRIPT() {
    B_STARTOTHERROUTINE(DJG_13339_LORIA, "SQ415_FIGHT");
    NPC_REFRESH(DJG_13339_LORIA);
    TELEPORTNPCTOWP(0xe3db, DJG_13339_LORIA.WP);
    B_STARTOTHERROUTINE(DJG_13341_DEVIR, "SQ415_FIGHT");
    NPC_REFRESH(DJG_13341_DEVIR);
    TELEPORTNPCTOWP(0xe3de, DJG_13341_DEVIR.WP);
    DJG_13341_DEVIR.AIVAR[4] = TRUE;
    B_STARTOTHERROUTINE(DJG_13342_KYLID, "SQ415_FIGHT");
    NPC_REFRESH(DJG_13342_KYLID);
    TELEPORTNPCTOWP(0xe3e2, DJG_13342_KYLID.WP);
    DJG_13342_KYLID.AIVAR[4] = TRUE;
    if (HLP_ISVALIDNPC(DJG_10009_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10009_WOLFSON, "SQ415_FIGHT");
        TELEPORTNPCTOWP(0xe306, DJG_10009_WOLFSON.WP);
    };
    if (HLP_ISVALIDNPC(DJG_10005_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10005_WOLFSON, "SQ415_FIGHT");
        TELEPORTNPCTOWP(0xe2f6, DJG_10005_WOLFSON.WP);
    };
    if (HLP_ISVALIDNPC(DJG_10006_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10006_WOLFSON, "SQ415_FIGHT");
        TELEPORTNPCTOWP(0xe2fa, DJG_10006_WOLFSON.WP);
    };
    if (HLP_ISVALIDNPC(DJG_10008_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10008_WOLFSON, "SQ415_FIGHT");
        TELEPORTNPCTOWP(0xe302, DJG_10008_WOLFSON.WP);
    };
    if (HLP_ISVALIDNPC(DJG_10007_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10007_WOLFSON, "SQ415_FIGHT");
        TELEPORTNPCTOWP(0xe2fe, DJG_10007_WOLFSON.WP);
    };
}

func void SQ415_BUFFOURWARRIOR() {
    if ((SQ415_OURWARRIOR) == (1)) {
        DJG_13342_KYLID.ATTRIBUTE[1] = (DJG_13342_KYLID.ATTRIBUTE[1]) + (SQ415_BUFFHITTPOINTS);
        NPC_CHANGEATTRIBUTE(DJG_13342_KYLID, ATR_HITPOINTS, SQ415_BUFFHITTPOINTS);
        NPC_CHANGEATTRIBUTE(DJG_13342_KYLID, ATR_STRENGTH, SQ415_BUFFSTR);
    };
    DJG_13341_DEVIR.ATTRIBUTE[1] = (DJG_13341_DEVIR.ATTRIBUTE[1]) + (SQ415_BUFFHITTPOINTS);
    NPC_CHANGEATTRIBUTE(DJG_13341_DEVIR, ATR_HITPOINTS, SQ415_BUFFHITTPOINTS);
    NPC_CHANGEATTRIBUTE(DJG_13341_DEVIR, ATR_STRENGTH, SQ415_BUFFSTR);
}

const int SQ415_BUFFOURWARRIOR.SQ415_BUFFHITTPOINTS = 125;
const int SQ415_BUFFOURWARRIOR.SQ415_BUFFSTR = 25;
func void SQ415_ENDFIGHT() {
    NPC_EXCHANGEROUTINE(DJG_13339_LORIA, START);
    NPC_EXCHANGEROUTINE(DJG_13341_DEVIR, START);
    NPC_EXCHANGEROUTINE(DJG_13342_KYLID, START);
    DJG_13342_KYLID.FIGHT_TACTIC = FAI_HUMAN_MASTER;
    DJG_13341_DEVIR.FIGHT_TACTIC = FAI_HUMAN_MASTER;
    if (HLP_ISVALIDNPC(DJG_10009_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10009_WOLFSON, START);
    };
    if (HLP_ISVALIDNPC(DJG_10005_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10005_WOLFSON, START);
    };
    if (HLP_ISVALIDNPC(DJG_10006_WOLFSON)) {
        if ((Q401_FABIOANDGANGGONE) == (TRUE)) {
            B_STARTOTHERROUTINE(DJG_10006_WOLFSON, "PROTECTION");
        } else {
            B_STARTOTHERROUTINE(DJG_10006_WOLFSON, START);
        };
    };
    if (HLP_ISVALIDNPC(DJG_10008_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10008_WOLFSON, START);
    };
    if (HLP_ISVALIDNPC(DJG_10007_WOLFSON)) {
        B_STARTOTHERROUTINE(DJG_10007_WOLFSON, START);
    };
}

func void SQ415_STARTFIGHT() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf448, 75, 4);
}

func void SQ415_CUTSCENE_START() {
    SQ415_CUTSCENE_COUNT = (SQ415_CUTSCENE_COUNT) + (1);
    if ((SQ415_CUTSCENE_COUNT) == (4)) {
        SQ415_CUTSCENE_COUNT = 0;
        CUTSCENE_START(0x16b2c);
    };
}

var int SQ415_CUTSCENE_START.SQ415_CUTSCENE_COUNT = 0;
func void SQ415_CUTSCENEFIGHT_DISABLE() {
    SQ415_CUTSCENE_COUNT = (SQ415_CUTSCENE_COUNT) + (1);
    if ((SQ415_CUTSCENE_COUNT) == (4)) {
        HERO.AIVAR[4] = FALSE;
        WLD_SENDUNTRIGGER("SQ415_FIGHT_01");
        WLD_SENDUNTRIGGER("SQ415_FIGHT_02");
        WLD_SENDUNTRIGGER("SQ415_FIGHT_03");
        SQ415_ENDFIGHT();
    };
}

var int SQ415_CUTSCENEFIGHT_DISABLE.SQ415_CUTSCENE_COUNT = 0;
func void SQ415_FINISHQUEST() {
    LOG_SETSTATUS(_@(MIS_SQ415), TOPIC_SQ415, LOG_SUCCESS);
    B_GIVEPLAYERXP(XP_SQ415_FINISH);
    DJG_13339_LORIA.FLAGS = 0;
    DJG_13341_DEVIR.FLAGS = 0;
    DJG_13342_KYLID.FLAGS = 0;
}

