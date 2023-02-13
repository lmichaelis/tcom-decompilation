func void EVENTSMANAGER_SQ213() {
    var int SQ213_TELLKARIN;
    var int MEAT;
    var int SQ213_LUTZDEBT_REMINDER;
    if ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_RUNNING)) {
        if ((SQ213_LUTZDEBT_REMINDER) == (0)) {
            if (((SQ213_LUTZDEBTGIVEN) == (1)) && ((SQ213_LUTZDEBTGIVEN_DAY) <= ((WLD_GETDAY()) - (3)))) {
                SQ213_LUTZDEBT_REMINDER = 1;
                B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_TIMEPASSES);
            };
        } else if ((SQ213_LUTZDEBT_REMINDER) == (1)) {
            if (((SQ213_LUTZDEBTGIVEN) == (1)) && ((SQ213_LUTZDEBTGIVEN_DAY) <= ((WLD_GETDAY()) - (6)))) {
                SQ213_LUTZDEBT_REMINDER = 2;
                B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_TIMEPASSES_WARNING_1);
            };
        };
        if (((SQ213_LUTZDEBTGIVEN) == (1)) && ((SQ213_LUTZDEBTGIVEN_DAY) <= ((WLD_GETDAY()) - (7)))) {
            if ((SQ213_LUTZANGRY) == (0)) {
                SQ213_LUTZANGRY = 1;
                PRINTD("Lutz zapamiêta nie oddanie kasy na czas.");
                B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_TIMEPASSES_WARNING_2);
            };
        };
        if ((SQ213_SPAWNRAZORS) == (1)) {
            if ((NPC_ISDEAD(SNAPPER_SQ213_BIG)) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART9_FARMERCORPSE")) <= (500)) {
                    if ((SQ213_BIGSNAPPERLOGENTRY) == (FALSE)) {
                        B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_BIGSNAPPERLOGENTRY);
                        SQ213_BIGSNAPPERLOGENTRY = TRUE;
                    };
                };
            };
            if ((NPC_ISDEAD(SNAPPER_SQ213_BIG)) == (FALSE)) {
                MEAT = MOB_HASITEMGROUP("KM_SQ213_FARMERBODY", 32298);
                if ((MEAT) > (11)) {
                    if ((SQ213_BIGSNAPPERCOMING) == (0)) {
                        B_STARTOTHERROUTINE(SNAPPER_SQ213_BIG, "CORPSE");
                        NPC_REFRESH(SNAPPER_SQ213_BIG);
                        B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_OHLAWDHECOMIN);
                        SQ213_BIGSNAPPERCOMING = 1;
                        PRINTD("O korwa o fak nadchodzi!");
                    };
                };
            };
            if ((SQ213_BIGSNAPPERDEADLOGENTRY) == (FALSE)) {
                if (NPC_ISDEAD(SNAPPER_SQ213_BIG)) {
                    if ((((NPC_ISDEAD(SNAPPER_SQ213_01)) && (NPC_ISDEAD(SNAPPER_E_01))) && (NPC_ISDEAD(SNAPPER_SQ213_02))) && (NPC_ISDEAD(SNAPPER_E_02))) {
                        B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_BIGSNAPPERDEADV1);
                    } else {
                        B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_BIGSNAPPERDEADV2);
                    };
                    SQ213_BIGSNAPPERDEADLOGENTRY = TRUE;
                };
            };
        };
        if (((SQ213_ORCHARDREADY) == (TRUE)) && ((SQ213_KARIN_TELLABOUTPLACE) == (1))) {
            if ((SQ213_TELLKARIN) == (FALSE)) {
                SQ213_TELLKARIN = TRUE;
                B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_TELLKARIN);
            };
        };
        if ((SQ213_PREPERATIONDONELOGENTRY) == (FALSE)) {
            if ((((((SQ213_BASTIANBOUGHTFOOD) == (TRUE)) && ((SQ213_ORCHARDREADY) == (TRUE))) && ((SQ213_GOTVINE) == (TRUE))) && ((SQ213_MARVINKNOWHOWTOPLAY) == (TRUE))) && ((SQ213_KARIN_TELLABOUTPLACE) == (2))) {
                B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_PREPARATIONDONE);
                SQ213_PREPERATIONDONELOGENTRY = TRUE;
            };
        };
        if (((NPC_HASITEMS(HERO, 37420)) >= (1)) && ((SQ213_GOTVINE) == (0))) {
            B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_SPECIALWINE);
            SQ213_GOTVINE = 2;
        };
        if ((SQ213_SONGRESULT) == (3)) {
            if (NPC_ISINSTATE(HERO, 61603)) {
                HERO.AIVAR[95] = FALSE;
                HERO.AIVAR[94] = FALSE;
                MIL_6318_LUTZ.AIVAR[95] = FALSE;
                MIL_6318_LUTZ.AIVAR[94] = FALSE;
                NPC_CLEARAIQUEUE(MIL_6318_LUTZ);
                NPC_SETATTITUDE(MIL_6318_LUTZ, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(MIL_6318_LUTZ, ATT_NEUTRAL);
                MIL_6318_LUTZ.AIVAR[1] = CRIME_NONE;
                MIL_6318_LUTZ.AIVAR[0] = FIGHT_NONE;
                MDL_STARTFACEANI(MIL_6318_LUTZ, S_NEUTRAL, 1065353216, -1082130432);
                SQ213_SONGRESULT = 4;
                AI_FUNCTION(HERO, 62552);
            } else if (NPC_ISINSTATE(MIL_6318_LUTZ, 61603)) {
                SQ213_SONGRESULT = 5;
                MIL_6318_LUTZ.AIVAR[95] = FALSE;
                MIL_6318_LUTZ.AIVAR[94] = FALSE;
                NPC_CLEARAIQUEUE(BAU_703_MARTHA);
                BAU_703_MARTHA.ATTRIBUTE[4] = 999999;
                BAU_703_MARTHA.FLAGS = 2;
                B_IMMEDIATEATTACKPLAYER(BAU_703_MARTHA, AR_NONE);
            };
        };
        if (((SQ213_SONGRESULT) == (5)) && (NPC_ISINSTATE(HERO, 61603))) {
            NPC_CLEARAIQUEUE(BAU_703_MARTHA);
            NPC_SETATTITUDE(BAU_703_MARTHA, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(BAU_703_MARTHA, ATT_NEUTRAL);
            BAU_703_MARTHA.AIVAR[1] = CRIME_NONE;
            BAU_703_MARTHA.AIVAR[0] = FIGHT_NONE;
            MDL_STARTFACEANI(BAU_703_MARTHA, S_NEUTRAL, 1065353216, -1082130432);
            BAU_703_MARTHA.ATTRIBUTE[4] = 25;
            BAU_703_MARTHA.FLAGS = 0;
            SQ213_SONGRESULT = 6;
            MIL_6318_LUTZ.AIVAR[96] = 1;
            AI_FUNCTION(HERO, 62552);
        };
        if (((SQ213_AFTERSONG_CHECK) == (1)) && ((SQ213_AFTERSONG_DAY) <= ((WLD_GETDAY()) - (1)))) {
            B_STARTOTHERROUTINE(BAU_703_MARTHA, START);
            if (((SQ213_SONGRESULT) == (1)) || ((SQ213_SONGRESULT) == (2))) {
                B_STARTOTHERROUTINE(MIL_6318_LUTZ, "SILBACH");
            } else if ((SQ213_SONGRESULT) >= (3)) {
                B_STARTOTHERROUTINE(MIL_6318_LUTZ, START);
            };
            PRINTD("Mo¿na oddaæ questa Lutzowi!");
            SQ213_AFTERSONG_CHECK = 2;
            if ((SQ213_BASKETFOODRESULT) == (1)) {
                FF_APPLYONCEEXTGT(62546, 0, -(1));
            };
            SQ213_PREPAREBLANKET();
            B_LOGENTRY(TOPIC_SQ213, LOG_SQ213_TOSILBACH);
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ213)) == (LOG_SUCCESS)) {
        if ((SQ213_LUTZ_CHANGERTNSILBACH) == (FALSE)) {
            if ((SQ213_WAITTONEXTQUEST_DAY) <= ((WLD_GETDAY()) - (1))) {
                if (((((NPC_ISINSTATE(MIL_6318_LUTZ, 61599)) == (FALSE)) && ((NPC_ISINSTATE(BAU_722_RASCO, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_702_VIKTOR, 61599)) == (FALSE))) && ((NPC_ISINSTATE(BAU_703_MARTHA, 61599)) == (FALSE))) {
                    SQ213_LUTZ_CHANGERTNSILBACH = TRUE;
                    B_STARTOTHERROUTINE(MIL_6318_LUTZ, "SQ410_START");
                    NPC_REFRESH(MIL_6318_LUTZ);
                    B_STARTOTHERROUTINE(BAU_722_RASCO, "SQ410");
                    NPC_REFRESH(BAU_722_RASCO);
                    B_STARTOTHERROUTINE(BAU_702_VIKTOR, "SQ410_INN");
                    SQ410_VIKTOR_RTNCHECK = 1;
                    NPC_REFRESH(BAU_702_VIKTOR);
                    B_STARTOTHERROUTINE(BAU_703_MARTHA, "SQ410_WORK");
                    NPC_REFRESH(BAU_703_MARTHA);
                    TELEPORTNPCTOWP(57542, BAU_703_MARTHA.WP);
                };
            };
        };
    };
}

