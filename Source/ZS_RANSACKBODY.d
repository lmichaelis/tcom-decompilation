func void ZS_RANSACKBODY() {
    PERCEPTION_SET_NORMAL();
    AI_STANDUP(SELF);
    AI_GOTONPC(SELF, OTHER);
}

func int ZS_RANSACKBODY_LOOP() {
    return LOOP_END;
}

func void ZS_RANSACKBODY_END() {
    var int X;
    B_TURNTONPC(SELF, OTHER);
    AI_PLAYANI(SELF, T_PLUNDER);
    if ((NPC_HASITEMS(OTHER, 34203)) > (0)) {
        if ((OTHER.ID) != (0)) {
            PRINTD(NAMEARMOR_KNIGHTARMOR);
            X = NPC_HASITEMS(OTHER, 34203);
            CREATEINVITEMS(SELF, 34203, X);
        } else {
            PRINTD(NAMEARMOR_SAILOR);
        };
        B_SAY(SELF, OTHER, "$ITOOKYOURGOLD");
    };
    B_SAY(SELF, OTHER, "$SHITNOGOLD");
    NPC_PERCEIVEALL(SELF);
    if ((WLD_DETECTITEM(SELF, ITEM_KAT_NF)) || (WLD_DETECTITEM(SELF, ITEM_KAT_FF))) {
        if (HLP_ISVALIDITEM(ITEM)) {
            if ((NPC_GETDISTTOITEM(SELF, ITEM)) < (500)) {
                AI_TAKEITEM(SELF, ITEM);
                B_SAY(SELF, SELF, "$ITAKEYOURWEAPON");
                AI_EQUIPBESTMELEEWEAPON(SELF);
                AI_EQUIPBESTRANGEDWEAPON(SELF);
            };
        };
    };
    if ((SELF.ATTRIBUTE[0]) < ((SELF.ATTRIBUTE[1]) / (2))) {
        AI_STARTSTATE(SELF, 61579, 0, "");
        return;
    };
}

func void ZS_GETMEAT() {
    var int X;
    PERCEPTION_SET_MINIMAL();
    AI_STANDUP(SELF);
    AI_GOTONPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_PLAYANI(SELF, T_PLUNDER);
    X = NPC_HASITEMS(OTHER, 32299);
    CREATEINVITEMS(SELF, 32299, X);
    if ((SELF.ATTRIBUTE[0]) < ((SELF.ATTRIBUTE[1]) / (2))) {
        AI_STARTSTATE(SELF, 61579, 0, "");
        return;
    };
    NPC_REMOVEINVITEMS(OTHER, 32299, X);
}

