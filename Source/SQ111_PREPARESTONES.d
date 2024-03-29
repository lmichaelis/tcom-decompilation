func void SQ111_PREPARESTONES() {
    CHANGEVOBCOLLISION("SQ111_ROCK_01", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("SQ111_ROCK_02", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("FP_PART12_SQ111_ROCK_01", FALSE, FALSE, FALSE, FALSE);
    CHANGEVOBCOLLISION("FP_PART12_SQ111_ROCK_02", FALSE, FALSE, FALSE, FALSE);
    WLD_SENDTRIGGER("SQ111_ROCK_01");
    WLD_SENDTRIGGER("SQ111_ROCK_02");
    WLD_INSERTITEM(37037, "FP_PART12_SQ111_ROCK_01");
    WLD_INSERTITEM(37038, "FP_PART12_SQ111_ROCK_02");
}

func void SQ111_STARTMILL() {
    WLD_SENDTRIGGER("SQ111_MILLWHEEL");
    WLD_SENDTRIGGER("SQ111_SOUND");
    B_LOGENTRY(TOPIC_SQ111, LOG_SQ111_MILLREADY);
    B_GIVEPLAYERXP(XP_SQ111_MILLREADY);
    NPC_REMOVEINVITEM(HERO, 37038);
}

