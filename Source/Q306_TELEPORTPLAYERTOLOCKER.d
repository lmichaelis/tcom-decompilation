func void Q306_TELEPORTPLAYERTOLOCKER() {
    AI_TELEPORT(HERO, "P17_HAVEN_ARENA_INSIDE_06");
    FADESCREENFROMBLACK(1);
}

func void EVENTSMANAGER_Q306() {
    if ((LOG_GETSTATUS(MIS_Q306)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q306_READY) == (FALSE)) {
        if (((WLD_GETDAY()) > (Q306_INVITE_DAY)) && (Q306_PLAYERSIGNEDIN)) {
            if ((LOG_GETSTATUS(MIS_SQ225)) == (LOG_RUNNING)) {
                B_LOGENTRY(TOPIC_SQ225, LOG_SQ225_HURRYUP);
            };
            if ((LOG_GETSTATUS(MIS_SQ116)) == (LOG_RUNNING)) {
                B_LOGENTRY(TOPIC_SQ116, LOG_SQ116_HURRYUP);
            };
            if ((LOG_GETSTATUS(MIS_SQ230)) == (LOG_SUCCESS)) {
                B_LOGENTRY(TOPIC_Q306, LOG_Q306_TOURAMENTREADYFISTS);
            } else {
                B_LOGENTRY(TOPIC_Q306, LOG_Q306_TOURAMENTREADY);
            };
            Q306_READY = TRUE;
            Q306_TELEPORTWARRIORS();
            TOURNAMENT_TELEPORTVIEWRS();
            PIR_1329_SAUL.AIVAR[15] = TRUE;
        };
    };
    if ((Q306_READYFORFIGHT) == (2)) {
        if ((Q306_CHECKLARRYMUSIC) == (1)) {
            if (NPC_ISINSTATE(PIR_1312_LARRY, 61603)) {
                Q306_CHECKLARRYMUSIC = 2;
                MUSIC_OVERRIDETRACK(21950);
            };
        };
        if ((Q306_CHECKOTISMUSIC) == (1)) {
            if (NPC_ISINSTATE(PIR_13050_OTIS_ARENA, 61603)) {
                Q306_CHECKOTISMUSIC = 2;
                MUSIC_OVERRIDETRACK(21950);
            };
        };
        if ((Q306_CHECKBABEMUSIC) == (1)) {
            if ((((Q305_JAVAD_WENTTONEWHOME) != (1)) && (NPC_ISINSTATE(PIR_1330_ALVAREZ, 61603))) || (((Q305_JAVAD_WENTTONEWHOME) == (1)) && (NPC_ISINSTATE(NONE_6331_JAVAD, 61603)))) {
                Q306_CHECKBABEMUSIC = 2;
                MUSIC_OVERRIDETRACK(21950);
            };
        };
        if ((Q306_CHECKSAULMUSIC) == (1)) {
            if (NPC_ISINSTATE(PIR_1329_SAUL, 61603)) {
                Q306_CHECKSAULMUSIC = 2;
                MUSIC_OVERRIDETRACK(21950);
            };
        };
        if ((Q306_STATE) == (0)) {
            if (NPC_KNOWSINFO(HERO, 84079)) {
                CUTSCENE_START(92508);
                Q306_STATE = 1;
            };
        } else if (((Q306_STATE) == (3)) && (Q306_LARRYAFTERFIGHT)) {
            if (!(NPC_ISINSTATE(PIR_1312_LARRY, 61599))) {
                if ((NPC_GETDISTTOWP(PIR_1312_LARRY, "P17_HAVEN_ARENA_LARRY")) <= (600)) {
                    Q306_PREPARESECONDFIGHT();
                    Q306_STATE = 4;
                    PRINTD("Spawn PIR_13050_Otis_Arena");
                };
            };
        } else if (((Q306_STATE) == (6)) && (Q306_OTISAFTERFIGHT)) {
            if (!(NPC_ISINSTATE(PIR_13050_OTIS_ARENA, 61599))) {
                CUTSCENE_START(92486);
                Q306_STATE = 7;
            };
        } else if (((Q306_STATE) == (7)) && ((Q306_FIRSTROUNDFINISH) == (1))) {
            CUTSCENE_START(92520);
            Q306_STATE = 8;
        } else if ((Q306_STATE) == (11)) {
            if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
                if (!(NPC_ISINSTATE(NONE_6331_JAVAD, 61599))) {
                    if ((NPC_GETDISTTOWP(NONE_6331_JAVAD, "P17_HAVEN_ARENA_LARRY")) <= (600)) {
                        Q306_STARTSAULFIGHT();
                        Q306_STATE = 12;
                    };
                };
            } else if (!(NPC_ISINSTATE(PIR_1330_ALVAREZ, 61599))) {
                if ((NPC_GETDISTTOWP(PIR_1330_ALVAREZ, "P17_HAVEN_ARENA_LARRY")) <= (600)) {
                    Q306_STARTSAULFIGHT();
                    Q306_STATE = 12;
                };
            };
        } else if (((Q306_STATE) == (14)) && (Q306_SAULAFTERFIGHT)) {
            if (!(NPC_ISINSTATE(PIR_1329_SAUL, 61599))) {
                CUTSCENE_START(92490);
                Q306_STATE = 15;
            };
        } else if (((Q306_STATE) == (16)) && ((Q306_SECONDROUNDFINISH) == (1))) {
            CUTSCENE_START(92524);
            Q306_STATE = 17;
        } else if (((Q306_STATE) == (19)) && (NPC_ISDEAD(NONE_1331_ORCSLAVE))) {
            Q306_COUNTWINBATTLE = (Q306_COUNTWINBATTLE) + (1);
            CUTSCENE_START(92530);
            Q306_STATE = 20;
        } else if (((Q306_STATE) == (21)) && (NPC_ISDEAD(SEASNAKE))) {
            Q306_COUNTWINBATTLE = (Q306_COUNTWINBATTLE) + (1);
            CUTSCENE_START(92494);
            Q306_STATE = 22;
        } else if (((Q306_STATE) == (23)) && ((Q306_THIRDROUNDFINISH) == (1))) {
            CUTSCENE_START(92502);
            Q306_STATE = 24;
        } else if ((Q306_STATE) == (25)) {
            if ((Q306_BENSPECIALATTACK) == (0)) {
                if ((NONE_7500_BEN.ATTRIBUTE[0]) <= (((NONE_7500_BEN.ATTRIBUTE[1]) / (4)) * (3))) {
                    PRINTD("Special attack");
                    Q306_BENSPECIALATTACK = 1;
                    Q306_BEN_RUNTOHERO();
                };
            } else if ((Q306_BENSPECIALATTACK) == (1)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_7500_BEN)) <= (300)) {
                    Q306_BENSPECIALATTACK = 2;
                    PRINTD("Atakuje");
                    Q306_BEN_ATTACK();
                };
            } else if ((Q306_BENSPECIALATTACK) == (2)) {
                if ((NONE_7500_BEN.ATTRIBUTE[0]) <= ((NONE_7500_BEN.ATTRIBUTE[1]) / (2))) {
                    PRINTD("Special attack");
                    Q306_BENSPECIALATTACK = 3;
                    Q306_BEN_RUNTOHERO();
                };
            } else if ((Q306_BENSPECIALATTACK) == (3)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_7500_BEN)) <= (300)) {
                    Q306_BENSPECIALATTACK = 4;
                    PRINTD("Atakuje");
                    Q306_BEN_ATTACK();
                };
            } else if ((Q306_BENSPECIALATTACK) == (4)) {
                if ((NONE_7500_BEN.ATTRIBUTE[0]) <= ((NONE_7500_BEN.ATTRIBUTE[1]) / (3))) {
                    PRINTD("Special attack");
                    Q306_BENSPECIALATTACK = 5;
                    Q306_BEN_RUNTOHERO();
                };
            } else if ((Q306_BENSPECIALATTACK) == (5)) {
                if ((NPC_GETDISTTONPC(HERO, NONE_7500_BEN)) <= (300)) {
                    Q306_BENSPECIALATTACK = 6;
                    PRINTD("Atakuje");
                    Q306_BEN_ATTACK();
                };
            };
            if (NPC_ISINSTATE(NONE_7500_BEN, 61603)) {
                CUTSCENE_START(92476);
                Q306_STATE = 26;
            };
        };
        if ((NPC_ISINSTATE(HERO, 61603)) || ((HERO.ATTRIBUTE[0]) == (1))) {
            if (((Q306_STATE) >= (1)) && ((Q306_TOURNAMENTSTATUS) == (0))) {
                PRINTD("Przegrana");
                FF_APPLYONCEEXT(63291, 1700, 3);
                Q306_TOURNAMENTSTATUS = 2;
            };
        };
    };
}

