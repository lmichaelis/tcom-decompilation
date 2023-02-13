func int C_ISTAKENITEMMYPOSSESSION(var C_NPC SLF, var C_NPC OTH, var C_ITEM ITM) {
    var int PORTALGUILD;
    PORTALGUILD = WLD_GETPLAYERPORTALGUILD();
    if (NPC_OWNEDBYNPC(ITM, SLF)) {
        return TRUE;
    };
    if (((ITM.FLAGS) & (ITEM_DROPPED)) == (ITEM_DROPPED)) {
        return FALSE;
    };
    if ((C_NPCISBOTHEREDBYPLAYERROOMGUILD(SELF)) || ((WLD_GETPLAYERPORTALGUILD()) == (GIL_PUBLIC))) {
        return TRUE;
    };
    if ((WLD_GETGUILDATTITUDE(SLF.GUILD, ITM.OWNERGUILD)) == (ATT_FRIENDLY)) {
        return TRUE;
    };
    return FALSE;
}

