func void ZS_COMMENTFAKEGUILD() {
    PERCEPTION_SET_MINIMAL();
    AI_STANDUP(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_SIT))) {
        B_TURNTONPC(SELF, OTHER);
    };
    if (!(C_BODYSTATECONTAINS(OTHER, BS_SIT))) {
        B_TURNTONPC(OTHER, SELF);
        if ((NPC_GETDISTTONPC(OTHER, SELF)) < (80)) {
            AI_DODGE(OTHER);
        };
    };
    if ((NPC_HASEQUIPPEDARMOR(OTHER)) == (TRUE)) {
        ITM = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((SELF.GUILD) == (GIL_MIL)) || ((SELF.GUILD) == (GIL_PAL))) {
            B_SAY(SELF, OTHER, "$ADDON_WRONGARMOR_MIL");
        } else if (((SELF.GUILD) == (GIL_NOV)) || ((SELF.GUILD) == (GIL_KDF))) {
            B_SAY(SELF, OTHER, "$ADDON_WRONGARMOR_KDF");
        } else if (((SELF.GUILD) == (GIL_SLD)) || ((SELF.GUILD) == (GIL_DJG))) {
            B_SAY(SELF, OTHER, "$ADDON_WRONGARMOR_SLD");
        } else {
            B_SAY(SELF, OTHER, "$ADDON_WRONGARMOR");
        } else {
            /* set_instance(0) */;
        };
    };
    if ((SELF.GUILD) == (GIL_BDT)) {
        B_SAY(SELF, OTHER, "$ADDON_NOARMOR_BDT");
    };
}

instance ZS_COMMENTFAKEGUILD.ITM(C_ITEM)
