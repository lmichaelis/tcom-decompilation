func void SQ121_RIORDIANTEACHING() {
    HERO.AIVAR[4] = TRUE;
    FF_APPLYONCEEXT(0xf281, 75, 4);
}

func void SQ121_RIORDIANTEACHING_APPLY() {
    SQ121_RIORDIANTEACHING_COUNT = (SQ121_RIORDIANTEACHING_COUNT) + (1);
    if ((SQ121_RIORDIANTEACHING_COUNT) == (4)) {
        CUTSCENE_START(0x16ac3);
        SQ121_RIORDIANTEACHING_COUNT = 0;
    };
}

var int SQ121_RIORDIANTEACHING_APPLY.SQ121_RIORDIANTEACHING_COUNT = 0;
func void SQ121_STARTQUEST() {
    if ((LOG_GETSTATUS(MIS_SQ121)) == (0)) {
        LOG_CREATETOPIC(TOPIC_SQ121, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_SQ121), TOPIC_SQ121, LOG_RUNNING);
    };
    AI_LOGENTRY(TOPIC_SQ121, LOG_SQ121_START);
}

func void SQ121_RIORDIANTEACHINGCUTSCENE_END_APPLY() {
    SQ121_RIORDIANTEACHING_COUNT_END = (SQ121_RIORDIANTEACHING_COUNT_END) + (1);
    if ((SQ121_RIORDIANTEACHING_COUNT_END) == (4)) {
        CHANGETIMESPEED(0x898);
        SQ121_HELPINGRIORDIAN = TRUE;
        KDW_203_RIORDIAN.AIVAR[92] = FALSE;
        WLD_SENDUNTRIGGER("SQ121_WAITFORNIGHT_01");
        WLD_SENDUNTRIGGER("SQ121_WAITFORNIGHT_02");
        WLD_SENDUNTRIGGER("SQ121_WAITFORNIGHT_03");
        CREATEINVITEMS(KDW_203_RIORDIAN, 0x8787, 1);
        B_GIVEINVITEMS(KDW_203_RIORDIAN, HERO, 0x8787, 1);
        CREATEINVITEMS(KDW_203_RIORDIAN, 0x9342, 1);
        B_GIVEINVITEMS(KDW_203_RIORDIAN, HERO, 0x9342, 1);
        AI_LOGENTRY(TOPIC_SQ121, LOG_SQ121_RIORDIAN_SLEEPLOKVAR);
        B_STARTOTHERROUTINE(KDW_203_RIORDIAN, "SQ121_LOKVARHUT");
        NPC_REFRESH(KDW_203_RIORDIAN);
        B_STARTOTHERROUTINE(BAU_706_LOKVAR, "SQ121_SLEEP");
        NPC_REFRESH(BAU_706_LOKVAR);
        TELEPORTNPCTOWP(0xe0db, BAU_706_LOKVAR.WP);
        HERO.AIVAR[4] = FALSE;
        SQ121_RIORDIANTEACHING_COUNT_END = 0;
    };
}

var int SQ121_RIORDIANTEACHINGCUTSCENE_END_APPLY.SQ121_RIORDIANTEACHING_COUNT_END = 0;
func void SQ121_DISTANCEWARNING_TELEPORT() {
    SQ121_DISTANCEWARNING = 0;
    NPC_REFRESH(KDW_203_RIORDIAN);
    AI_TELEPORT(HERO, KDW_203_RIORDIAN.WP);
    FADESCREENFROMBLACK(1);
}

func void SQ121_LOKVARTIMER() {
    PRINTD("Timer dla Lokvara");
    FF_APPLYONCEEXT(0xf288, 1000, 15);
}

func void SQ121_LOKVARTIMER_APPLY() {
    SQ121_LOKVARTIMER_COUNT = (SQ121_LOKVARTIMER_COUNT) + (1);
    if ((SQ121_LOKVARTIMER_COUNT) == (15)) {
        SQ121_LOKVARSLEEPINGTIME = 2;
        SQ121_CHANGELOKVARRTN = 0;
        B_STARTOTHERROUTINE(BAU_706_LOKVAR, "SQ121_WAKEUP");
        NPC_REFRESH(BAU_706_LOKVAR);
    };
}

var int SQ121_LOKVARTIMER_APPLY.SQ121_LOKVARTIMER_COUNT = 0;
func void SQ121_RESUMESCALETIME() {
    SQ121_WORKTOTHEMORNING = TRUE;
    if ((SQ121_STOPTIME) == (TRUE)) {
        SQ121_STOPTIME = FALSE;
        SETHOLDTIME(FALSE);
        CHANGETIMESPEED(0x898);
    };
}

func void SQ121_STOPSCALETIME() {
    CHANGETIMESPEED(100);
    SETHOLDTIME(FALSE);
}

