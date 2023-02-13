func void EVENTSMANAGER_QA303() {
    var int QA303_FIGHTWITHSKELETON_03;
    var int QA303_FIGHTWITHSKELETON_02;
    var int QA303_FIGHTWITHSKELETON_01;
    var int QA303_SAWDISTANCE;
    if ((LOG_GETSTATUS(MIS_QA303)) != (LOG_RUNNING)) {
        return;
    };
    if ((QA303_READMONSTERLIST) == (TRUE)) {
        QA303_READMONSTERLIST = 2;
        QA303_PREPARENPC();
    };
    if ((QA303_READMONSTERLIST) == (2)) {
        if ((QA303_SEASHARKDEAD) == (FALSE)) {
            if (((((NPC_GETDISTTONPC(SEASHARK_QA303_01, HERO)) <= (QA303_SAWDISTANCE)) || ((NPC_GETDISTTONPC(SEASHARK_QA303_02, HERO)) <= (QA303_SAWDISTANCE))) || ((NPC_GETDISTTONPC(SEASHARK_QA303_03, HERO)) <= (QA303_SAWDISTANCE))) || ((NPC_GETDISTTONPC(SEASHARK_QA303_04, HERO)) <= (QA303_SAWDISTANCE))) {
                QA303_SEASHARKDEAD = TRUE;
                B_LOGENTRY(TOPIC_QA303, LOG_QA303_SEASHARKDEAD);
            };
        };
        if ((QA303_ALLSEASHARKDEAD) == (FALSE)) {
            if ((((NPC_ISDEAD(SEASHARK_QA303_01)) && (NPC_ISDEAD(SEASHARK_QA303_02))) && (NPC_ISDEAD(SEASHARK_QA303_03))) && (NPC_ISDEAD(SEASHARK_QA303_04))) {
                QA303_ALLSEASHARKDEAD = TRUE;
                B_LOGENTRY(TOPIC_QA303, LOG_QA303_ALLSEASHARKDEAD);
            };
        };
        if ((QA303_SCAVENGERS_ANTIBLOCKER) == (TRUE)) {
            if ((QA303_SCAVENGERS) == (FALSE)) {
                if ((((NPC_GETDISTTONPC(SCAVENGER_QA303_01, HERO)) <= (QA303_SAWDISTANCE)) || ((NPC_GETDISTTONPC(SCAVENGER_QA303_02, HERO)) <= (QA303_SAWDISTANCE))) || ((NPC_GETDISTTONPC(SCAVENGER_QA303_03, HERO)) <= (QA303_SAWDISTANCE))) {
                    QA303_SCAVENGERS = TRUE;
                    B_LOGENTRY(TOPIC_QA303, LOG_QA303_SCAVENGERS_V2);
                };
            };
        };
        if (NPC_ISDEAD(SLD_11050_GERKE)) {
            if ((QA303_SCAVENGERS_ANTIBLOCKER) == (FALSE)) {
                QA303_SCAVENGERS_ANTIBLOCKER = TRUE;
                QA303_ANTIBLOCKERSPAWN();
            };
        };
        if ((QA303_SKELETONSAW) == (FALSE)) {
            if ((QA303_SKELETONDEAD_01) == (TRUE)) {
                if ((NPC_GETDISTTONPC(SKELETON_QA303_01, HERO)) <= (QA303_SAWDISTANCE)) {
                    QA303_SKELETONSAW_LOGENTRY();
                };
            } else if ((NPC_GETDISTTONPC(SKELETON_BEFORE_QA303_01, HERO)) <= (QA303_SAWDISTANCE)) {
                QA303_SKELETONSAW_LOGENTRY();
            };
            if ((QA303_SKELETONDEAD_02) == (TRUE)) {
                if ((NPC_GETDISTTONPC(SKELETON_QA303_02, HERO)) <= (QA303_SAWDISTANCE)) {
                    QA303_SKELETONSAW_LOGENTRY();
                };
            } else if ((NPC_GETDISTTONPC(SKELETON_BEFORE_QA303_02, HERO)) <= (QA303_SAWDISTANCE)) {
                QA303_SKELETONSAW_LOGENTRY();
            };
            if ((QA303_SKELETONDEAD_03) == (TRUE)) {
                if ((NPC_GETDISTTONPC(SKELETON_QA303_03, HERO)) <= (QA303_SAWDISTANCE)) {
                    QA303_SKELETONSAW_LOGENTRY();
                };
            } else if ((NPC_GETDISTTONPC(SKELETON_BEFORE_QA303_03, HERO)) <= (QA303_SAWDISTANCE)) {
                QA303_SKELETONSAW_LOGENTRY();
            };
        } else if ((QA303_FIGHTWITHSKELETON_01) == (FALSE)) {
            if ((QA303_SKELETONDEAD_01) == (TRUE)) {
                if (NPC_ISDEAD(SKELETON_QA303_01)) {
                    QA303_COUNTDEADSKELETONS();
                    QA303_FIGHTWITHSKELETON_01 = TRUE;
                };
            } else if (NPC_ISDEAD(SKELETON_BEFORE_QA303_01)) {
                QA303_COUNTDEADSKELETONS();
                QA303_FIGHTWITHSKELETON_01 = TRUE;
            };
        };
        if ((QA303_FIGHTWITHSKELETON_02) == (FALSE)) {
            if ((QA303_SKELETONDEAD_02) == (TRUE)) {
                if (NPC_ISDEAD(SKELETON_QA303_02)) {
                    QA303_COUNTDEADSKELETONS();
                    QA303_FIGHTWITHSKELETON_02 = TRUE;
                };
            } else if (NPC_ISDEAD(SKELETON_BEFORE_QA303_02)) {
                QA303_COUNTDEADSKELETONS();
                QA303_FIGHTWITHSKELETON_02 = TRUE;
            };
        };
        if ((QA303_FIGHTWITHSKELETON_03) == (FALSE)) {
            if ((QA303_SKELETONDEAD_03) == (TRUE)) {
                if (NPC_ISDEAD(SKELETON_QA303_03)) {
                    QA303_COUNTDEADSKELETONS();
                    QA303_FIGHTWITHSKELETON_03 = TRUE;
                };
            } else if (NPC_ISDEAD(SKELETON_BEFORE_QA303_03)) {
                QA303_COUNTDEADSKELETONS();
                QA303_FIGHTWITHSKELETON_03 = TRUE;
            };
        };
        if ((QA303_ALLSKELETONSDEAD) == (FALSE)) {
            if ((QA303_HOWMANYSKELETONDEAD) >= (3)) {
                QA303_ALLSKELETONSDEAD = TRUE;
                B_LOGENTRY(TOPIC_QA303, LOG_QA303_ALLSKELETONSDEAD);
            };
        };
        if ((QA303_ALLJOBDONE) == (FALSE)) {
            if ((((QA303_SEASHARKDEAD) == (TRUE)) && ((QA303_SCAVENGERS) == (TRUE))) && ((QA303_SKELETONSAW) == (TRUE))) {
                QA303_ALLJOBDONE = TRUE;
                B_LOGENTRY(TOPIC_QA303, LOG_QA303_ALLJOBDONE);
            };
        };
    };
}

