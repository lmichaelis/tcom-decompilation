func void G_PICKLOCK(var int BSUCCESS, var int BBROKENOPEN) {
    SLF = HLP_GETNPC(0x717);
    if ((LASTMOB) != (SLF.FOCUS_VOB)) {
        LASTMOB = SLF.FOCUS_VOB;
        MOB = _^(SLF.FOCUS_VOB);
        CURRCHARCOUNT = ((MOB.BITFIELD) & (OCMOBLOCKABLE_BITFIELD_PICKLOCKNR)) >> (2);
        PARTPICKLOCK = (CURRCHARCOUNT) > (0);
    };
    if (BSUCCESS) {
        if (BBROKENOPEN) {
            if (PARTPICKLOCK) {
                GAMESERVICES_UNLOCKACHIEVEMENT(ACH_34);
            };
            SND_PLAY3D(SELF, "PICKLOCK_UNLOCK");
            PRINT(PRINT_PICKLOCK_UNLOCK);
        } else {
            SND_PLAY3D(SELF, "PICKLOCK_SUCCESS");
            PRINT(PRINT_PICKLOCK_SUCCESS);
        } else {
            /* set_instance(0) */;
        };
    };
    if (BBROKENOPEN) {
        SND_PLAY3D(SELF, "PICKLOCK_BROKEN");
        PRINT(PRINT_PICKLOCK_BROKEN);
        RND = HLP_RANDOM(100);
        if ((RND) <= (25)) {
            NPC_SENDPASSIVEPERC(HERO, PERC_ASSESSQUIETSOUND, HERO, HERO);
        };
    };
    SND_PLAY3D(SELF, "PICKLOCK_FAILURE");
    PRINT(PRINT_PICKLOCK_FAILURE);
}

instance G_PICKLOCK.SLF(OCNPC)
var int G_PICKLOCK.LASTMOB = 0;
var int G_PICKLOCK.PARTPICKLOCK = 0;
instance G_PICKLOCK.MOB(OCMOBLOCKABLE)
var int G_PICKLOCK.CURRCHARCOUNT = 0;
var int G_PICKLOCK.RND = 0;
