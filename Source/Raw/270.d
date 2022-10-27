func void B_REFRESHATINSERT() {
    if ((SELF.ATTRIBUTE[0]) <= (0)) {
        return;
    };
    if ((SELF.AIVAR[48]) != (0)) {
        NPC = HLP_GETNPC(0x717);
        MDL_SETVISUALBODY(SELF, NPC.BODY_VISUALNAME, ((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_BODY_TEXVARNR)) >> (14), 0, NPC.HEAD_VISUALNAME, ((NPC.BITFIELD[1]) & (OCNPC_BITFIELD1_HEAD_TEXVARNR)) >> (16), ((NPC.BITFIELD[2]) & (OCNPC_BITFIELD2_TEETH_TEXVARNR)) >> (0), SELF.AIVAR[48]);
        SELF.AIVAR[48] = 0;
    };
    if ((SELF.AIVAR[77]) != (0)) {
        if (NPC_HASEQUIPPEDARMOR(SELF)) {
            ARMOR = NPC_GETEQUIPPEDARMOR(SELF);
            ARMORINST = HLP_GETINSTANCEID(ARMOR);
            AI_UNEQUIPARMOR(SELF);
            AI_EQUIPARMOR(SELF, ARMORINST);
        };
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDSTOPSINTRUDER)) {
        NPC_SETTEMPATTITUDE(SELF, ATT_NEUTRAL);
    };
    HER = HLP_GETNPC(0xc3ab);
    if (((SELF.GUILD) < (GIL_SEPERATOR_HUM)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(HER)))) {
        SELF.ATTRIBUTE[0] = SELF.ATTRIBUTE[1];
        if ((NPC_HASEQUIPPEDWEAPON(SELF)) == (FALSE)) {
            if ((SELF.GUILD) == (GIL_MIL)) {
                CREATEINVITEMS(SELF, 0x84d0, 1);
            };
            if ((SELF.GUILD) == (GIL_PAL)) {
                CREATEINVITEMS(SELF, 0x84d0, 1);
            };
            if ((SELF.GUILD) == (GIL_SLD)) {
                CREATEINVITEMS(SELF, 0x84d0, 1);
            };
            if ((SELF.GUILD) == (GIL_BAU)) {
                CREATEINVITEMS(SELF, 0x84d0, 1);
            };
            if ((SELF.GUILD) == (GIL_NOV)) {
                CREATEINVITEMS(SELF, 0x84d0, 1);
            };
        };
    };
}

instance B_REFRESHATINSERT.NPC(OCNPC)
instance B_REFRESHATINSERT.ARMOR(C_ITEM)
var int B_REFRESHATINSERT.ARMORINST = 0;
instance B_REFRESHATINSERT.HER(C_NPC)
