var int TRADER04_ITEMSGIVEN_CHAPTER_1 = 0;
func void B_GIVETRADEINV_TRADER04(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER04_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 3);
        CREATEINVITEMS(SLF, 0x955a, 3);
        CREATEINVITEMS(SLF, 0x877f, 8);
        CREATEINVITEMS(SLF, 0x8780, 8);
        CREATEINVITEMS(SLF, 0x87b6, 14);
        CREATEINVITEMS(SLF, 0x851f, 2);
        CREATEINVITEMS(SLF, 0x8673, 2);
        CREATEINVITEMS(SLF, 0x84c4, 14);
        CREATEINVITEMS(SLF, 0x8e1e, 17);
        CREATEINVITEMS(SLF, 0x861e, 3);
        CREATEINVITEMS(SLF, 0x8623, 3);
        CREATEINVITEMS(SLF, 0x864b, 1);
        CREATEINVITEMS(SLF, 0x84ae, 11);
        CREATEINVITEMS(SLF, 0x84b2, 6);
        CREATEINVITEMS(SLF, 0x85e8, 6);
        CREATEINVITEMS(SLF, 0x85e2, 6);
        CREATEINVITEMS(SLF, 0x8630, 3);
        CREATEINVITEMS(SLF, 0x8632, 3);
        CREATEINVITEMS(SLF, 0x8c11, 1);
        CREATEINVITEMS(SLF, 0x8c6d, 1);
        CREATEINVITEMS(SLF, 0x9ed0, 1);
        CREATEINVITEMS(SLF, 0x9ee0, 1);
        CREATEINVITEMS(SLF, 0x9c32, 1);
        TRADER04_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}

