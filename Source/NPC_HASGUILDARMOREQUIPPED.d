func int NPC_HASGUILDARMOREQUIPPED(var C_NPC NPC, var int GUILD) {
    var C_ITEM ARMOR;
    if (!(NPC_HASEQUIPPEDARMOR(NPC))) {
        return FALSE;
    };
    ARMOR = NPC_GETEQUIPPEDARMOR(NPC);
    if ((GUILD) == (GIL_MIL)) {
        if ((((((((((((((((((HLP_ISITEM(ARMOR, 35501)) || (HLP_ISITEM(ARMOR, 35502))) || (HLP_ISITEM(ARMOR, 35503))) || (HLP_ISITEM(ARMOR, 35506))) || (HLP_ISITEM(ARMOR, 35507))) || (HLP_ISITEM(ARMOR, 35508))) || (HLP_ISITEM(ARMOR, 35488))) || (HLP_ISITEM(ARMOR, 35489))) || (HLP_ISITEM(ARMOR, 35490))) || (HLP_ISITEM(ARMOR, 35482))) || (HLP_ISITEM(ARMOR, 35483))) || (HLP_ISITEM(ARMOR, 35484))) || (HLP_ISITEM(ARMOR, 35498))) || (HLP_ISITEM(ARMOR, 35499))) || (HLP_ISITEM(ARMOR, 35500))) || (HLP_ISITEM(ARMOR, 35493))) || (HLP_ISITEM(ARMOR, 35494))) || (HLP_ISITEM(ARMOR, 35495))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_SLD)) {
        if ((((((((((((((((((HLP_ISITEM(ARMOR, 35470)) || (HLP_ISITEM(ARMOR, 35471))) || (HLP_ISITEM(ARMOR, 35472))) || (HLP_ISITEM(ARMOR, 35475))) || (HLP_ISITEM(ARMOR, 35476))) || (HLP_ISITEM(ARMOR, 35477))) || (HLP_ISITEM(ARMOR, 35451))) || (HLP_ISITEM(ARMOR, 35452))) || (HLP_ISITEM(ARMOR, 35453))) || (HLP_ISITEM(ARMOR, 35465))) || (HLP_ISITEM(ARMOR, 35466))) || (HLP_ISITEM(ARMOR, 35467))) || (HLP_ISITEM(ARMOR, 35454))) || (HLP_ISITEM(ARMOR, 35455))) || (HLP_ISITEM(ARMOR, 35456))) || (HLP_ISITEM(ARMOR, 35459))) || (HLP_ISITEM(ARMOR, 35460))) || (HLP_ISITEM(ARMOR, 35461))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_KDF)) {
        if (((((HLP_ISITEM(ARMOR, 33916)) || (HLP_ISITEM(ARMOR, 33919))) || (HLP_ISITEM(ARMOR, 33573))) || (HLP_ISITEM(ARMOR, 33924))) || (HLP_ISITEM(ARMOR, 35593))) {
            return TRUE;
        };
    };
    return FALSE;
}

func int NPC_HASGUILDARMORINEQ(var C_NPC NPC, var int GUILD) {
    if ((GUILD) == (GIL_MIL)) {
        if (((((((((((((((((((NPC_HASITEMS(NPC, 35501)) > (0)) || ((NPC_HASITEMS(NPC, 35502)) > (0))) || ((NPC_HASITEMS(NPC, 35503)) > (0))) || ((NPC_HASITEMS(NPC, 35506)) > (0))) || ((NPC_HASITEMS(NPC, 35507)) > (0))) || ((NPC_HASITEMS(NPC, 35508)) > (0))) || ((NPC_HASITEMS(NPC, 35488)) > (0))) || ((NPC_HASITEMS(NPC, 35489)) > (0))) || ((NPC_HASITEMS(NPC, 35490)) > (0))) || ((NPC_HASITEMS(NPC, 35482)) > (0))) || ((NPC_HASITEMS(NPC, 35483)) > (0))) || ((NPC_HASITEMS(NPC, 35484)) > (0))) || ((NPC_HASITEMS(NPC, 35498)) > (0))) || ((NPC_HASITEMS(NPC, 35499)) > (0))) || ((NPC_HASITEMS(NPC, 35500)) > (0))) || ((NPC_HASITEMS(NPC, 35493)) > (0))) || ((NPC_HASITEMS(NPC, 35494)) > (0))) || ((NPC_HASITEMS(NPC, 35495)) > (0))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_SLD)) {
        if (((((((((((((((((((NPC_HASITEMS(NPC, 35470)) > (0)) || ((NPC_HASITEMS(NPC, 35471)) > (0))) || ((NPC_HASITEMS(NPC, 35472)) > (0))) || ((NPC_HASITEMS(NPC, 35475)) > (0))) || ((NPC_HASITEMS(NPC, 35476)) > (0))) || ((NPC_HASITEMS(NPC, 35477)) > (0))) || ((NPC_HASITEMS(NPC, 35451)) > (0))) || ((NPC_HASITEMS(NPC, 35452)) > (0))) || ((NPC_HASITEMS(NPC, 35453)) > (0))) || ((NPC_HASITEMS(NPC, 35465)) > (0))) || ((NPC_HASITEMS(NPC, 35466)) > (0))) || ((NPC_HASITEMS(NPC, 35467)) > (0))) || ((NPC_HASITEMS(NPC, 35454)) > (0))) || ((NPC_HASITEMS(NPC, 35455)) > (0))) || ((NPC_HASITEMS(NPC, 35456)) > (0))) || ((NPC_HASITEMS(NPC, 35459)) > (0))) || ((NPC_HASITEMS(NPC, 35460)) > (0))) || ((NPC_HASITEMS(NPC, 35461)) > (0))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_KDF)) {
        if ((((((NPC_HASITEMS(NPC, 33916)) > (0)) || ((NPC_HASITEMS(NPC, 33919)) > (0))) || ((NPC_HASITEMS(NPC, 33573)) > (0))) || ((NPC_HASITEMS(NPC, 33924)) > (0))) || ((NPC_HASITEMS(NPC, 35593)) > (0))) {
            return TRUE;
        };
    };
    return FALSE;
}

func void NPC_REMOVEALLGUILDARMORS(var C_NPC NPC, var int GUILD) {
    PRINTD("Npc_RemoveAllGuildArmors");
    if ((GUILD) == (GIL_MIL)) {
    };
    if ((GUILD) == (GIL_SLD)) {
        NPC_REMOVEINVITEMS(NPC, 35460, NPC_HASITEMS(NPC, 35460));
        NPC_REMOVEINVITEMS(NPC, 35461, NPC_HASITEMS(NPC, 35461));
    };
}

func void NPC_REMOVEALLGUILDSPECIALIZATIONARMORS(var C_NPC NPC, var int GUILD, var int SPECIALIZATION) {
    PRINTD("Npc_RemoveAllGuildSpecializationArmors");
    if ((GUILD) == (GIL_MIL)) {
    };
    if ((GUILD) == (GIL_SLD)) {
        NPC_REMOVEINVITEMS(NPC, 35470, NPC_HASITEMS(NPC, 35470));
        NPC_REMOVEINVITEMS(NPC, 35475, NPC_HASITEMS(NPC, 35475));
    };
}

