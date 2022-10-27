func void SQ406_SPAWNMONSTERS() {
    PRINTD("Potwory gotowe");
    WLD_INSERTNPC(0xc73a, "PART17_WITHOUTTRACE_DEADSWAMPSHARK");
    WLD_INSERTNPC(0xc3e7, "PART17_PATH_32");
    WLD_INSERTNPC(0xc4af, "PART17_PATH_19");
    WLD_INSERTNPC(0xc4b0, "PART17_PATH_19");
    WLD_INSERTNPC(0xc4b1, "PART17_PATH_19");
    WLD_INSERTNPC(0xc4b2, "PART17_PATH_19");
}

func void SQ406_DRINK_L() {
    B_STANDUP();
    AI_REMOVEWEAPON(SELF);
    AI_UNREADYSPELL(SELF);
    NPC_REMOVEINVITEMS(SELF, 0x91f5, 1);
    AI_STOPLOOKAT(SELF);
    B_GIVEINVITEMS(OTHER, SELF, 0x91f5, 1);
    CREATEINVITEMS(SELF, 0x8cfd, 1);
    AI_USEITEMTOSTATE(SELF, 0x8cfd, 1);
    AI_WAIT(SELF, 0x40400000);
    AI_USEITEMTOSTATE(SELF, 0x8cfd, -(1));
}

func void SQ406_DRINK_M() {
    B_STANDUP();
    AI_REMOVEWEAPON(SELF);
    AI_UNREADYSPELL(SELF);
    NPC_REMOVEINVITEMS(SELF, 0x91f6, 1);
    AI_STOPLOOKAT(SELF);
    B_GIVEINVITEMS(OTHER, SELF, 0x91f6, 1);
    CREATEINVITEMS(SELF, 0x8cfe, 1);
    AI_USEITEMTOSTATE(SELF, 0x8cfe, 1);
    AI_WAIT(SELF, 0x40400000);
    AI_USEITEMTOSTATE(SELF, 0x8cfe, -(1));
}

func void SQ406_DRINK_H() {
    B_STANDUP();
    AI_REMOVEWEAPON(SELF);
    AI_UNREADYSPELL(SELF);
    NPC_REMOVEINVITEMS(SELF, 0x91f7, 1);
    AI_STOPLOOKAT(SELF);
    B_GIVEINVITEMS(OTHER, SELF, 0x91f7, 1);
    CREATEINVITEMS(SELF, 0x8cff, 1);
    AI_USEITEMTOSTATE(SELF, 0x8cff, 1);
    AI_WAIT(SELF, 0x40400000);
    AI_USEITEMTOSTATE(SELF, 0x8cff, -(1));
    if ((NPC_ISDEAD(SHADOWBEAST_PART17_01)) == (FALSE)) {
        B_REMOVENPC(0xc665);
    };
}

func void SQ406_GETTER_DRINKPOTION() {
    SQ406_USEDPOTIONS = (SQ406_USEDPOTIONS) + (1);
    if ((SQ406_GETTER_POTION) == (1)) {
        SQ406_DRINK_L();
    };
    if ((SQ406_GETTER_POTION) == (2)) {
        SQ406_DRINK_M();
    };
    if ((SQ406_GETTER_POTION) == (3)) {
        SQ406_DRINK_H();
    };
}

func void SQ406_DAN_DRINKPOTION() {
    SQ406_USEDPOTIONS = (SQ406_USEDPOTIONS) + (1);
    if ((SQ406_DAN_POTION) == (1)) {
        SQ406_DRINK_L();
    };
    if ((SQ406_DAN_POTION) == (2)) {
        SQ406_DRINK_M();
    };
    if ((SQ406_DAN_POTION) == (3)) {
        SQ406_DRINK_H();
    };
}

func void SQ406_GHOST_DRINKPOTION() {
    SQ406_USEDPOTIONS = (SQ406_USEDPOTIONS) + (1);
    if ((SQ406_GHOST_POTION) == (1)) {
        SQ406_DRINK_L();
    };
    if ((SQ406_GHOST_POTION) == (2)) {
        SQ406_DRINK_M();
    };
    if ((SQ406_GHOST_POTION) == (3)) {
        SQ406_DRINK_H();
    };
}

func void SQ406_GIVEPOTIONSFORDAN() {
    CREATEINVITEMS(SELF, 0x838e, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x838e, 1);
    CREATEINVITEMS(SELF, 0x8390, 1);
    B_GIVEINVITEMS(SELF, OTHER, 0x8390, 1);
}

func void SQ406_KILLDAN() {
    if (((SQ406_TESTERPOTIONH) == (3)) || ((SQ406_DAN_POTION) == (3))) {
        SQ406_RAZORDAN = 1;
        B_REMOVENPC(0xe5b0);
        WLD_INSERTNPC(0xc6d8, "PART17_CAVE_CAMPFIRE_01");
        WLD_INSERTITEM(0x8323, "PART17_CAVE_CAMPFIRE_01");
    };
}

func void SQ406_REFRESHHEADONLOAD() {
    if ((LOG_GETSTATUS(MIS_SQ406)) == (LOG_SUCCESS)) {
        if ((SQ406_GETTER_POTION) == (3)) {
            if (HLP_ISVALIDNPC(PIR_1313_GETTER)) {
                if (!(NPC_ISDEAD(PIR_1313_GETTER))) {
                    MDL_SETVISUALBODY(PIR_1313_GETTER, "KM_ARMOR_CHAIN_RAZOR", 1, 0, HUMHEADNOTHING, FACE_L_GETTER, 0, NO_ARMOR);
                    PRINTD("Event - G這wa");
                };
            };
        } else if ((SQ406_GHOST_POTION) == (3)) {
            if (HLP_ISVALIDNPC(PIR_6322_GHOST)) {
                if (!(NPC_ISDEAD(PIR_6322_GHOST))) {
                    MDL_SETVISUALBODY(PIR_6322_GHOST, "KM_ARMOR_PIRAT_RAZOR", 1, 0, HUMHEADNOTHING, FACE_N_GHOST, 0, NO_ARMOR);
                    PRINTD("Event - G這wa");
                };
            };
        } else if ((SQ406_DAN_POTION) == (3)) {
            if (HLP_ISVALIDNPC(PIR_1326_DAN)) {
                if (!(NPC_ISDEAD(PIR_1326_DAN))) {
                    MDL_SETVISUALBODY(PIR_1326_DAN, "KM_ARMOR_PIRAT_RAZOR", 1, 0, HUMHEADNOTHING, FACE_N_DAN, 0, NO_ARMOR);
                    PRINTD("Event - G這wa");
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ406)) == (LOG_RUNNING)) {
        if ((SQ406_NEARCAVE_CHANGERTN) >= (2)) {
            if ((((SQ406_GETTER_POTION) == (3)) || ((SQ406_GHOST_POTION) == (3))) || ((SQ406_DAN_POTION) == (3))) {
                SQ406_NEARCAVE_CHANGERTN = 1;
                PRINTD("StartUp - G這wa");
            };
        };
    };
}

