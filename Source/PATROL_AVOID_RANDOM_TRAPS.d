func void PATROL_AVOID_RANDOM_TRAPS() {
    if ((TRAP01_SPAWNED) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11070_THUG))) {
            AI_TELEPORT(NONE_11070_THUG, TOT2);
            NPC_EXCHANGEROUTINE(NONE_11070_THUG, TOT);
        };
        if (!(NPC_ISDEAD(NONE_11071_THUG))) {
            AI_TELEPORT(NONE_11071_THUG, TOT2);
            NPC_EXCHANGEROUTINE(NONE_11071_THUG, TOT);
        };
        if (!(NPC_ISDEAD(NONE_11072_THUG))) {
            AI_TELEPORT(NONE_11072_THUG, TOT2);
            NPC_EXCHANGEROUTINE(NONE_11072_THUG, TOT);
        };
        TRAP01_HIDDEN = TRUE;
    };
    if ((TRAP02_SPAWNED) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11073_THUG))) {
            AI_TELEPORT(NONE_11073_THUG, TOT2);
            NPC_EXCHANGEROUTINE(NONE_11073_THUG, TOT);
        };
        TRAP02_HIDDEN = TRUE;
    };
    B_STARTOTHERROUTINE(NONE_2246_BRADLOCK, "Q308");
    B_STARTOTHERROUTINE(NONE_6396_VOLKERGUARD, "Q308");
    B_STARTOTHERROUTINE(NONE_6397_VOLKERGUARD, "Q308");
}

func void PATROL_BRINGBACK_RANDOM_TRAPS() {
    if ((TRAP01_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11070_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11070_THUG, START);
        };
        if (!(NPC_ISDEAD(NONE_11071_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11071_THUG, START);
        };
        if (!(NPC_ISDEAD(NONE_11072_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11072_THUG, START);
        };
    };
    if ((TRAP02_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11073_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11073_THUG, START);
        };
    };
    if ((TRAP03_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(VLK_11094_HOBO))) {
            if ((TRAP03_AI_CHANGE) == (TRUE)) {
                NPC_EXCHANGEROUTINE(VLK_11094_HOBO, "AFTEREVENT");
            } else {
                NPC_EXCHANGEROUTINE(VLK_11094_HOBO, START);
            };
        };
        if (!(NPC_ISDEAD(VLK_11093_HOBO))) {
            if ((TRAP03_AI_CHANGE) == (TRUE)) {
                NPC_EXCHANGEROUTINE(VLK_11093_HOBO, "AFTEREVENT");
            } else {
                NPC_EXCHANGEROUTINE(VLK_11093_HOBO, START);
            };
        };
        if (!(NPC_ISDEAD(VLK_11092_HOBO))) {
            if ((TRAP03_AI_CHANGE) == (TRUE)) {
                NPC_EXCHANGEROUTINE(VLK_11092_HOBO, "AFTEREVENT");
            } else {
                NPC_EXCHANGEROUTINE(VLK_11092_HOBO, START);
            };
        };
        NPC_EXCHANGEROUTINE(VLK_11095_BEATENCITIZEN, START);
        if (NPC_ISDEAD(VLK_11095_BEATENCITIZEN)) {
            AI_TELEPORT(VLK_11095_BEATENCITIZEN, "PARTM3_HOBO_11");
        };
    };
    B_STARTOTHERROUTINE(NONE_2246_BRADLOCK, START);
    B_STARTOTHERROUTINE(NONE_6396_VOLKERGUARD, START);
    B_STARTOTHERROUTINE(NONE_6397_VOLKERGUARD, START);
}

func void ROTTENFOOD_AVOID_RANDOM_TRAPS() {
    if ((TRAP07_SPAWNED) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11115_REFUGEE))) {
            AI_TELEPORT(NONE_11115_REFUGEE, TOT);
            NPC_EXCHANGEROUTINE(NONE_11115_REFUGEE, TOT);
        };
        if (!(NPC_ISDEAD(NONE_11116_REFUGEE))) {
            AI_TELEPORT(NONE_11116_REFUGEE, TOT);
            NPC_EXCHANGEROUTINE(NONE_11116_REFUGEE, TOT);
        };
        if (!(NPC_ISDEAD(NONE_11117_REFUGEE))) {
            AI_TELEPORT(NONE_11117_REFUGEE, TOT);
            NPC_EXCHANGEROUTINE(NONE_11117_REFUGEE, TOT);
        };
        TRAP07_HIDDEN = TRUE;
    };
}

