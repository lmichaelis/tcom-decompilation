var int TRADER02_ITEMSGIVEN_CHAPTER_1 = 0;
func void B_GIVETRADEINV_TRADER02(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER02_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x9556, 2);
        CREATEINVITEMS(SLF, 0x955c, 2);
        CREATEINVITEMS(SLF, 0x861e, 2);
        CREATEINVITEMS(SLF, 0x8630, 3);
        CREATEINVITEMS(SLF, 0x864b, 5);
        CREATEINVITEMS(SLF, 0x864d, 2);
        CREATEINVITEMS(SLF, 0x85fa, 10);
        CREATEINVITEMS(SLF, 0x85fc, 10);
        CREATEINVITEMS(SLF, 0x8e21, 2);
        CREATEINVITEMS(SLF, 0x8378, 1);
        CREATEINVITEMS(SLF, 0x84c4, 16);
        CREATEINVITEMS(SLF, 0x8c77, 1);
        CREATEINVITEMS(SLF, 0x9eb0, 1);
        CREATEINVITEMS(SLF, 0x9ecc, 1);
        CREATEINVITEMS(SLF, 0x9eec, 1);
        CREATEINVITEMS(SLF, 0x9c2c, 1);
        TRADER02_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}

