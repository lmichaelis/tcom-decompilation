instance QA401_DOORCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16a7a);
}

func void QA401_DOORCUTSCENE_START() {
    MUSIC_OVERRIDETRACK(0x55be);
    WLD_SENDTRIGGER("QA401_DOOR_01");
    TELEPORTNPCTOWP(0x71b, "PART1_QA401_CUTSCENE_HERO");
    TELEPORTNPCTOWP(0xcb0a, SLD_1000_ADELARD.WP);
    TELEPORTNPCTOWP(0xe176, SLD_5002_SUNDER.WP);
    TELEPORTNPCTOWP(0xcb1c, SLD_1009_CARAMON.WP);
    TELEPORTNPCTOWP(0xda46, SLD_13548_ARAXOS.WP);
    TELEPORTNPCTOWP(0xd950, SLD_13549_ARAXOS.WP);
    TELEPORTNPCTOWP(0xd8ef, BDT_13558_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd8f2, BDT_13559_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd8f5, BDT_13560_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd8f8, BDT_13561_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd8fb, BDT_13562_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd8fe, BDT_13563_SMUGGLER.WP);
    TELEPORTNPCTOWP(0xd910, BDT_13569_SMUGGLER.WP);
    B_TURNTONPC(HERO, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_1000_ADELARD, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_5002_SUNDER, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_1009_CARAMON, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_13548_ARAXOS, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_13549_ARAXOS, BDT_13559_SMUGGLER);
    CREATEINVITEMS(BDT_13558_SMUGGLER, 0x8592, 1);
    AI_USEITEM(BDT_13558_SMUGGLER, 0x8592);
    AI_WAIT(BDT_13562_SMUGGLER, 0x3e4ccccd);
    CREATEINVITEMS(BDT_13562_SMUGGLER, 0x8e0b, 1);
    AI_USEITEM(BDT_13562_SMUGGLER, 0x8e0b);
    AI_WAIT(BDT_13559_SMUGGLER, 0x40000000);
    B_SAY(BDT_13559_SMUGGLER, HERO, "$Smalltalk15");
    AI_WAIT(BDT_13559_SMUGGLER, 0x3f800000);
    AI_REMOVEWEAPON(HERO);
    AI_UNREADYSPELL(HERO);
    AI_WAITTILLEND(HERO, BDT_13559_SMUGGLER);
    AI_FUNCTION(HERO, 0x16a7b);
    AI_USEMOB(HERO, "KICKOBJECT", 1);
    AI_WAITTILLEND(BDT_13558_SMUGGLER, HERO);
    AI_WAITTILLEND(BDT_13559_SMUGGLER, HERO);
    AI_WAITTILLEND(BDT_13560_SMUGGLER, HERO);
    AI_WAITTILLEND(BDT_13561_SMUGGLER, HERO);
    AI_WAITTILLEND(BDT_13562_SMUGGLER, HERO);
    AI_WAITTILLEND(BDT_13563_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13558_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13559_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13560_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13561_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13562_SMUGGLER, HERO);
    AI_TURNTONPC(BDT_13563_SMUGGLER, HERO);
    AI_STARTSTATE(BDT_13558_SMUGGLER, 0xf08e, 1, "");
    AI_STARTSTATE(BDT_13559_SMUGGLER, 0xf08e, 1, "");
    AI_STARTSTATE(BDT_13560_SMUGGLER, 0xf08e, 1, "");
    AI_STARTSTATE(BDT_13561_SMUGGLER, 0xf08e, 1, "");
    AI_STARTSTATE(BDT_13562_SMUGGLER, 0xf08e, 1, "");
    AI_STARTSTATE(BDT_13563_SMUGGLER, 0xf08e, 1, "");
    AI_STARTFACEANI(BDT_13558_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13559_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13560_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13561_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13562_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13563_SMUGGLER, T_HURT, 1, -(1));
}

func void QA401_DOORCUTSCENE_KICKDOOR() {
    FF_APPLYONCEEXT(0x16a7c, 1000, 6);
}

func void QA401_DOORCUTSCENE_KICKDOOR_APPLY() {
    QA401_DOORCUTSCENE_KICKDOOR_COUNT = (QA401_DOORCUTSCENE_KICKDOOR_COUNT) + (1);
    if ((QA401_DOORCUTSCENE_KICKDOOR_COUNT) == (2)) {
        WLD_SENDTRIGGER("QA401_DOOR_02");
        WLD_SENDUNTRIGGER("QA401_DOOR_01");
        AI_PLAYANI(HERO, "R_STRETCH_RANDOM_01");
        AI_STARTFACEANI(HERO, S_SMUG, 1, -(1));
        AI_STARTFACEANI(SLD_1000_ADELARD, S_SMUG, 1, -(1));
        AI_STARTFACEANI(SLD_1009_CARAMON, S_SMUG, 1, -(1));
        AI_STARTFACEANI(SLD_5002_SUNDER, S_SMUG, 1, -(1));
        AI_STARTFACEANI(SLD_13548_ARAXOS, S_SMUG, 1, -(1));
        AI_STARTFACEANI(SLD_13549_ARAXOS, S_SMUG, 1, -(1));
    };
    if ((QA401_DOORCUTSCENE_KICKDOOR_COUNT) == (4)) {
        WLD_SENDTRIGGER("QA401_DOOR_03");
        WLD_SENDUNTRIGGER("QA401_DOOR_02");
    };
    if ((QA401_DOORCUTSCENE_KICKDOOR_COUNT) == (5)) {
        AI_STARTFACEANI(BDT_13558_SMUGGLER, S_ANGRY, 1, -(1));
        AI_STARTFACEANI(BDT_13559_SMUGGLER, S_ANGRY, 1, -(1));
        AI_STARTFACEANI(BDT_13560_SMUGGLER, S_ANGRY, 1, -(1));
        AI_STARTFACEANI(BDT_13561_SMUGGLER, S_ANGRY, 1, -(1));
        AI_STARTFACEANI(BDT_13562_SMUGGLER, S_ANGRY, 1, -(1));
        AI_STARTFACEANI(BDT_13563_SMUGGLER, S_ANGRY, 1, -(1));
        AI_DRAWWEAPON(BDT_13558_SMUGGLER);
        AI_DRAWWEAPON(BDT_13559_SMUGGLER);
        AI_DRAWWEAPON(BDT_13560_SMUGGLER);
        AI_DRAWWEAPON(BDT_13561_SMUGGLER);
        AI_DRAWWEAPON(BDT_13562_SMUGGLER);
        AI_DRAWWEAPON(BDT_13563_SMUGGLER);
    };
    if ((QA401_DOORCUTSCENE_KICKDOOR_COUNT) == (6)) {
        FF_APPLYONCEEXT(0xf5bb, 75, 4);
    };
}

var int QA401_DOORCUTSCENE_KICKDOOR_APPLY.QA401_DOORCUTSCENE_KICKDOOR_COUNT = 0;
