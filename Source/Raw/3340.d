var int LAUDUS_ITEMSGIVEN_CHAPTER_2 = 0;
var int LAUDUS_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_LAUDUS(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((LAUDUS_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x83bb, 1);
        CREATEINVITEMS(SLF, 0x83bd, 1);
        CREATEINVITEMS(SLF, 0x83b9, 1);
        CREATEINVITEMS(SLF, 0x877e, 5);
        CREATEINVITEMS(SLF, 0x8781, 4);
        CREATEINVITEMS(SLF, 0x8785, 10);
        CREATEINVITEMS(SLF, 0x8787, 1);
        CREATEINVITEMS(SLF, 0x9526, 2);
        CREATEINVITEMS(SLF, 0x9f83, 1);
        CREATEINVITEMS(SLF, 0x9f8e, 1);
        CREATEINVITEMS(SLF, 0x94b5, 1);
        CREATEINVITEMS(SLF, 0x956c, 1);
        CREATEINVITEMS(SLF, 0x8780, 14);
        CREATEINVITEMS(SLF, 0x8784, 14);
        CREATEINVITEMS(SLF, 0x8786, 6);
        CREATEINVITEMS(SLF, 0x952d, 7);
        CREATEINVITEMS(SLF, 0x83b2, 3);
        CREATEINVITEMS(SLF, 0x83b3, 3);
        CREATEINVITEMS(SLF, 0x83b4, 3);
        CREATEINVITEMS(SLF, 0x83b6, 2);
        CREATEINVITEMS(SLF, 0x878d, 1);
        CREATEINVITEMS(SLF, 0x952c, 2);
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        CREATEINVITEMS(SLF, 0x8c94, 20);
        CREATEINVITEMS(SLF, 0x8c95, 42);
        CREATEINVITEMS(SLF, 0x85af, 3);
        LAUDUS_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((LAUDUS_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x83b8, 1);
        CREATEINVITEMS(SLF, 0x877e, 2);
        CREATEINVITEMS(SLF, 0x8781, 4);
        CREATEINVITEMS(SLF, 0x8785, 6);
        CREATEINVITEMS(SLF, 0x9526, 1);
        CREATEINVITEMS(SLF, 0x8780, 7);
        CREATEINVITEMS(SLF, 0x8784, 7);
        CREATEINVITEMS(SLF, 0x8786, 2);
        CREATEINVITEMS(SLF, 0x952d, 4);
        CREATEINVITEMS(SLF, 0x83b2, 1);
        CREATEINVITEMS(SLF, 0x83b3, 1);
        CREATEINVITEMS(SLF, 0x83b4, 1);
        CREATEINVITEMS(SLF, 0x83b6, 1);
        CREATEINVITEMS(SLF, 0x878d, 1);
        CREATEINVITEMS(SLF, 0x8793, 1);
        CREATEINVITEMS(SLF, 0x9f99, 1);
        CREATEINVITEMS(SLF, 0x9fa4, 1);
        CREATEINVITEMS(SLF, 0x9faf, 1);
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        CREATEINVITEMS(SLF, 0x8c94, 8);
        CREATEINVITEMS(SLF, 0x8c95, 12);
        LAUDUS_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

