func void Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS() {
    Q514_VOLFZACKWARRIOR_GIVEIMMORTAL_COUNT = (Q514_VOLFZACKWARRIOR_GIVEIMMORTAL_COUNT) + (1);
    VOLFZACKWARRIOR_COUNT = (VOLFZACKWARRIOR_COUNT) - (1);
    PRINTD(CS2("Umar³o ci wojowników: ", INTTOSTRING(Q514_VOLFZACKWARRIOR_GIVEIMMORTAL_COUNT)));
    EVT_DISABLECHESS();
    if ((Q514_CHESS_BOSSFIGHT) != (2)) {
        if ((Q514_VOLFZACKWARRIOR_GIVEIMMORTAL_COUNT) == (2)) {
            Q514_VOLFZACKWARRIORS_BLOCKER();
        };
    };
}

func void EVENTSMANAGER_Q514_WARRIORDEATH() {
    if (((((LOG_GETSTATUS(MIS_Q514)) != (LOG_RUNNING)) || ((CURRENTLEVEL) != (ARCHOLOS_VOLFZACKE_ZEN))) || ((Q514_VOLFZACKWARRIOR_GIVEIMMORTAL_COUNT) == (2))) || ((Q514_CAMPISREADY) == (0))) {
        return;
    };
    if ((Q514_CAMPISREADY) == (1)) {
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_01) == (FALSE)) {
            if ((Q509_ARWIDVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(MIL_4017_ARWID_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_01 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_02) == (FALSE)) {
            if ((Q509_CARAMONVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(SLD_1009_CARAMON_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_02 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_03) == (FALSE)) {
            if ((Q509_ILSEVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(NONE_11301_ILSE_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_03 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_04) == (FALSE)) {
            if ((Q509_GRIFVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(SLD_13785_GRIF_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_04 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_05) == (FALSE)) {
            if ((Q509_JAVADVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(NONE_6331_JAVAD_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_05 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_06) == (FALSE)) {
            if ((Q509_LUTZVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(MIL_6318_LUTZ_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_06 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_07) == (FALSE)) {
            if ((Q509_CANDACVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(PAL_100_CANDAC_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_07 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_08) == (FALSE)) {
            if ((Q509_BENVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(NONE_7500_BEN_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_08 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_09) == (FALSE)) {
            if ((Q509_GARDVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(VLK_10035_GARD_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_09 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_10) == (FALSE)) {
            if ((Q509_HAVARDVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(DJG_13790_HAVARD_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_10 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_11) == (FALSE)) {
            if ((Q509_BERTOVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(MIL_6275_BERTO_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_11 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
        if ((Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_12) == (FALSE)) {
            if ((Q509_CORTEZVOLFZACKE) == (1)) {
                if (NPC_ISDEAD(PIR_1303_CORTEZ_VZ)) {
                    Q514_VOLFZACKWARRIOR_ISDEAD_WOLFSONISDEAD_12 = TRUE;
                    Q514_VOLFZACKWARRIOR_ISDEAD_COUNTPOINTS();
                };
            };
        };
    };
}

