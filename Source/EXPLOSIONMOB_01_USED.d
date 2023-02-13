var int EXPLOSIONMOB_01_USED;
var int EXPLOSIONMOB_02_USED;
var int EXPLOSIONMOB_ISINUSE;
var int EXPLOSIONMOB_LOGENTRY;
const int EXPLOSIONMOB_USED = 1;
func void EXPLOSIONBARREL_USED() {
    EXPLOSIONMOB_ISINUSE = TRUE;
    SND_PLAY("TORCH_ENLIGHT");
    if ((LOG_GETSTATUS(MIS_Q401)) == (LOG_RUNNING)) {
        if ((EXPLOSIONMOB_LOGENTRY) == (FALSE)) {
            B_LOGENTRY(TOPIC_Q401, LOG_Q401_RUNAWAYEXPLOSION);
            EXPLOSIONMOB_LOGENTRY = 1;
        };
    };
    Q401_DUSTERBIZZAREADVENTURE = 4;
}

func void EXPLOSIONBARREL_STOP() {
    HERO.AIVAR[4] = FALSE;
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void EXPLOSIONBARREL_S1() {
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART16_EXPLOSION_01")) {
            if ((EXPLOSIONMOB_ISINUSE) == (FALSE)) {
                if ((EXPLOSIONMOB_USED) > (EXPLOSIONMOB_01_USED)) {
                    EXPLOSIONMOB_01_USED = (EXPLOSIONMOB_01_USED) + (1);
                    EXPLOSIONBARREL_USED();
                    WLD_SENDTRIGGER("EXPLOSION01");
                } else {
                    EXPLOSIONBARREL_STOP();
                };
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART16_EXPLOSION_02")) {
            if ((EXPLOSIONMOB_ISINUSE) == (FALSE)) {
                if ((EXPLOSIONMOB_USED) > (EXPLOSIONMOB_02_USED)) {
                    EXPLOSIONMOB_02_USED = (EXPLOSIONMOB_02_USED) + (1);
                    EXPLOSIONBARREL_USED();
                    WLD_SENDTRIGGER("EXPLOSION02");
                } else {
                    EXPLOSIONBARREL_STOP();
                };
            };
        };
    };
}

func void EXPLOSIONBARREL_S0() {
    EXPLOSIONMOB_ISINUSE = FALSE;
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

