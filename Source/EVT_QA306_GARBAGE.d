func void EVT_QA306_GARBAGE() {
    MOB_CHANGEFOCUSNAME("QA306_FIREPLACE", "MOBNAME_NOTHING");
    AI_WAIT(HERO, 1067030938);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    AI_FUNCTION(HERO, 91872);
}

func void QA306_GARBAGE_FOUNDPACKET() {
    QA306_FOUNDHEINSERPACKET = TRUE;
    QA306_SEARCHHEINSERJOINTS = 3;
    B_SAY(HERO, HERO, "$FOUNDTREASURE");
    CREATEINVITEMS(HERO, 37225, 1);
    B_LOGENTRY(TOPIC_QA306, LOG_QA306_FOUNDHEINSERPACKET);
}

