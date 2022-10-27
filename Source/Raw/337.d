func void B_ASSESSTHEFT() {
    if (!(NPC_ISPLAYER(OTHER))) {
        return;
    };
    if (((WLD_GETPLAYERPORTALGUILD()) >= (GIL_NONE)) && ((NPC_GETHEIGHTTONPC(SELF, OTHER)) > (PERC_DIST_INDOOR_HEIGHT))) {
        return;
    };
    if (((((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) == (ATT_FRIENDLY)) && ((SELF.GUILD) != (GIL_MIL))) && ((SELF.GUILD) != (GIL_SLD))) && ((SELF.GUILD) != (GIL_VLK))) {
        if ((HLP_ISVALIDITEM(ITEM)) && (NPC_OWNEDBYNPC(ITEM, SELF))) {
        } else {
            return;
        };
    };
    if (!(C_ISTAKENITEMMYPOSSESSION(SELF, OTHER, ITEM))) {
        return;
    };
    if (!(NPC_CANSEENPC(SELF, OTHER))) {
        if ((NPC_ISINPLAYERSROOM(SELF)) && ((NPC_ISINSTATE(SELF, 0xf08e)) || (NPC_ISINSTATE(SELF, 0xf081)))) {
        } else {
            return;
        };
    };
    if (!(C_WANTTOATTACKTHIEF(SELF, OTHER))) {
        if (C_NPCISGATEGUARD(SELF)) {
            B_MEMORIZEPLAYERCRIME(SELF, OTHER, CRIME_THEFT);
        };
        return;
    };
    B_ATTACK(SELF, OTHER, AR_THEFT, 0);
}

