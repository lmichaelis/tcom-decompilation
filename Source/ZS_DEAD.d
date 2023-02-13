func void ZS_DEAD() {
    var int NDOCID;
    SELF.AIVAR[10] = FALSE;
    SELF.AIVAR[15] = FALSE;
    B_STOPLOOKAT(SELF);
    AI_STOPPOINTAT(SELF);
    if (NPC_ISPLAYER(SELF)) {
        TELEMETRY_PLAYERDEADEVENT(OTHER);
    };
    if (NPC_ISPLAYER(OTHER)) {
        TELEMETRY_KILLNPCEVENT(SELF);
    };
    if ((NPC_ISPLAYER(OTHER)) && ((OTHER.GUILD) > (GIL_SEPERATOR_HUM))) {
        if ((SELF.AIVAR[43]) == (OTHER.AIVAR[43])) {
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_29);
        };
    };
    if (NPC_ISPLAYER(OTHER)) {
        if (((((((SELF.AIVAR[43]) == (ID_TROLL)) || ((SELF.AIVAR[43]) == (ID_TROLL_BLACK))) || ((SELF.AIVAR[43]) == (ID_WANTEDPOSTER_TROLL))) || ((SELF.AIVAR[43]) == (ID_SWAMPTROLL))) || ((SELF.AIVAR[43]) == (ID_CAVETROLL))) || ((SELF.AIVAR[43]) == (ID_TROLL_CURSED))) {
            if (NPC_WASINSTATE(SELF, 43867)) {
                GAMESERVICES_UNLOCKACHIEVEMENT(ACH_31);
            };
        };
    };
    if (((NPC_ISPLAYER(OTHER)) || ((OTHER.AIVAR[15]) == (TRUE))) && ((SELF.AIVAR[16]) == (FALSE))) {
        B_GIVEPLAYERXP((SELF.LEVEL) * (XP_PER_VICTORY));
        SELF.AIVAR[16] = TRUE;
    };
    if ((SELF.FLAGS) & (NPC_FLAG_IMPORTANT)) {
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 1);
        DOC_SETPAGE(NDOCID, 0, LETTERSTGA, 0);
        DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
        DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
        DOC_SETFONT(NDOCID, 0, FONT_BOOK);
        DOC_PRINTLINES(NDOCID, 0, "With this character's death, the thread of prophecy is severed. Restore a saved game to restore the weave of fate, or persist in the doomed world you have created.");
        DOC_SHOW(NDOCID);
    };
    if ((((SELF.AIVAR[43]) == (ID_SWAMPDRONE)) || ((SELF.AIVAR[43]) == (ID_WANTEDPOSTER_GIANTRAT))) || ((SELF.AIVAR[43]) == (ID_WORM_MINE))) {
        if ((NPC_GETDISTTONPC(SELF, OTHER)) < (300)) {
            if (((SELF.AIVAR[43]) == (ID_WANTEDPOSTER_GIANTRAT)) || ((SELF.AIVAR[43]) == (ID_WORM_MINE))) {
                WLD_PLAYEFFECT("FX_MINECRAWLER_EXPLODE", SELF, SELF, 0, 0, 0, FALSE);
                SND_PLAY3D(SELF, "CRAWLER_POISON_EXPLODE");
            };
            if ((OTHER.FLAGS) & (NPC_FLAG_IMPORTANT)) {
                if ((OTHER.ATTRIBUTE[0]) > (50)) {
                    OTHER.ATTRIBUTE[0] -= 50;
                } else {
                    OTHER.ATTRIBUTE[0] = 1;
                };
            } else {
                OTHER.ATTRIBUTE[0] -= 50;
            };
        };
    };
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(SKELETON_VZ_BOSS))) {
        MDL_SETVISUALBODY(SELF, "GSkel_Body_Dead", DEFAULT, DEFAULT, "", DEFAULT, DEFAULT, -(1));
    };
    B_GIVETRADEINV(SELF);
    B_GIVEDEATHINV(SELF);
    B_CLEARRUNEINV(SELF);
    B_DELETEPETZCRIME(SELF);
    SELF.AIVAR[1] = CRIME_NONE;
    AI_UNEQUIPWEAPONS(SELF);
    B_CLEARFAKEITEMS(SELF);
    SELF.AIVAR[19] = FALSE;
}

func int ZS_DEAD_LOOP() {
    if ((SELF.AIVAR[19]) == (FALSE)) {
        SELF.AIVAR[19] = TRUE;
    };
    return LOOP_CONTINUE;
}

