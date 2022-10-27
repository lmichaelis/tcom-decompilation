var int BRIDGEREPAIR_COUNTS = 0;
var int SQ221_BRIDGEREPAIR_01 = 0;
var int SQ221_BRIDGEREPAIR_02 = 0;
var int SQ221_BRIDGEREPAIR_03 = 0;
var int SQ221_BRIDGEREPAIR_04 = 0;
func void BRIDGEREPAIR_WORK() {
    BRIDGEREPAIR_COUNTS = (BRIDGEREPAIR_COUNTS) + (1);
    if ((BRIDGEREPAIR_COUNTS) == (1)) {
        AI_WAIT(HERO, 0x3f800000);
        AI_OUTPUT(HERO, HERO, "DIA_SQ221_REPAIR_15_01");
    };
    if ((BRIDGEREPAIR_COUNTS) == (2)) {
        AI_WAIT(HERO, 0x3f800000);
        AI_OUTPUT(HERO, HERO, "DIA_SQ221_REPAIR_15_02");
    };
    if ((BRIDGEREPAIR_COUNTS) == (3)) {
        FADESCREENTOBLACKF(3, 0xbf36, 1000);
    };
}

func void BRIDGEREPAIR_STOP() {
    AI_OUTPUT(HERO, HERO, "DIA_SQ221_REPAIR_15_04");
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void BRIDGEREPAIR_WORK_FADESCREEN() {
    SQ221_UWE_WORK = 4;
    WLD_SENDTRIGGER("SQ221_BRIDGE");
    AI_WAIT(HERO, 0x3f800000);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_OUTPUT(HERO, HERO, "DIA_SQ221_REPAIR_15_03");
    WLD_SENDTRIGGER("KM_PART13_BRIDGE_01");
    WLD_SENDTRIGGER("KM_PART13_BRIDGE_02");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

func void BRIDGEREPAIR_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_REPAIR_01")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_UWE_WORK) == (3)) {
                    if ((SQ221_BRIDGEREPAIR_01) == (0)) {
                        SQ221_BRIDGEREPAIR_01 = 1;
                        MOB_CHANGEFOCUSNAME("SQ221_REPAIR_01", "MOBNAME_NOTHING");
                        BRIDGEREPAIR_WORK();
                    } else {
                        BRIDGEREPAIR_STOP();
                    };
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_REPAIR_02")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_UWE_WORK) == (3)) {
                    if ((SQ221_BRIDGEREPAIR_02) == (0)) {
                        SQ221_BRIDGEREPAIR_02 = 1;
                        MOB_CHANGEFOCUSNAME("SQ221_REPAIR_02", "MOBNAME_NOTHING");
                        BRIDGEREPAIR_WORK();
                    } else {
                        BRIDGEREPAIR_STOP();
                    };
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_REPAIR_03")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_UWE_WORK) == (3)) {
                    if ((SQ221_BRIDGEREPAIR_03) == (0)) {
                        SQ221_BRIDGEREPAIR_03 = 1;
                        MOB_CHANGEFOCUSNAME("SQ221_REPAIR_03", "MOBNAME_NOTHING");
                        BRIDGEREPAIR_WORK();
                    } else {
                        BRIDGEREPAIR_STOP();
                    };
                };
            };
        } else if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "PART13_SQ221_REPAIR_04")) {
            if ((LOG_GETSTATUS(MIS_SQ221)) == (LOG_RUNNING)) {
                if ((SQ221_UWE_WORK) == (3)) {
                    if ((SQ221_BRIDGEREPAIR_04) == (0)) {
                        SQ221_BRIDGEREPAIR_04 = 1;
                        MOB_CHANGEFOCUSNAME("SQ221_REPAIR_04", "MOBNAME_NOTHING");
                        BRIDGEREPAIR_WORK();
                    } else {
                        BRIDGEREPAIR_STOP();
                    };
                };
            };
        };
    };
}

instance BRIDGEREPAIR_S1.HER(C_NPC)
func void BRIDGEREPAIR_S0() {
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

