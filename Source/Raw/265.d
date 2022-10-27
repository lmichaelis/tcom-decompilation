func int NPC_HASGUILDARMOREQUIPPED(var C_NPC NPC, var int GUILD) {
    if (!(NPC_HASEQUIPPEDARMOR(NPC))) {
        return FALSE;
    };
    ARMOR = NPC_GETEQUIPPEDARMOR(NPC);
    if ((GUILD) == (GIL_MIL)) {
        if ((((((((((((((((((HLP_ISITEM(ARMOR, 0x8aad)) || (HLP_ISITEM(ARMOR, 0x8aae))) || (HLP_ISITEM(ARMOR, 0x8aaf))) || (HLP_ISITEM(ARMOR, 0x8ab2))) || (HLP_ISITEM(ARMOR, 0x8ab3))) || (HLP_ISITEM(ARMOR, 0x8ab4))) || (HLP_ISITEM(ARMOR, 0x8aa0))) || (HLP_ISITEM(ARMOR, 0x8aa1))) || (HLP_ISITEM(ARMOR, 0x8aa2))) || (HLP_ISITEM(ARMOR, 0x8a9a))) || (HLP_ISITEM(ARMOR, 0x8a9b))) || (HLP_ISITEM(ARMOR, 0x8a9c))) || (HLP_ISITEM(ARMOR, 0x8aaa))) || (HLP_ISITEM(ARMOR, 0x8aab))) || (HLP_ISITEM(ARMOR, 0x8aac))) || (HLP_ISITEM(ARMOR, 0x8aa5))) || (HLP_ISITEM(ARMOR, 0x8aa6))) || (HLP_ISITEM(ARMOR, 0x8aa7))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_SLD)) {
        if ((((((((((((((((((HLP_ISITEM(ARMOR, 0x8a8e)) || (HLP_ISITEM(ARMOR, 0x8a8f))) || (HLP_ISITEM(ARMOR, 0x8a90))) || (HLP_ISITEM(ARMOR, 0x8a93))) || (HLP_ISITEM(ARMOR, 0x8a94))) || (HLP_ISITEM(ARMOR, 0x8a95))) || (HLP_ISITEM(ARMOR, 0x8a7b))) || (HLP_ISITEM(ARMOR, 0x8a7c))) || (HLP_ISITEM(ARMOR, 0x8a7d))) || (HLP_ISITEM(ARMOR, 0x8a89))) || (HLP_ISITEM(ARMOR, 0x8a8a))) || (HLP_ISITEM(ARMOR, 0x8a8b))) || (HLP_ISITEM(ARMOR, 0x8a7e))) || (HLP_ISITEM(ARMOR, 0x8a7f))) || (HLP_ISITEM(ARMOR, 0x8a80))) || (HLP_ISITEM(ARMOR, 0x8a83))) || (HLP_ISITEM(ARMOR, 0x8a84))) || (HLP_ISITEM(ARMOR, 0x8a85))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_KDF)) {
        if (((((HLP_ISITEM(ARMOR, 0x847c)) || (HLP_ISITEM(ARMOR, 0x847f))) || (HLP_ISITEM(ARMOR, 0x8325))) || (HLP_ISITEM(ARMOR, 0x8484))) || (HLP_ISITEM(ARMOR, 0x8b09))) {
            return TRUE;
        };
    };
    return FALSE;
}

instance NPC_HASGUILDARMOREQUIPPED.ARMOR(C_ITEM)
func int NPC_HASGUILDARMORINEQ(var C_NPC NPC, var int GUILD) {
    if ((GUILD) == (GIL_MIL)) {
        if (((((((((((((((((((NPC_HASITEMS(NPC, 0x8aad)) > (0)) || ((NPC_HASITEMS(NPC, 0x8aae)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aaf)) > (0))) || ((NPC_HASITEMS(NPC, 0x8ab2)) > (0))) || ((NPC_HASITEMS(NPC, 0x8ab3)) > (0))) || ((NPC_HASITEMS(NPC, 0x8ab4)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa0)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa1)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa2)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a9a)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a9b)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a9c)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aaa)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aab)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aac)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa5)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa6)) > (0))) || ((NPC_HASITEMS(NPC, 0x8aa7)) > (0))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_SLD)) {
        if (((((((((((((((((((NPC_HASITEMS(NPC, 0x8a8e)) > (0)) || ((NPC_HASITEMS(NPC, 0x8a8f)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a90)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a93)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a94)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a95)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a7b)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a7c)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a7d)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a89)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a8a)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a8b)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a7e)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a7f)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a80)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a83)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a84)) > (0))) || ((NPC_HASITEMS(NPC, 0x8a85)) > (0))) {
            return TRUE;
        };
    };
    if ((GUILD) == (GIL_KDF)) {
        if ((((((NPC_HASITEMS(NPC, 0x847c)) > (0)) || ((NPC_HASITEMS(NPC, 0x847f)) > (0))) || ((NPC_HASITEMS(NPC, 0x8325)) > (0))) || ((NPC_HASITEMS(NPC, 0x8484)) > (0))) || ((NPC_HASITEMS(NPC, 0x8b09)) > (0))) {
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
        NPC_REMOVEINVITEMS(NPC, 0x8a84, NPC_HASITEMS(NPC, 0x8a84));
        NPC_REMOVEINVITEMS(NPC, 0x8a85, NPC_HASITEMS(NPC, 0x8a85));
    };
}

func void NPC_REMOVEALLGUILDSPECIALIZATIONARMORS(var C_NPC NPC, var int GUILD, var int SPECIALIZATION) {
    PRINTD("Npc_RemoveAllGuildSpecializationArmors");
    if ((GUILD) == (GIL_MIL)) {
    };
    if ((GUILD) == (GIL_SLD)) {
        NPC_REMOVEINVITEMS(NPC, 0x8a8e, NPC_HASITEMS(NPC, 0x8a8e));
        NPC_REMOVEINVITEMS(NPC, 0x8a93, NPC_HASITEMS(NPC, 0x8a93));
    };
}

