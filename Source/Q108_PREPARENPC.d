func void Q108_PREPARENPC() {
    NPC_EXCHANGEROUTINE(BAU_701_KURT, "Q108_MEETING");
    B_STARTOTHERROUTINE(NONE_1_JORN, "Q108_MEETING");
    NPC_REFRESH(NONE_1_JORN);
    TELEPORTNPCTOWP(51439, NONE_1_JORN.WP);
    AI_TELEPORTALWAYS(NONE_1_JORN, NONE_1_JORN.WP, TRUE);
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "Q108_PRAY");
    NPC_REFRESH(KDW_203_RIORDIAN);
    TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
}

func void Q108_MEETING_PREPARE_APPLY() {
    var int Q108_MEETING_PREPARE_COUNT;
    Q108_MEETING_PREPARE_COUNT = (Q108_MEETING_PREPARE_COUNT) + (1);
    if ((Q108_MEETING_PREPARE_COUNT) == (4)) {
        Q108_MEETING_PREPARE_COUNT = 0;
        CUTSCENE_START(92423);
    };
}

func void Q108_ENDKURTJORNTRIALOG() {
    NPC_EXCHANGEROUTINE(NONE_1_JORN, "MeetingWithKurt");
    BAU_701_KURT.AIVAR[15] = FALSE;
    NPC_EXCHANGEROUTINE(BAU_701_KURT, "KurtGoesToJorn");
    B_STARTOTHERROUTINE(BAU_706_LOKVAR, "Q108_WORK");
    NPC_REFRESH(BAU_706_LOKVAR);
    TELEPORTNPCTOWP(57563, BAU_706_LOKVAR.WP);
    B_STOPLOOKAT(BAU_701_KURT);
}

func int Q108_IGOTPLANTS(var C_NPC NPC) {
    if ((((NPC_HASITEMS(NPC, 37653)) >= (2)) && ((NPC_HASITEMS(NPC, 34280)) >= (5))) && ((NPC_HASITEMS(NPC, 37008)) >= (1))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void Q108_TELEPORTKURT() {
    B_STARTOTHERROUTINE(NONE_1_JORN, "SilbachPub2");
    NPC_REFRESH(NONE_1_JORN);
    TELEPORTNPCTOWP(51439, NONE_1_JORN.WP);
    B_STARTOTHERROUTINE(BAU_701_KURT, "Q108_LOKVARWAIT");
    NPC_REFRESH(BAU_701_KURT);
    TELEPORTNPCTOWP(57510, BAU_701_KURT.WP);
}

func void Q108_FISHINGWITHKURT_END() {
    FF_APPLYONCEEXT(62078, 75, 4);
}

func void Q108_FISHINGWITHKURT_END_APPLY() {
    var int Q108_FISHINGWITHKURT_END_COUNT;
    Q108_FISHINGWITHKURT_END_COUNT = (Q108_FISHINGWITHKURT_END_COUNT) + (1);
    if ((Q108_FISHINGWITHKURT_END_COUNT) == (4)) {
        WLD_SENDUNTRIGGER("Q108_FISHING_01");
        WLD_SENDUNTRIGGER("Q108_FISHING_02");
        WLD_SENDUNTRIGGER("Q108_FISHING_03");
        WLD_SENDUNTRIGGER("Q108_FISHING_04");
        WLD_SENDUNTRIGGER("Q108_FISHING_05");
        WLD_SENDUNTRIGGER("Q108_FISHING_06");
        WLD_SENDUNTRIGGER("Q108_FISHING_07");
        WLD_SENDUNTRIGGER("Q108_FISHING_08");
        WLD_SENDUNTRIGGER("Q108_FISHING_09");
        WLD_SENDUNTRIGGER("Q108_FISHING_10");
        WLD_SENDUNTRIGGER("Q108_FISHING_11");
        DIACAM_ENABLE();
        NPC_EXCHANGEROUTINE(BAU_701_KURT, START);
        NPC_REFRESH(BAU_701_KURT);
        if ((Q108_RIORDIANWANTSTOMEETUP) == (TRUE)) {
            B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "SQ121_WAIT");
            NPC_REFRESH(KDW_203_RIORDIAN);
            TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
        } else {
            B_STARTOTHERROUTINE(KDW_203_RIORDIAN, START);
            NPC_REFRESH(KDW_203_RIORDIAN);
            TELEPORTNPCTOWP(56616, KDW_203_RIORDIAN.WP);
            B_STARTOTHERROUTINE(BAU_706_LOKVAR, START);
            NPC_REFRESH(BAU_706_LOKVAR);
            TELEPORTNPCTOWP(57563, BAU_706_LOKVAR.WP);
        };
    };
}

