func void Q506_COUNTBARRELS() {
    NPC_REMOVEINVITEMS(HERO, 37622, 1);
    Q506_BARRELSREADY = (Q506_BARRELSREADY) + (1);
    if ((Q506_BARRELSREADY) == (2)) {
        B_LOGENTRY(TOPIC_Q506, LOG_Q506_BARREL_DONE);
    };
}

func void EVT_Q506_BARRELSPOT_01() {
    MOB_CHANGEFOCUSNAME("Q506_BARRELSPOT_01", "MOBNAME_NOTHING");
    CHANGEVOBCOLLISION("Q506_BARREL_01", FALSE, FALSE, FALSE, TRUE);
    WLD_SENDTRIGGER("Q506_BARREL_01");
    WLD_SENDTRIGGER("Q506_MOVER_BARRELSPOT_01");
    AI_WAIT(HERO, 1067030938);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_LOGENTRY(TOPIC_Q506, LOG_Q506_BARREL_LADDER);
    Q506_COUNTBARRELS();
}

func void EVT_Q506_BARRELSPOT_02() {
    MOB_CHANGEFOCUSNAME("Q506_BARRELSPOT_02", "MOBNAME_NOTHING");
    CHANGEVOBCOLLISION("Q506_BARREL_02", FALSE, FALSE, FALSE, TRUE);
    WLD_SENDTRIGGER("Q506_BARREL_02");
    WLD_SENDTRIGGER("Q506_MOVER_BARRELSPOT_02");
    AI_WAIT(HERO, 1067030938);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_LOGENTRY(TOPIC_Q506, LOG_Q506_BARREL_SECOND);
    Q506_COUNTBARRELS();
}

