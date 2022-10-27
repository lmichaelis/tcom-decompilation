func void ACHIEVEMENTSMANAGER() {
    if ((ACH_1_UNLOCKED) == (FALSE)) {
        if ((((Q509_ARWIDVOLFZACKE) && (Q509_BERTOVOLFZACKE)) && (Q509_CANDACVOLFZACKE)) && (Q509_LUTZVOLFZACKE)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_1);
            ACH_1_UNLOCKED = TRUE;
        };
    };
    if ((ACH_2_UNLOCKED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_KQ401)) == (LOG_SUCCESS)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_2);
            ACH_2_UNLOCKED = TRUE;
        };
    };
    if ((ACH_3_UNLOCKED) == (FALSE)) {
        if (((SHIPTALK) == (9)) && ((ACH_3_COUNTER) == (3))) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_3);
            ACH_3_UNLOCKED = TRUE;
        };
    };
    if ((ACH_5_UNLOCKED) == (FALSE)) {
        if ((PEON_SECONDTIME) == (2)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_5);
            ACH_5_UNLOCKED = TRUE;
        };
    };
    if ((ACH_6_UNLOCKED) == (FALSE)) {
        if ((((((ACH_6_STONE) && (ACH_6_RIORDIAN)) && (ACH_6_KYLE)) && (ACH_6_HOMER)) && (ACH_6_BLOODWYN)) && (ACH_6_NEK)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_6);
            ACH_6_UNLOCKED = TRUE;
        };
    };
    if ((ACH_7_UNLOCKED) == (FALSE)) {
        if (((ACH_7_SLD_FASTTRAVEL) && (ACH_7_BAU_FASTTRAVEL)) && (ACH_7_RUNE_FASTTRAVEL)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_7);
            ACH_7_UNLOCKED = TRUE;
        };
    };
    if ((ACH_8_UNLOCKED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_SUCCESS)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_8);
            ACH_8_UNLOCKED = TRUE;
        };
    };
    if ((ACH_9_UNLOCKED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_QA401)) == (LOG_SUCCESS)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_9);
            ACH_9_UNLOCKED = TRUE;
        };
    };
    if ((ACH_14_UNLOCKED) == (FALSE)) {
        if (((ACH_14_BELIAR) && (ACH_14_ADANOS)) && (ACH_14_INNOS)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_14);
            ACH_14_UNLOCKED = TRUE;
        };
    };
    if ((ACH_15_UNLOCKED) == (FALSE)) {
        BUFFLISTHEROLENGTH = MEM_ARRAYSIZE(GETPTR(BUFFLIST_HERO));
        if ((BUFFLISTHEROLENGTH) >= (3)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_15);
            ACH_15_UNLOCKED = TRUE;
        };
    };
    if ((ACH_16_UNLOCKED) == (FALSE)) {
        if ((((ACH_16_IRON) && (ACH_16_ORE)) && (ACH_16_SILVER)) && (ACH_16_GOLD)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_16);
            ACH_16_UNLOCKED = TRUE;
        };
    };
    if ((ACH_19_UNLOCKED) == (FALSE)) {
        if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_SUCCESS)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_19);
            ACH_19_UNLOCKED = TRUE;
        };
    };
    if ((ACH_21_UNLOCKED) == (FALSE)) {
        if ((PEON_SECONDTIME) == (1)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_21);
            ACH_21_UNLOCKED = TRUE;
        };
    };
    if ((ACH_22_UNLOCKED) == (FALSE)) {
        if ((((((((((((((LOG_GETSTATUS(MIS_Q514)) == (LOG_SUCCESS)) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_01) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_02) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_03) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_04) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_05) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_06) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_07) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_08) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_09) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_10) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_11) == (FALSE))) && ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_12) == (FALSE))) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_22);
            ACH_22_UNLOCKED = TRUE;
        };
    };
    if ((ACH_23_UNLOCKED) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x859b)) >= (0x2710)) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_23);
            ACH_23_UNLOCKED = TRUE;
        };
    };
    if ((ACH_25_UNLOCKED) == (FALSE)) {
        if (((LOG_GETSTATUS(MIS_SQ417)) == (LOG_SUCCESS)) && ((LOG_GETSTATUS(MIS_SQ403)) == (LOG_SUCCESS))) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_25);
            ACH_25_UNLOCKED = TRUE;
        };
    };
}

var int ACHIEVEMENTSMANAGER.BUFFLISTHEROLENGTH = 0;