func void ROTTENFOOD_BRINGBACK_RANDOM_TRAPS() {
    if ((TRAP07_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11115_REFUGEE))) {
            NPC_EXCHANGEROUTINE(NONE_11115_REFUGEE, START);
        };
        if (!(NPC_ISDEAD(NONE_11116_REFUGEE))) {
            NPC_EXCHANGEROUTINE(NONE_11116_REFUGEE, START);
        };
        if (!(NPC_ISDEAD(NONE_11117_REFUGEE))) {
            NPC_EXCHANGEROUTINE(NONE_11117_REFUGEE, START);
        };
    };
}

func void QA302_AVOID_RANDOM_TRAPS() {
    if (((LOG_GETSTATUS(MIS_QA302)) != (LOG_RUNNING)) && ((LOG_GETSTATUS(MIS_SQ313)) != (LOG_RUNNING))) {
        if ((TRAP10_HIDDEN) == (FALSE)) {
            if ((TRAP10_SPAWNED) == (TRUE)) {
                if ((NPC_ISDEAD(NONE_11153_THUG)) == (FALSE)) {
                    TELEPORTNPCTOWP(54769, TOT);
                    NPC_EXCHANGEROUTINE(NONE_11153_THUG, TOT);
                };
                if ((NPC_ISDEAD(NONE_11154_THUG)) == (FALSE)) {
                    TELEPORTNPCTOWP(54772, TOT);
                    NPC_EXCHANGEROUTINE(NONE_11154_THUG, TOT);
                };
                if ((NPC_ISDEAD(NONE_11155_THUG)) == (FALSE)) {
                    TELEPORTNPCTOWP(54775, TOT);
                    NPC_EXCHANGEROUTINE(NONE_11155_THUG, TOT);
                };
                TRAP10_HIDDEN = TRUE;
            };
        };
        if ((RND_PROVOCATION_M6_CH3_HIDDEN) == (FALSE)) {
            if ((RND_PROVOCATION_M6_CH3) == (1)) {
                TELEPORTNPCTOWP(53900, TOT);
                NPC_EXCHANGEROUTINE(NONE_11152_THUG, TOT);
                TELEPORTNPCTOWP(53897, TOT);
                NPC_EXCHANGEROUTINE(NONE_11151_THUG, TOT);
                RND_PROVOCATION_M6_CH3_HIDDEN = TRUE;
            };
        };
    };
}

