var int VLADAN_ITEMSGIVEN_CHAPTER_1 = 0;
func void B_GIVETRADEINV_VLADAN(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((VLADAN_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8f29, 1);
        CREATEINVITEMS(SLF, 0x8f1f, 4);
        CREATEINVITEMS(SLF, 0x84c4, 20);
        CREATEINVITEMS(SLF, 0x8e12, 6);
        CREATEINVITEMS(SLF, 0x8e14, 20);
        CREATEINVITEMS(SLF, 0x8e15, 12);
        CREATEINVITEMS(SLF, 0x84c0, 6);
        CREATEINVITEMS(SLF, 0x8e10, 8);
        CREATEINVITEMS(SLF, 0x8e0b, 4);
        CREATEINVITEMS(SLF, 0x8e17, 6);
        CREATEINVITEMS(SLF, 0x8f84, 1);
        CREATEINVITEMS(SLF, 0x8f86, 1);
        CREATEINVITEMS(SLF, 0x8f88, 1);
        CREATEINVITEMS(SLF, 0x859f, 4);
        CREATEINVITEMS(SLF, 0x85ad, 2);
        CREATEINVITEMS(SLF, 0x85a4, 2);
        CREATEINVITEMS(SLF, 0x859e, 1);
        CREATEINVITEMS(SLF, 0x8a1a, 8);
        CREATEINVITEMS(SLF, 0x8a1c, 4);
        CREATEINVITEMS(SLF, 0x9071, 4);
        CREATEINVITEMS(SLF, 0x9074, 2);
        VLADAN_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
}
