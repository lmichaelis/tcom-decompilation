var int OLAF_ITEMSGIVEN_CHAPTER_2 = 0;
var int OLAF_ITEMSGIVEN_CHAPTER_3 = 0;
var int OLAF_ITEMSGIVEN_CHAPTER_4 = 0;
var int OLAF_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_OLAF(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((OLAF_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84be, 5);
        CREATEINVITEMS(SLF, 0x84b2, 10);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84b4, 12);
        CREATEINVITEMS(SLF, 0x8e41, 3);
        CREATEINVITEMS(SLF, 0x8e3d, 8);
        CREATEINVITEMS(SLF, 0x8e45, 4);
        CREATEINVITEMS(SLF, 0x8e4d, 8);
        CREATEINVITEMS(SLF, 0x8e59, 12);
        CREATEINVITEMS(SLF, 0x8e23, 9);
        CREATEINVITEMS(SLF, 0x8e1f, 4);
        CREATEINVITEMS(SLF, 0x84c4, 12);
        CREATEINVITEMS(SLF, 0x8e12, 2);
        CREATEINVITEMS(SLF, 0x8e14, 8);
        CREATEINVITEMS(SLF, 0x8e15, 9);
        CREATEINVITEMS(SLF, 0x84c0, 14);
        CREATEINVITEMS(SLF, 0x8e10, 5);
        CREATEINVITEMS(SLF, 0x8e0b, 2);
        CREATEINVITEMS(SLF, 0x8e17, 7);
        CREATEINVITEMS(SLF, 0x8e21, 7);
        CREATEINVITEMS(SLF, 0x8f04, 5);
        CREATEINVITEMS(SLF, 0x8f27, 3);
        CREATEINVITEMS(SLF, 0x8f2e, 3);
        CREATEINVITEMS(SLF, 0x8f6e, 2);
        CREATEINVITEMS(SLF, 0x8efe, 4);
        CREATEINVITEMS(SLF, 0x8f5e, 8);
        CREATEINVITEMS(SLF, 0x8f60, 2);
        CREATEINVITEMS(SLF, 0x8f6c, 6);
        CREATEINVITEMS(SLF, 0x8f64, 2);
        CREATEINVITEMS(SLF, 0x8c33, 1);
        CREATEINVITEMS(SLF, 0x8c41, 1);
        CREATEINVITEMS(SLF, 0x8378, 1);
        OLAF_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((OLAF_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84c4, 4);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x8e23, 2);
        CREATEINVITEMS(SLF, 0x8e1f, 1);
        CREATEINVITEMS(SLF, 0x84be, 2);
        CREATEINVITEMS(SLF, 0x84b2, 4);
        CREATEINVITEMS(SLF, 0x84ae, 4);
        CREATEINVITEMS(SLF, 0x8e23, 1);
        CREATEINVITEMS(SLF, 0x8e1f, 1);
        CREATEINVITEMS(SLF, 0x84c4, 2);
        CREATEINVITEMS(SLF, 0x8e12, 2);
        CREATEINVITEMS(SLF, 0x8e14, 2);
        CREATEINVITEMS(SLF, 0x8e15, 2);
        CREATEINVITEMS(SLF, 0x84c0, 4);
        CREATEINVITEMS(SLF, 0x8e10, 2);
        CREATEINVITEMS(SLF, 0x8e0b, 1);
        CREATEINVITEMS(SLF, 0x8e17, 2);
        CREATEINVITEMS(SLF, 0x8e41, 1);
        CREATEINVITEMS(SLF, 0x8e3d, 4);
        CREATEINVITEMS(SLF, 0x8e45, 2);
        CREATEINVITEMS(SLF, 0x8e4d, 3);
        CREATEINVITEMS(SLF, 0x8e59, 4);
        CREATEINVITEMS(SLF, 0x8f04, 2);
        CREATEINVITEMS(SLF, 0x8f27, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 3);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8f64, 1);
        OLAF_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((OLAF_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84c4, 4);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x8e23, 2);
        CREATEINVITEMS(SLF, 0x8e1f, 1);
        CREATEINVITEMS(SLF, 0x84be, 2);
        CREATEINVITEMS(SLF, 0x84b2, 4);
        CREATEINVITEMS(SLF, 0x84ae, 4);
        CREATEINVITEMS(SLF, 0x8e41, 1);
        CREATEINVITEMS(SLF, 0x8e3d, 4);
        CREATEINVITEMS(SLF, 0x8e45, 2);
        CREATEINVITEMS(SLF, 0x8e4d, 3);
        CREATEINVITEMS(SLF, 0x8e59, 4);
        CREATEINVITEMS(SLF, 0x8f04, 2);
        CREATEINVITEMS(SLF, 0x8f27, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 3);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8f64, 1);
        CREATEINVITEMS(SLF, 0x8e23, 1);
        CREATEINVITEMS(SLF, 0x8e1f, 1);
        CREATEINVITEMS(SLF, 0x84c4, 2);
        CREATEINVITEMS(SLF, 0x8e12, 2);
        CREATEINVITEMS(SLF, 0x8e14, 2);
        CREATEINVITEMS(SLF, 0x8e15, 2);
        CREATEINVITEMS(SLF, 0x84c0, 4);
        CREATEINVITEMS(SLF, 0x8e10, 2);
        CREATEINVITEMS(SLF, 0x8e0b, 1);
        CREATEINVITEMS(SLF, 0x8e17, 2);
        OLAF_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((OLAF_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x84c4, 4);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x8e23, 2);
        CREATEINVITEMS(SLF, 0x8e1f, 1);
        CREATEINVITEMS(SLF, 0x84be, 2);
        CREATEINVITEMS(SLF, 0x84b2, 4);
        CREATEINVITEMS(SLF, 0x84ae, 4);
        CREATEINVITEMS(SLF, 0x8e41, 1);
        CREATEINVITEMS(SLF, 0x8e3d, 4);
        CREATEINVITEMS(SLF, 0x8e45, 2);
        CREATEINVITEMS(SLF, 0x8e4d, 3);
        CREATEINVITEMS(SLF, 0x8e59, 4);
        CREATEINVITEMS(SLF, 0x8f04, 2);
        CREATEINVITEMS(SLF, 0x8f27, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8f6e, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f5e, 3);
        CREATEINVITEMS(SLF, 0x8f60, 1);
        CREATEINVITEMS(SLF, 0x8f6c, 3);
        CREATEINVITEMS(SLF, 0x8f64, 1);
        OLAF_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}

