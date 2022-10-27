func void ZS_REACTTOWEAPON() {
    PERCEPTION_SET_MINIMAL();
    NPC_PERCENABLE(SELF, PERC_ASSESSFIGHTSOUND, 0xa2a9);
    if (B_ASSESSENEMY()) {
        return;
    };
    AI_STANDUP(SELF);
    B_LOOKATNPC(SELF, OTHER);
    if (NPC_HASEQUIPPEDARMOR(SELF)) {
        ARMOR = NPC_GETEQUIPPEDARMOR(SELF);
        if ((((((((((((HLP_ISITEM(ARMOR, 0x8ae2)) || (HLP_ISITEM(ARMOR, 0x8ae3))) || (HLP_ISITEM(ARMOR, 0x8ae4))) || (HLP_ISITEM(ARMOR, 0x8ae5))) || (HLP_ISITEM(ARMOR, 0x8ae6))) || (HLP_ISITEM(ARMOR, 0x8ae7))) || (HLP_ISITEM(ARMOR, 0x8ae8))) || (HLP_ISITEM(ARMOR, 0x8ae9))) || (HLP_ISITEM(ARMOR, 0x8aea))) || (HLP_ISITEM(ARMOR, 0x8aeb))) || (HLP_ISITEM(ARMOR, 0x8aec))) || (HLP_ISITEM(ARMOR, 0x8afe))) {
            AI_STARTSTATE(SELF, 0xf08e, 1, "");
            return;
        };
        B_SELECTWEAPON(SELF, OTHER);
    };
    B_SELECTWEAPON(SELF, OTHER);
    B_TURNTONPC(SELF, OTHER);
    if ((((SELF.AIVAR[0]) == (FIGHT_WON)) && ((SELF.AIVAR[47]) != (AR_NONE))) && (NPC_ISPLAYER(OTHER))) {
        B_SAY(SELF, OTHER, "$LOOKINGFORTROUBLEAGAIN");
    };
    if ((PLAYER_DRAWWEAPONCOMMENT) == (FALSE)) {
        if (NPC_ISINFIGHTMODE(OTHER, FMODE_MAGIC)) {
            B_SAY(SELF, OTHER, "$STOPMAGIC");
        } else {
            B_SAY(SELF, OTHER, "$WEAPONDOWN");
        } else {
            PLAYER_DRAWWEAPONCOMMENT = TRUE;
        };
    };
    NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSWARN, SELF, OTHER);
    SELF.AIVAR[19] = FALSE;
    SELF.AIVAR[68] = 0;
}

instance ZS_REACTTOWEAPON.ARMOR(C_ITEM)
func int ZS_REACTTOWEAPON_LOOP() {
    if ((NPC_GETDISTTONPC(SELF, OTHER)) > (PERC_DIST_INTERMEDIAT)) {
        NPC_CLEARAIQUEUE(SELF);
        AI_REMOVEWEAPON(SELF);
        B_STOPLOOKAT(SELF);
        return LOOP_END;
    };
    if (NPC_ISINFIGHTMODE(OTHER, FMODE_NONE)) {
        NPC_CLEARAIQUEUE(SELF);
        B_SAY(SELF, OTHER, "$WISEMOVE");
        AI_REMOVEWEAPON(SELF);
        B_STOPLOOKAT(SELF);
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[68])) {
        if (!(NPC_CANSEENPC(SELF, OTHER))) {
            B_TURNTONPC(SELF, OTHER);
        };
        SELF.AIVAR[68] = (SELF.AIVAR[68]) + (1);
    };
    if (((SELF.AIVAR[19]) == (FALSE)) && ((NPC_GETSTATETIME(SELF)) > (5))) {
        if (NPC_ISINFIGHTMODE(OTHER, FMODE_MAGIC)) {
            B_SAY(SELF, OTHER, "$ISAIDSTOPMAGIC");
        } else {
            B_SAY(SELF, OTHER, "$ISAIDWEAPONDOWN");
        } else {
            SELF.AIVAR[19] = TRUE;
        };
    };
    if ((NPC_GETSTATETIME(SELF)) > (10)) {
        B_ATTACK(SELF, OTHER, AR_REACTTOWEAPON, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_REACTTOWEAPON_END() {
    B_STOPLOOKAT(SELF);
    AI_STARTSTATE(SELF, 0xf08e, 1, "");
}

