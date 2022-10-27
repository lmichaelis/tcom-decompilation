var int SMITH_SWORD1HREMEMBER = 0;
instance PC_MILITIA_SWORD_2H(C_INFO) {
    NPC = 0xc3ab;
    NR = 900;
    CONDITION = PC_MILITIA_SWORD_2H_CONDITION;
    INFORMATION = PC_MILITIA_SWORD_2H_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_MILITIA_SWORD_2H;
}

func int PC_MILITIA_SWORD_2H_CONDITION() {
    if (((PLAYER_MOBSI_PRODUCTION) == (MOBSI_SMITHWEAPON)) && ((SMITHWEAPON_MODE) == (0))) {
        if ((BECOMEAGUARD_MAKE2HSWORDMYSELF) == (TRUE)) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void SMITH_REMOVE1HMILITIASWORD() {
    if ((NPC_HASITEMS(HERO, 0x9a4a)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x9a4a, 1);
        SMITH_SWORD1HREMEMBER = 1;
    };
    if ((NPC_HASITEMS(HERO, 0x9a4b)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x9a4b, 1);
        SMITH_SWORD1HREMEMBER = 2;
    };
    if ((NPC_HASITEMS(HERO, 0x9a4c)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x9a4c, 1);
        SMITH_SWORD1HREMEMBER = 2;
    };
    if ((NPC_HASITEMS(HERO, 0x9a4d)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x9a4d, 1);
        SMITH_SWORD1HREMEMBER = 3;
    };
}

func void SMITH_GIVE2HMILITIASWORD() {
    if ((SMITH_SWORD1HREMEMBER) == (1)) {
        CREATEINVITEMS(HERO, 0x9a4e, 1);
    };
    if ((SMITH_SWORD1HREMEMBER) == (2)) {
        CREATEINVITEMS(HERO, 0x9a4f, 1);
    };
    if ((SMITH_SWORD1HREMEMBER) == (3)) {
        CREATEINVITEMS(HERO, 0x9a50, 1);
    };
}

func void PC_MILITIA_SWORD_2H_INFO() {
    if (((((NPC_HASITEMS(HERO, 0x9a4a)) >= (1)) || ((NPC_HASITEMS(HERO, 0x9a4b)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9a4c)) >= (1))) || ((NPC_HASITEMS(HERO, 0x9a4d)) >= (1))) {
        AI_FUNCTION(HERO, 0xbf13);
        AI_FUNCTION(HERO, 0xbf14);
        PRINT(PRINT_SMITHSUCCESS);
        BECOMEAGUARD_MAKE2HSWORDMYSELF = 2;
    };
    PRINT(PRINT_PRODITEMSMISSING);
    CREATEINVITEMS(HERO, 0x8587, 1);
    B_ENDPRODUCTIONDIALOG();
}
