func void EVT_Q304_PLUNDER() {
    AI_WAIT(HERO, 1069547520);
    AI_FUNCTION(HERO, 91825);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
}

func void Q304_MOVERTRAP() {
    var int MARVIN_CURRENTLEAVESTRAP;
    var int MARVIN_CURRENTBRANCHESTRAP;
    MARVIN_CURRENTBRANCHESTRAP = NPC_HASITEMS(HERO, 37254);
    MARVIN_CURRENTLEAVESTRAP = NPC_HASITEMS(HERO, 37255);
    NPC_REMOVEINVITEMS(HERO, 37255, MARVIN_CURRENTLEAVESTRAP);
    WLD_SENDTRIGGER("KM_SWAMPCAVE_TRAP");
    NPC_REMOVEINVITEMS(HERO, 37254, MARVIN_CURRENTBRANCHESTRAP);
    WLD_SENDTRIGGER("MOVER_Q304_PLUNDER");
    Q304_FINALCUTSCENE = 1;
}

