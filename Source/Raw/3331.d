var int HIERRO_ITEMSGIVEN_CHAPTER_3 = 0;
var int HIERRO_ITEMSGIVEN_CHAPTER_4 = 0;
var int HIERRO_ITEMSGIVEN_ALCOHOL = 0;
func void B_GIVETRADEINV_HIERRO(var C_NPC SLF) {
    if (((KAPITEL) >= (3)) && ((HIERRO_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8780, 4);
        CREATEINVITEMS(SLF, 0x83b2, 2);
        CREATEINVITEMS(SLF, 0x83b3, 2);
        CREATEINVITEMS(SLF, 0x83b4, 2);
        CREATEINVITEMS(SLF, 0x83b6, 2);
        CREATEINVITEMS(SLF, 0x952d, 4);
        CREATEINVITEMS(SLF, 0x8784, 4);
        CREATEINVITEMS(SLF, 0x8789, 2);
        CREATEINVITEMS(SLF, 0x878e, 2);
        CREATEINVITEMS(SLF, 0x877e, 4);
        CREATEINVITEMS(SLF, 0x8781, 2);
        CREATEINVITEMS(SLF, 0x8788, 1);
        CREATEINVITEMS(SLF, 0x8782, 5);
        CREATEINVITEMS(SLF, 0x8785, 2);
        CREATEINVITEMS(SLF, 0x85e8, 12);
        CREATEINVITEMS(SLF, 0x85ea, 8);
        CREATEINVITEMS(SLF, 0x85ec, 5);
        CREATEINVITEMS(SLF, 0x85e2, 10);
        CREATEINVITEMS(SLF, 0x85e4, 7);
        CREATEINVITEMS(SLF, 0x85e6, 4);
        CREATEINVITEMS(SLF, 0x85f2, 8);
        CREATEINVITEMS(SLF, 0x85fa, 8);
        CREATEINVITEMS(SLF, 0x85fc, 6);
        CREATEINVITEMS(SLF, 0x85f8, 4);
        CREATEINVITEMS(SLF, 0x85fe, 5);
        CREATEINVITEMS(SLF, 0x8630, 3);
        CREATEINVITEMS(SLF, 0x8632, 2);
        CREATEINVITEMS(SLF, 0x8635, 1);
        CREATEINVITEMS(SLF, 0x838e, 1);
        CREATEINVITEMS(SLF, 0x9342, 4);
        CREATEINVITEMS(SLF, 0x861e, 3);
        CREATEINVITEMS(SLF, 0x8623, 2);
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x8390, 1);
        CREATEINVITEMS(SLF, 0x864b, 2);
        CREATEINVITEMS(SLF, 0x864d, 2);
        CREATEINVITEMS(SLF, 0x9356, 1);
        CREATEINVITEMS(SLF, 0x936a, 1);
        CREATEINVITEMS(SLF, 0x9362, 1);
        CREATEINVITEMS(SLF, 0x9366, 1);
        CREATEINVITEMS(SLF, 0x9346, 1);
        CREATEINVITEMS(SLF, 0x934a, 1);
        CREATEINVITEMS(SLF, 0x8581, 10);
        CREATEINVITEMS(SLF, 0x85b0, 2);
        CREATEINVITEMS(SLF, 0x857e, 2);
        CREATEINVITEMS(SLF, 0x8ce2, 1);
        CREATEINVITEMS(SLF, 0x8c94, 6);
        CREATEINVITEMS(SLF, 0x8c95, 18);
        CREATEINVITEMS(SLF, 0x85af, 5);
        CREATEINVITEMS(SLF, 0x85ae, 5);
        CREATEINVITEMS(SLF, 0x947c, 1);
        CREATEINVITEMS(SLF, 0x86e1, 1);
        CREATEINVITEMS(SLF, 0x87ab, 2);
        CREATEINVITEMS(SLF, 0x88cc, 1);
        CREATEINVITEMS(SLF, 0x88ce, 1);
        CREATEINVITEMS(SLF, 0x889e, 1);
        CREATEINVITEMS(SLF, 0x88e4, 1);
        CREATEINVITEMS(SLF, 0x88e2, 1);
        CREATEINVITEMS(SLF, 0x88e6, 1);
        CREATEINVITEMS(SLF, 0x88e8, 1);
        CREATEINVITEMS(SLF, 0x88c8, 1);
        CREATEINVITEMS(SLF, 0x88ca, 1);
        HIERRO_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((LOG_GETSTATUS(MIS_Q303)) == (LOG_RUNNING)) && ((HIERRO_ITEMSGIVEN_ALCOHOL) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84c2, 8);
        CREATEINVITEMS(SLF, 0x8e1f, 6);
        CREATEINVITEMS(SLF, 0x8e25, 4);
        CREATEINVITEMS(SLF, 0x8e21, 3);
        CREATEINVITEMS(SLF, 0x864b, 2);
        CREATEINVITEMS(SLF, 0x864d, 2);
        CREATEINVITEMS(SLF, 0x9362, 1);
        CREATEINVITEMS(SLF, 0x9366, 1);
        CREATEINVITEMS(SLF, 0x9346, 1);
        CREATEINVITEMS(SLF, 0x934a, 1);
        HIERRO_ITEMSGIVEN_ALCOHOL = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((HIERRO_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8780, 2);
        CREATEINVITEMS(SLF, 0x878d, 1);
        CREATEINVITEMS(SLF, 0x83b2, 1);
        CREATEINVITEMS(SLF, 0x83b3, 1);
        CREATEINVITEMS(SLF, 0x83b4, 1);
        CREATEINVITEMS(SLF, 0x952d, 4);
        CREATEINVITEMS(SLF, 0x83b6, 1);
        CREATEINVITEMS(SLF, 0x8784, 2);
        CREATEINVITEMS(SLF, 0x8789, 1);
        CREATEINVITEMS(SLF, 0x878e, 1);
        CREATEINVITEMS(SLF, 0x877e, 2);
        CREATEINVITEMS(SLF, 0x9526, 1);
        CREATEINVITEMS(SLF, 0x952a, 5);
        CREATEINVITEMS(SLF, 0x8781, 1);
        CREATEINVITEMS(SLF, 0x8788, 1);
        CREATEINVITEMS(SLF, 0x8782, 1);
        CREATEINVITEMS(SLF, 0x8785, 3);
        CREATEINVITEMS(SLF, 0x878f, 1);
        CREATEINVITEMS(SLF, 0x85e8, 4);
        CREATEINVITEMS(SLF, 0x85ea, 2);
        CREATEINVITEMS(SLF, 0x85ec, 1);
        CREATEINVITEMS(SLF, 0x85e2, 3);
        CREATEINVITEMS(SLF, 0x85e4, 2);
        CREATEINVITEMS(SLF, 0x85e6, 1);
        CREATEINVITEMS(SLF, 0x85f2, 4);
        CREATEINVITEMS(SLF, 0x85fa, 3);
        CREATEINVITEMS(SLF, 0x85fc, 2);
        CREATEINVITEMS(SLF, 0x85f8, 1);
        CREATEINVITEMS(SLF, 0x8635, 1);
        CREATEINVITEMS(SLF, 0x838e, 1);
        CREATEINVITEMS(SLF, 0x9342, 4);
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x8390, 1);
        CREATEINVITEMS(SLF, 0x864b, 2);
        CREATEINVITEMS(SLF, 0x864d, 2);
        CREATEINVITEMS(SLF, 0x9356, 1);
        CREATEINVITEMS(SLF, 0x936a, 1);
        CREATEINVITEMS(SLF, 0x9362, 1);
        CREATEINVITEMS(SLF, 0x9366, 1);
        CREATEINVITEMS(SLF, 0x9346, 1);
        CREATEINVITEMS(SLF, 0x934a, 1);
        CREATEINVITEMS(SLF, 0x8581, 4);
        CREATEINVITEMS(SLF, 0x8ce2, 1);
        CREATEINVITEMS(SLF, 0x8c94, 4);
        CREATEINVITEMS(SLF, 0x8c95, 12);
        HIERRO_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
}

