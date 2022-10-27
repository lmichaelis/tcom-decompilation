func void EVT_TELEPORT_ALCHEMY2LIBRARY() {
    WLD_PLAYEFFECT("spellFX_Teleport_RING_VOLFZACKE", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_TELEPORT_CAST");
    NPC_CLEARAIQUEUE(HERO);
    AI_TELEPORT(HERO, "VOLFZACKE_TELEPORT_LIBRARY");
    if ((Q514_TELEPORT_FIRSTTIME_ALCHEMY2LIBRARY) == (FALSE)) {
        Q514_TELEPORT_FIRSTTIME_ALCHEMY2LIBRARY = TRUE;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_TELEPORT_ALCHEMY2LIBRARY);
    };
}

var int EVT_TELEPORT_ALCHEMY2LIBRARY.Q514_TELEPORT_FIRSTTIME_ALCHEMY2LIBRARY = 0;
func void EVT_TELEPORT_LIBRARY2ALCHEMY() {
    WLD_PLAYEFFECT("spellFX_Teleport_RING_VOLFZACKE", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_TELEPORT_CAST");
    NPC_CLEARAIQUEUE(HERO);
    AI_TELEPORT(HERO, "VOLFZACKE_TELEPORT_ALCHEMY");
    if ((Q514_TELEPORT_FIRSTTIME_LIBRARY2ALCHEMY) == (FALSE)) {
        Q514_TELEPORT_FIRSTTIME_LIBRARY2ALCHEMY = TRUE;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_TELEPORT_LIBRARY2ALCHEMY);
    };
}

var int EVT_TELEPORT_LIBRARY2ALCHEMY.Q514_TELEPORT_FIRSTTIME_LIBRARY2ALCHEMY = 0;
func void EVT_TELEPORT_LIBRARY2SWORD() {
    WLD_PLAYEFFECT("spellFX_Teleport_RING_VOLFZACKE_BROKEN", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_FEAR_CAST");
    NPC_CLEARAIQUEUE(HERO);
    if ((Q514_TELEPORT_FIRSTTIME_LIBRARY2SWORD) == (FALSE)) {
        Q514_TELEPORT_FIRSTTIME_LIBRARY2SWORD = TRUE;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_TELEPORT_LIBRARY2SWORD);
    };
}

var int EVT_TELEPORT_LIBRARY2SWORD.Q514_TELEPORT_FIRSTTIME_LIBRARY2SWORD = 0;
func void EVT_TELEPORT_MAGE2ALCHEMY() {
    WLD_PLAYEFFECT("spellFX_Teleport_RING_VOLFZACKE", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_TELEPORT_CAST");
    NPC_CLEARAIQUEUE(HERO);
    AI_TELEPORT(HERO, "VOLFZACKE_TELEPORT_LIBRARY2");
}
