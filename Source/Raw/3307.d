var int CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_2 = 0;
var int CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_3 = 0;
func void B_GIVETRADEINV_CITYTRADEFOUR(var C_NPC SLF) {
    if (((KAPITEL) >= (2)) && ((CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e45, 6);
        CREATEINVITEMS(SLF, 0x8e3b, 12);
        CREATEINVITEMS(SLF, 0x8e39, 4);
        CREATEINVITEMS(SLF, 0x84c6, 12);
        CREATEINVITEMS(SLF, 0x84bc, 30);
        CREATEINVITEMS(SLF, 0x84be, 10);
        CREATEINVITEMS(SLF, 0x8e19, 14);
        CREATEINVITEMS(SLF, 0x8e1c, 20);
        CREATEINVITEMS(SLF, 0x8e1e, 14);
        CREATEINVITEMS(SLF, 0x85de, 20);
        CREATEINVITEMS(SLF, 0x8e05, 8);
        CREATEINVITEMS(SLF, 0x8f6e, 6);
        CREATEINVITEMS(SLF, 0x8f54, 4);
        CREATEINVITEMS(SLF, 0x8f68, 4);
        CREATEINVITEMS(SLF, 0x8f56, 8);
        CREATEINVITEMS(SLF, 0x8f46, 4);
        CREATEINVITEMS(SLF, 0x8f30, 5);
        CREATEINVITEMS(SLF, 0x8f34, 4);
        CREATEINVITEMS(SLF, 0x8f32, 8);
        CREATEINVITEMS(SLF, 0x8f12, 4);
        CREATEINVITEMS(SLF, 0x8f02, 10);
        CREATEINVITEMS(SLF, 0x8c92, 2);
        CREATEINVITEMS(SLF, 0x8c90, 2);
        CREATEINVITEMS(SLF, 0x8c8f, 2);
        CREATEINVITEMS(SLF, 0x84d0, 10);
        CREATEINVITEMS(SLF, 0x8378, 1);
        CREATEINVITEMS(SLF, 0x8c6f, 1);
        CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
    if (((KAPITEL) >= (3)) && ((CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_3) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x8e45, 3);
        CREATEINVITEMS(SLF, 0x8e3b, 5);
        CREATEINVITEMS(SLF, 0x8e39, 2);
        CREATEINVITEMS(SLF, 0x84c6, 8);
        CREATEINVITEMS(SLF, 0x84bc, 14);
        CREATEINVITEMS(SLF, 0x84be, 6);
        CREATEINVITEMS(SLF, 0x8e19, 8);
        CREATEINVITEMS(SLF, 0x8e1c, 14);
        CREATEINVITEMS(SLF, 0x8e1e, 10);
        CREATEINVITEMS(SLF, 0x85de, 12);
        CREATEINVITEMS(SLF, 0x8e05, 8);
        CREATEINVITEMS(SLF, 0x8c92, 2);
        CREATEINVITEMS(SLF, 0x8c90, 2);
        CREATEINVITEMS(SLF, 0x8c8f, 2);
        CREATEINVITEMS(SLF, 0x84d0, 10);
        CITYTRADEFOUR_ITEMSGIVEN_CHAPTER_3 = TRUE;
    };
}

