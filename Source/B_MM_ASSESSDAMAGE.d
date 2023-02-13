func void B_MM_ASSESSDAMAGE() {
    SELF.AIVAR[29] = PRIO_ATTACK;
    if (C_PREDATORFOUNDPREY(OTHER, SELF)) {
        NPC_CLEARAIQUEUE(SELF);
        NPC_SETTARGET(SELF, OTHER);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 91680, 0, "");
        return;
    };
    if (NPC_ISINSTATE(SELF, 91674)) {
        if ((NPC_ISPLAYER(OTHER)) && ((SELF.AIVAR[15]) == (TRUE))) {
            return;
        };
        if (((SELF.AIVAR[43]) == (ID_SKELETON)) && ((OTHER.AIVAR[43]) == (ID_SKELETON_MAGE))) {
            return;
        };
        if ((HLP_GETINSTANCEID(OTHER)) != (SELF.AIVAR[7])) {
            if ((SELF.AIVAR[22]) == (HLP_GETINSTANCEID(OTHER))) {
                NPC_SETTARGET(SELF, OTHER);
            } else {
                SELF.AIVAR[22] = HLP_GETINSTANCEID(OTHER);
            };
        };
        return;
    };
    NPC_CLEARAIQUEUE(SELF);
    NPC_SETTARGET(SELF, OTHER);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 91674, 0, "");
}

