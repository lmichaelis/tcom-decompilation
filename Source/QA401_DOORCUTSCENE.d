instance QA401_DOORCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92794);
}

func void QA401_DOORCUTSCENE_START() {
    MUSIC_OVERRIDETRACK(21950);
    WLD_SENDTRIGGER("QA401_DOOR_01");
    TELEPORTNPCTOWP(1819, "PART1_QA401_CUTSCENE_HERO");
    TELEPORTNPCTOWP(51978, SLD_1000_ADELARD.WP);
    TELEPORTNPCTOWP(57718, SLD_5002_SUNDER.WP);
    TELEPORTNPCTOWP(51996, SLD_1009_CARAMON.WP);
    TELEPORTNPCTOWP(55878, SLD_13548_ARAXOS.WP);
    TELEPORTNPCTOWP(55632, SLD_13549_ARAXOS.WP);
    TELEPORTNPCTOWP(55535, BDT_13558_SMUGGLER.WP);
    TELEPORTNPCTOWP(55538, BDT_13559_SMUGGLER.WP);
    TELEPORTNPCTOWP(55541, BDT_13560_SMUGGLER.WP);
    TELEPORTNPCTOWP(55544, BDT_13561_SMUGGLER.WP);
    TELEPORTNPCTOWP(55547, BDT_13562_SMUGGLER.WP);
    TELEPORTNPCTOWP(55550, BDT_13563_SMUGGLER.WP);
    TELEPORTNPCTOWP(55568, BDT_13569_SMUGGLER.WP);
    B_TURNTONPC(HERO, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_1000_ADELARD, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_5002_SUNDER, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_1009_CARAMON, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_13548_ARAXOS, BDT_13559_SMUGGLER);
    B_TURNTONPC(SLD_13549_ARAXOS, BDT_13559_SMUGGLER);
    CREATEINVITEMS(BDT_13558_SMUGGLER, 34194, 1);
    AI_USEITEM(BDT_13558_SMUGGLER, 34194);
    AI_WAIT(BDT_13562_SMUGGLER, 1045220557);
    CREATEINVITEMS(BDT_13562_SMUGGLER, 36363, 1);
    AI_USEITEM(BDT_13562_SMUGGLER, 36363);
    AI_WAIT(BDT_13559_SMUGGLER, 1073741824);
    B_SAY(BDT_13559_SMUGGLER, HERO, "$Smalltalk15");
    AI_WAIT(BDT_13559_SMUGGLER, 1065353216);
    AI_REMOVEWEAPON(HERO);
    AI_UNREADYSPELL(HERO);
    AI_WAITTILLEND(HERO, BDT_13559_SMUGGLER);
    AI_FUNCTION(HERO, 92795);
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
    AI_STARTSTATE(BDT_13558_SMUGGLER, 61582, 1, "");
    AI_STARTSTATE(BDT_13559_SMUGGLER, 61582, 1, "");
    AI_STARTSTATE(BDT_13560_SMUGGLER, 61582, 1, "");
    AI_STARTSTATE(BDT_13561_SMUGGLER, 61582, 1, "");
    AI_STARTSTATE(BDT_13562_SMUGGLER, 61582, 1, "");
    AI_STARTSTATE(BDT_13563_SMUGGLER, 61582, 1, "");
    AI_STARTFACEANI(BDT_13558_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13559_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13560_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13561_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13562_SMUGGLER, T_HURT, 1, -(1));
    AI_STARTFACEANI(BDT_13563_SMUGGLER, T_HURT, 1, -(1));
}

func void QA401_DOORCUTSCENE_KICKDOOR() {
    FF_APPLYONCEEXT(92796, 1000, 6);
}

func void QA401_DOORCUTSCENE_KICKDOOR_APPLY() {
    var int QA401_DOORCUTSCENE_KICKDOOR_COUNT;
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
        FF_APPLYONCEEXT(62907, 75, 4);
    };
}
