func void ZS_RANSACKBODY() {
    PERCEPTION_SET_NORMAL();
    AI_STANDUP(SELF);
    AI_GOTONPC(SELF, OTHER);
}

func int ZS_RANSACKBODY_LOOP() {
    return LOOP_END;
}

func void ZS_RANSACKBODY_END() {
    B_TURNTONPC(SELF, OTHER);
    AI_PLAYANI(SELF, T_PLUNDER);
    if ((NPC_HASITEMS(OTHER, 0x859b)) > (0)) {
        if ((OTHER.ID) != (0)) {
            PRINTD(NAMEARMOR_KNIGHTARMOR);
            X = NPC_HASITEMS(OTHER, 0x859b);
            CREATEINVITEMS(SELF, 0x859b, X);
        } else {
            PRINTD(NAMEARMOR_SAILOR);
        } else {
            B_SAY(SELF, OTHER, "$ITOOKYOURGOLD");
        } else {
            /* set_instance(0) */;
        };
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
        AI_STARTSTATE(SELF, 0xf08b, 0, "");
        return;
    };
}

var int ZS_RANSACKBODY_END.X = 0;
func void ZS_GETMEAT() {
    PERCEPTION_SET_MINIMAL();
    AI_STANDUP(SELF);
    AI_GOTONPC(SELF, OTHER);
    AI_TURNTONPC(SELF, OTHER);
    AI_PLAYANI(SELF, T_PLUNDER);
    X = NPC_HASITEMS(OTHER, 0x7e2b);
    CREATEINVITEMS(SELF, 0x7e2b, X);
    if ((SELF.ATTRIBUTE[0]) < ((SELF.ATTRIBUTE[1]) / (2))) {
        AI_STARTSTATE(SELF, 0xf08b, 0, "");
        return;
    };
    NPC_REMOVEINVITEMS(OTHER, 0x7e2b, X);
}

var int ZS_GETMEAT.X = 0;
