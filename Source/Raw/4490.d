func void EVT_SQ510_WASH() {
    if ((SQ510_WASH_SCRIPT_LOGENTRY) == (FALSE)) {
        SQ510_WASH_SCRIPT_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_SQ510, LOG_SQ510_DRINK_AFTER);
    };
    BUFF_APPLYORREFRESH(HERO, 0x7ebb);
}

var int EVT_SQ510_WASH.SQ510_WASH_SCRIPT_LOGENTRY = 0;
func void EVT_SQ510_FINISH() {
    HERO.AIVAR[4] = TRUE;
    AI_PLAYANI(HERO, "T_FALLDOWN_LONG");
    FADESCREENTOBLACKF(3, 0x167e7, 1000);
}

func void SQ510_FINISH_FADESCREEN() {
    SQ510_FINISHSTAGE = TRUE;
    SETHOLDTIME(FALSE);
    WLD_SETTIME(15, 0);
    AI_TELEPORT(HERO, "PART8_MONASTERY_Q601_HERO");
    AI_PLAYANI(HERO, "T_FALLDOWN_STANDUP");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
    MUSIC_DISABLEOVERRIDE();
}

func void EVT_SQ510_GIANTBOOK() {
    if ((SQ510_GIANTBOOK_MOVER) == (FALSE)) {
        SQ510_GIANTBOOK_MOVER = TRUE;
        WLD_SENDTRIGGER("SQ510_GIANTBOOK");
    };
    HERO.AIVAR[4] = FALSE;
}

var int EVT_SQ510_GIANTBOOK.SQ510_GIANTBOOK_MOVER = 0;