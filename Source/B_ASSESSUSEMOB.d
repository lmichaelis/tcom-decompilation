func void B_ASSESSUSEMOB() {
    var string DETMOB;
    if (!(NPC_ISPLAYER(OTHER))) {
        return;
    };
    if ((WLD_GETPLAYERPORTALGUILD()) >= (GIL_NONE)) {
        if ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_INDOOR_HEIGHT)) {
            return;
        };
    };
    if ((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_FRIENDLY)) {
        if (NPC_ISDETECTEDMOBOWNEDBYNPC(OTHER, SELF)) {
        } else {
            return;
        };
    };
    if (!(C_ISUSEDMOBMYPOSSESSION(SELF, OTHER))) {
        return;
    };
    if (!(NPC_CANSEENPC(SELF, OTHER))) {
        if ((NPC_ISINPLAYERSROOM(SELF)) && ((NPC_ISINSTATE(SELF, 61582)) || (NPC_ISINSTATE(SELF, 61569)))) {
        } else {
            return;
        };
    };
    DETMOB = NPC_GETDETECTEDMOB(OTHER);
    if (((HLP_STRCMP(DETMOB, "CHESTBIG")) == (FALSE)) && ((HLP_STRCMP(DETMOB, "CHESTSMALL")) == (FALSE))) {
        return;
    };
    if (!(C_WANTTOATTACKTHIEF(SELF, OTHER))) {
        if (C_NPCISGATEGUARD(SELF)) {
            B_MEMORIZEPLAYERCRIME(SELF, OTHER, CRIME_THEFT);
        };
        return;
    };
    B_ATTACK(SELF, OTHER, AR_USEMOB, 0);
}

