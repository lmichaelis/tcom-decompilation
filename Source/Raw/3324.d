var int GERSTAND_ITEMSGIVEN_CHAPTER_2 = 0;
var int GERSTAND_ITEMSGIVEN_CHAPTER_3 = 0;
var int GERSTAND_ITEMSGIVEN_CHAPTER_4 = 0;
var int GERSTAND_ITEMSGIVEN_CHAPTER_5 = 0;
func void B_GIVETRADEINV_GERSTAND(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((GERSTAND_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e23, 4);
        CREATEINVITEMS(SLF, 0x8e29, 8);
        CREATEINVITEMS(SLF, 0x8e21, 3);
        CREATEINVITEMS(SLF, 0x84ae, 10);
        CREATEINVITEMS(SLF, 0x84ba, 10);
        CREATEINVITEMS(SLF, 0x84bc, 10);
        CREATEINVITEMS(SLF, 0x8e3d, 12);
        CREATEINVITEMS(SLF, 0x8e4d, 8);
        CREATEINVITEMS(SLF, 0x8f06, 5);
        CREATEINVITEMS(SLF, 0x8f21, 8);
        CREATEINVITEMS(SLF, 0x8f40, 4);
        CREATEINVITEMS(SLF, 0x8f34, 4);
        CREATEINVITEMS(SLF, 0x8f32, 4);
        CREATEINVITEMS(SLF, 0x8efe, 4);
        CREATEINVITEMS(SLF, 0x8f2e, 2);
        CREATEINVITEMS(SLF, 0x8dff, 2);
        CREATEINVITEMS(SLF, 0x8f6a, 2);
        CREATEINVITEMS(SLF, 0x8f62, 4);
        CREATEINVITEMS(SLF, 0x8f54, 6);
        CREATEINVITEMS(SLF, 0x84be, 10);
        CREATEINVITEMS(SLF, 0x84c0, 14);
        CREATEINVITEMS(SLF, 0x84c6, 5);
        CREATEINVITEMS(SLF, 0x84c2, 2);
        CREATEINVITEMS(SLF, 0x84c4, 14);
        CREATEINVITEMS(SLF, 0x8e15, 10);
        CREATEINVITEMS(SLF, 0x8c17, 1);
        CREATEINVITEMS(SLF, 0x8c07, 1);
        CREATEINVITEMS(SLF, 0x8c09, 1);
        CREATEINVITEMS(SLF, 0x8c15, 1);
        CREATEINVITEMS(SLF, 0x8c21, 1);
        CREATEINVITEMS(SLF, 0x8c0b, 1);
        CREATEINVITEMS(SLF, 0x8c27, 1);
        CREATEINVITEMS(SLF, 0x8c35, 1);
        CREATEINVITEMS(SLF, 0x8c47, 1);
        CREATEINVITEMS(SLF, 0x8c4d, 1);
        CREATEINVITEMS(SLF, 0x8c4f, 1);
        CREATEINVITEMS(SLF, 0x8c61, 1);
        CREATEINVITEMS(SLF, 0x8c6d, 1);
        GERSTAND_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((GERSTAND_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e23, 1);
        CREATEINVITEMS(SLF, 0x8e29, 2);
        CREATEINVITEMS(SLF, 0x84ae, 2);
        CREATEINVITEMS(SLF, 0x84ba, 2);
        CREATEINVITEMS(SLF, 0x84bc, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 3);
        CREATEINVITEMS(SLF, 0x8e4d, 2);
        CREATEINVITEMS(SLF, 0x8f06, 1);
        CREATEINVITEMS(SLF, 0x8f21, 2);
        CREATEINVITEMS(SLF, 0x8f40, 1);
        CREATEINVITEMS(SLF, 0x8f34, 1);
        CREATEINVITEMS(SLF, 0x8f32, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8dff, 1);
        CREATEINVITEMS(SLF, 0x8f6a, 1);
        CREATEINVITEMS(SLF, 0x8f62, 1);
        CREATEINVITEMS(SLF, 0x8f54, 2);
        CREATEINVITEMS(SLF, 0x84be, 5);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x84c6, 1);
        CREATEINVITEMS(SLF, 0x84c2, 1);
        CREATEINVITEMS(SLF, 0x84c4, 5);
        GERSTAND_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
    if (((KAPITEL) >= (4)) && ((GERSTAND_ITEMSGIVEN_CHAPTER_4) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e23, 1);
        CREATEINVITEMS(SLF, 0x8e29, 2);
        CREATEINVITEMS(SLF, 0x8e21, 1);
        CREATEINVITEMS(SLF, 0x84ae, 2);
        CREATEINVITEMS(SLF, 0x84ba, 2);
        CREATEINVITEMS(SLF, 0x84bc, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 3);
        CREATEINVITEMS(SLF, 0x8e4d, 2);
        CREATEINVITEMS(SLF, 0x8f06, 1);
        CREATEINVITEMS(SLF, 0x8f21, 2);
        CREATEINVITEMS(SLF, 0x8f40, 1);
        CREATEINVITEMS(SLF, 0x8f34, 1);
        CREATEINVITEMS(SLF, 0x8f32, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8dff, 1);
        CREATEINVITEMS(SLF, 0x8f6a, 1);
        CREATEINVITEMS(SLF, 0x8f62, 1);
        CREATEINVITEMS(SLF, 0x8f54, 2);
        CREATEINVITEMS(SLF, 0x84be, 5);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x84c6, 1);
        CREATEINVITEMS(SLF, 0x84c2, 1);
        CREATEINVITEMS(SLF, 0x84c4, 5);
        GERSTAND_ITEMSGIVEN_CHAPTER_4 = TRUE;
    };
    if (((KAPITEL) >= (5)) && ((GERSTAND_ITEMSGIVEN_CHAPTER_5) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e23, 1);
        CREATEINVITEMS(SLF, 0x8e29, 2);
        CREATEINVITEMS(SLF, 0x84ae, 2);
        CREATEINVITEMS(SLF, 0x84ba, 2);
        CREATEINVITEMS(SLF, 0x84bc, 2);
        CREATEINVITEMS(SLF, 0x8e3d, 3);
        CREATEINVITEMS(SLF, 0x8e4d, 2);
        CREATEINVITEMS(SLF, 0x8f06, 1);
        CREATEINVITEMS(SLF, 0x8f21, 2);
        CREATEINVITEMS(SLF, 0x8f40, 1);
        CREATEINVITEMS(SLF, 0x8f34, 1);
        CREATEINVITEMS(SLF, 0x8f32, 1);
        CREATEINVITEMS(SLF, 0x8efe, 1);
        CREATEINVITEMS(SLF, 0x8f2e, 1);
        CREATEINVITEMS(SLF, 0x8dff, 1);
        CREATEINVITEMS(SLF, 0x8f6a, 1);
        CREATEINVITEMS(SLF, 0x8f62, 1);
        CREATEINVITEMS(SLF, 0x8f54, 2);
        CREATEINVITEMS(SLF, 0x84be, 5);
        CREATEINVITEMS(SLF, 0x84c0, 7);
        CREATEINVITEMS(SLF, 0x84c6, 1);
        CREATEINVITEMS(SLF, 0x84c2, 1);
        CREATEINVITEMS(SLF, 0x84c4, 5);
        GERSTAND_ITEMSGIVEN_CHAPTER_5 = TRUE;
    };
}

