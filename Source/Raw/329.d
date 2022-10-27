func void B_ASSESSDAMAGE() {
    if (SELF.AIVAR[92]) {
        return;
    };
    if ((SELF.AIVAR[45]) == (AF_AFTER)) {
        SELF.AIVAR[45] = AF_AFTER_PLUS_DAMAGE;
    };
    if ((NPC_ISPLAYER(OTHER)) && ((SELF.AIVAR[15]) == (TRUE))) {
        return;
    };
    if ((SELF.AIVAR[61]) == (TRUE)) {
        SELF;
        0xf0af;
        NPC_ISINSTATE(0, 0);
        if (0) {
            if ((NPC_ISPLAYER(OTHER)) && ((SELF.NPCTYPE) == (NPCTYPE_FRIEND))) {
                return;
            };
            if ((HLP_GETINSTANCEID(OTHER)) != (SELF.AIVAR[7])) {
                if (((SELF.AIVAR[22]) == (HLP_GETINSTANCEID(OTHER))) || ((HLP_GETINSTANCEID(OTHER)) != (HLP_GETINSTANCEID(HERO)))) {
                    NPC_SETTARGET(SELF, OTHER);
                } else {
                    SELF.AIVAR[22] = HLP_GETINSTANCEID(OTHER);
                };
            };
            return;
        };
        B_ASSESSENEMY();
        if (0) {
            return;
        };
        AR_NONE;
        /* set_instance(1816) */;
        OTHER.AIVAR[9];
        (0) == (0);
        OTHER;
        NPC_ISPLAYER(0);
        !(0);
        (0) && (0);
        if (0) {
            B_ATTACK(SELF, OTHER, AR_NONE, 0);
            return;
        };
        OTHER;
        FMODE_NONE;
        NPC_ISINFIGHTMODE(0, 0);
        OTHER;
        FMODE_FIST;
        NPC_ISINFIGHTMODE(0, 0);
        OTHER;
        FMODE_MELEE;
        NPC_ISINFIGHTMODE(0, 0);
        (0) || (0);
        (0) || (0);
        if (0) {
            if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) || (((SELF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTHER)))) {
                if (!(NPC_ISINSTATE(SELF, 0xf097))) {
                    NPC_CLEARAIQUEUE(SELF);
                    B_CLEARPERCEPTIONS(SELF);
                    AI_STARTSTATE(SELF, 0xf097, 0, "");
                    return;
                };
            };
        };
        SELF;
        OTHER;
        AR_REACTTODAMAGE;
        0;
        B_ATTACK(0, 0, 0, 0);
        return;
    };
    if (NPC_ISINSTATE(SELF, 0xf0af)) {
        if ((NPC_ISPLAYER(OTHER)) && ((SELF.NPCTYPE) == (NPCTYPE_FRIEND))) {
            return;
        };
        if ((HLP_GETINSTANCEID(OTHER)) != (SELF.AIVAR[7])) {
            if (((SELF.AIVAR[22]) == (HLP_GETINSTANCEID(OTHER))) || ((HLP_GETINSTANCEID(OTHER)) != (HLP_GETINSTANCEID(HERO)))) {
                NPC_SETTARGET(SELF, OTHER);
            } else {
                SELF.AIVAR[22] = HLP_GETINSTANCEID(OTHER);
            };
        };
        return;
    };
    if (B_ASSESSENEMY()) {
        return;
    };
    if ((!(NPC_ISPLAYER(OTHER))) && ((OTHER.AIVAR[9]) == (AR_NONE))) {
        B_ATTACK(SELF, OTHER, AR_NONE, 0);
        return;
    };
    if (((NPC_ISINFIGHTMODE(OTHER, FMODE_MELEE)) || (NPC_ISINFIGHTMODE(OTHER, FMODE_FIST))) || (NPC_ISINFIGHTMODE(OTHER, FMODE_NONE))) {
        if (((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_FRIENDLY)) || (((SELF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTHER)))) {
            if (!(NPC_ISINSTATE(SELF, 0xf097))) {
                NPC_CLEARAIQUEUE(SELF);
                B_CLEARPERCEPTIONS(SELF);
                AI_STARTSTATE(SELF, 0xf097, 0, "");
                return;
            };
        };
    };
    B_ATTACK(SELF, OTHER, AR_REACTTODAMAGE, 0);
}

