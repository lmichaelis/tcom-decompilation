var int BRAZIERMOB_01_USED;
var int BRAZIERMOB_02_USED;
var int BRAZIERMOB_03_USED;
var int BRAZIERMOB_04_USED;
var int BRAZIERMOB_05_USED;
var int BRAZIERMOB_06_USED;
var int BRAZIERMOB_07_USED;
var int BRAZIERMOB_08_USED;
var int BRAZIERMOB_09_USED;
var int BRAZIERMOB_10_USED;
var int BRAZIERMOB_ISINUSE;
const int BRAZIERMOB_USED = 1;
func void BRAZIER_FIRE() {
    CQ001_BRAZIERINFO = (CQ001_BRAZIERINFO) + (1);
    BRAZIERMOB_ISINUSE = TRUE;
    B_GIVEPLAYERXP(XP_CQ001_BRAZIER);
    SND_PLAY("TORCH_ENLIGHT");
    if (((LOG_GETSTATUS(MIS_CQ001)) == (LOG_RUNNING)) && ((CQ001_BRAZIERFIRE) == (1))) {
        if ((CQ001_BRAZIERINFO) == (1)) {
            B_LOGENTRY(TOPIC_CQ001, LOG_CQ001_BRAZIER1);
        };
        if ((CQ001_BRAZIERINFO) == (5)) {
            B_LOGENTRY(TOPIC_CQ001, LOG_CQ001_BRAZIER2);
        };
        if ((CQ001_BRAZIERINFO) == (10)) {
            B_LOGENTRY(TOPIC_CQ001, LOG_CQ001_BRAZIER3);
            B_GIVEPLAYERXP((XP_CQ001_BRAZIER) * (9));
        };
    };
}

func void BRAZIER_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void BRAZIER_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_01")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_01_USED)) {
                    BRAZIERMOB_01_USED = (BRAZIERMOB_01_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER01");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_02")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_02_USED)) {
                    BRAZIERMOB_02_USED = (BRAZIERMOB_02_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER02");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_03")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_03_USED)) {
                    BRAZIERMOB_03_USED = (BRAZIERMOB_03_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER03");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_04")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_04_USED)) {
                    BRAZIERMOB_04_USED = (BRAZIERMOB_04_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER04");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_05")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_05_USED)) {
                    BRAZIERMOB_05_USED = (BRAZIERMOB_05_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER05");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_06")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_06_USED)) {
                    BRAZIERMOB_06_USED = (BRAZIERMOB_06_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER06");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_07")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_07_USED)) {
                    BRAZIERMOB_07_USED = (BRAZIERMOB_07_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER07");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_08")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_08_USED)) {
                    BRAZIERMOB_08_USED = (BRAZIERMOB_08_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER08");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_09")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_09_USED)) {
                    BRAZIERMOB_09_USED = (BRAZIERMOB_09_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER09");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_BRAZIER_10")) {
            if ((BRAZIERMOB_ISINUSE) == (FALSE)) {
                if ((BRAZIERMOB_USED) > (BRAZIERMOB_10_USED)) {
                    BRAZIERMOB_10_USED = (BRAZIERMOB_10_USED) + (1);
                    BRAZIER_FIRE();
                    WLD_SENDTRIGGER("BRAZIER10");
                } else {
                    BRAZIER_STOP();
                };
            };
        };
    };
}

func void BRAZIER_S0() {
    BRAZIERMOB_ISINUSE = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