func void QA302_BRINGBACK_RANDOM_TRAPS() {
    if ((TRAP10_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(NONE_11153_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11153_THUG, START);
        };
        if (!(NPC_ISDEAD(NONE_11154_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11154_THUG, START);
        };
        if (!(NPC_ISDEAD(NONE_11155_THUG))) {
            NPC_EXCHANGEROUTINE(NONE_11155_THUG, START);
        };
    };
    if ((RND_PROVOCATION_M6_CH3_HIDDEN) == (TRUE)) {
        if ((NPC_ISDEAD(NONE_11152_THUG)) == (FALSE)) {
            TELEPORTNPCTOWP(53900, NONE_11152_THUG.WP);
            NPC_EXCHANGEROUTINE(NONE_11152_THUG, START);
        };
        if ((NPC_ISDEAD(NONE_11152_THUG)) == (FALSE)) {
            TELEPORTNPCTOWP(53897, NONE_11151_THUG.WP);
            NPC_EXCHANGEROUTINE(NONE_11151_THUG, START);
        };
        RND_PROVOCATION_M6_CH3_HIDDEN = FALSE;
    };
}

func void Q105_AVOID_RANDOM_TRAPS() {
    if (((TRAP18_SPAWNED) == (TRUE)) && ((TRAP18_GIVEGOLD) == (FALSE))) {
        if (!(NPC_ISDEAD(BDT_13313_BANDIT))) {
            AI_TELEPORT(BDT_13313_BANDIT, TOT);
            NPC_EXCHANGEROUTINE(BDT_13313_BANDIT, TOT);
        };
        TRAP18_HIDDEN = TRUE;
    };
}

func void Q105_BRINGBACK_RANDOM_TRAPS() {
    if ((TRAP18_HIDDEN) == (TRUE)) {
        if (!(NPC_ISDEAD(BDT_13313_BANDIT))) {
            NPC_EXCHANGEROUTINE(BDT_13313_BANDIT, START);
        };
    };
}

func void Q308_AVOID_RANDOM_TRAPS() {
    if (((NS66_SPAWNED) == (TRUE)) && ((NS66_DESPAWNED) == (FALSE))) {
        if ((NS66_HIDDEN) == (FALSE)) {
            if ((NPC_ISDEAD(NONE_13802_TRAVELLER)) == (FALSE)) {
                B_STARTOTHERROUTINE(NONE_13802_TRAVELLER, TOT);
                NPC_REFRESH(NONE_13802_TRAVELLER);
                TELEPORTNPCTOWP(52593, NONE_13802_TRAVELLER.WP);
            };
            if ((NPC_ISDEAD(NONE_13803_POTIONSELLER)) == (FALSE)) {
                B_STARTOTHERROUTINE(NONE_13803_POTIONSELLER, TOT);
                NPC_REFRESH(NONE_13803_POTIONSELLER);
                TELEPORTNPCTOWP(52596, NONE_13803_POTIONSELLER.WP);
            };
            NS66_HIDDEN = TRUE;
        };
    };
}

func void Q308_BRINGBACK_RANDOM_TRAPS() {
    if ((NS66_HIDDEN) == (TRUE)) {
        if ((NPC_ISDEAD(NONE_13802_TRAVELLER)) == (FALSE)) {
            B_STARTOTHERROUTINE(NONE_13802_TRAVELLER, START);
            NPC_REFRESH(NONE_13802_TRAVELLER);
            TELEPORTNPCTOWP(52593, NONE_13802_TRAVELLER.WP);
        };
        if ((NPC_ISDEAD(NONE_13803_POTIONSELLER)) == (FALSE)) {
            B_STARTOTHERROUTINE(NONE_13803_POTIONSELLER, START);
            NPC_REFRESH(NONE_13803_POTIONSELLER);
            TELEPORTNPCTOWP(52596, NONE_13803_POTIONSELLER.WP);
        };
        NS66_HIDDEN = FALSE;
    };
}

func int RNG_VHORROREVENT01_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_13759_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_13759_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_13759_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func int RNG_VHORROREVENT02_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_14167_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_14167_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_14167_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func int RNG_VHORROREVENT03_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_14168_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_14168_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_14168_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func int RNG_VHORROREVENT04_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_14169_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_14169_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_14169_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func int RNG_VHORROREVENT05_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_14170_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_14170_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_14170_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func int RNG_VHORROREVENT06_CONTROLLER() {
    if ((((((((NPC_GETDISTTONPC(HERO, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(BAU_2277_LOWELL_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_730_UWE_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(BAU_712_STONE_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11136_REFIR_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(KDW_203_RIORDIAN_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_4017_ARWID_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((((((NPC_GETDISTTONPC(MIL_6275_BERTO_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(MIL_6318_LUTZ_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(MIL_63710_DUSTER_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_202_KESSEL_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_6331_JAVAD_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13785_GRIF_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_7500_BEN_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PIR_1303_CORTEZ_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((((((((NPC_GETDISTTONPC(NONE_13795_DISMAS_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(DJG_13790_HAVARD_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_10039_WORKER_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11037_MARKUS_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(PAL_100_CANDAC_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(NONE_11301_ILSE_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_1009_CARAMON_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if (((((NPC_GETDISTTONPC(VLK_10035_GARD_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB)) || ((NPC_GETDISTTONPC(VLK_6232_VEIGO_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(VLK_6282_RUUD_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) || ((NPC_GETDISTTONPC(SLD_13784_VARIN_VZ, NONE_14171_VOLFZACKENIGHTMARE)) <= (RNG_RADIUS_VERYCLOSEB))) {
        return TRUE;
    };
    if ((NONE_14171_VOLFZACKENIGHTMARE.ATTRIBUTE[0]) != (NONE_14171_VOLFZACKENIGHTMARE.ATTRIBUTE[1])) {
        return TRUE;
    };
    return FALSE;
}

func void M1_DA3_BEGGAR_GIVEMONEY() {
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (0)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_01");
    };
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (1)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_02");
    };
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (2)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_03");
    };
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (3)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_04");
    };
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (4)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_05");
    };
    if ((DA3_BEGGAR_GIVEMONEY_SPEAK) == (5)) {
        AI_OUTPUT(OTHER, SELF, "DIA_Beggar_Trap_GiveMoney2_15_06");
    };
    DA3_BEGGAR_GIVEMONEY_SPEAK = (DA3_BEGGAR_GIVEMONEY_SPEAK) + (1);
    AI_WAITTILLEND(SELF, OTHER);
}

