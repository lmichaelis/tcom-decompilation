var int TRADER08_ITEMSGIVEN_CHAPTER_1 = 0;
func void B_GIVETRADEINV_TRADER08(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((TRADER08_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x864b, 1);
        CREATEINVITEMS(SLF, 0x87b6, 8);
        CREATEINVITEMS(SLF, 0x84c0, 2);
        CREATEINVITEMS(SLF, 0x877e, 6);
        CREATEINVITEMS(SLF, 0x877f, 4);
        CREATEINVITEMS(SLF, 0x8780, 4);
        CREATEINVITEMS(SLF, 0x878d, 3);
        CREATEINVITEMS(SLF, 0x8786, 3);
        CREATEINVITEMS(SLF, 0x87b6, 10);
        CREATEINVITEMS(SLF, 0x8581, 4);
        CREATEINVITEMS(SLF, 0x8e0b, 4);
        CREATEINVITEMS(SLF, 0x8e1f, 2);
        CREATEINVITEMS(SLF, 0x861e, 2);
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x8630, 2);
        CREATEINVITEMS(SLF, 0x8632, 1);
        CREATEINVITEMS(SLF, 0x8c33, 1);
        CREATEINVITEMS(SLF, 0x9ee0, 1);
        CREATEINVITEMS(SLF, 0x9ed4, 1);
        CREATEINVITEMS(SLF, 0x9c60, 1);
        TRADER08_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}

