var int VEIT_ITEMSGIVEN_CHAPTER_1 = 0;
var int VEIT_ITEMSGIVEN_CITY = 0;
func void B_GIVETRADEINV_VEIT(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((VEIT_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 5);
        CREATEINVITEMS(SLF, 0x955a, 5);
        CREATEINVITEMS(SLF, 0x8438, 1);
        CREATEINVITEMS(SLF, 0x843a, 4);
        CREATEINVITEMS(SLF, 0x843b, 2);
        CREATEINVITEMS(SLF, 0x843c, 3);
        CREATEINVITEMS(SLF, 0x8442, 1);
        CREATEINVITEMS(SLF, 0x8444, 1);
        CREATEINVITEMS(SLF, 0x8452, 12);
        CREATEINVITEMS(SLF, 0x8439, 1);
        CREATEINVITEMS(SLF, 0x843d, 1);
        CREATEINVITEMS(SLF, 0x843f, 2);
        CREATEINVITEMS(SLF, 0x8440, 2);
        CREATEINVITEMS(SLF, 0x952a, 2);
        CREATEINVITEMS(SLF, 0x877e, 4);
        CREATEINVITEMS(SLF, 0x8781, 3);
        CREATEINVITEMS(SLF, 0x83f3, 1);
        CREATEINVITEMS(SLF, 0x8978, 1);
        CREATEINVITEMS(SLF, 0x83f6, 1);
        CREATEINVITEMS(SLF, 0x83fc, 1);
        CREATEINVITEMS(SLF, 0x8405, 1);
        CREATEINVITEMS(SLF, 0x947f, 1);
        CREATEINVITEMS(SLF, 0x86cc, 1);
        CREATEINVITEMS(SLF, 0x86d8, 1);
        CREATEINVITEMS(SLF, 0x86ae, 1);
        CREATEINVITEMS(SLF, 0x86ba, 1);
        CREATEINVITEMS(SLF, 0x86b4, 1);
        CREATEINVITEMS(SLF, 0x8343, 1);
        CREATEINVITEMS(SLF, 0x8358, 1);
        CREATEINVITEMS(SLF, 0x8364, 1);
        CREATEINVITEMS(SLF, 0x835b, 1);
        CREATEINVITEMS(SLF, 0x935a, 2);
        CREATEINVITEMS(SLF, 0x936a, 3);
        CREATEINVITEMS(SLF, 0x8630, 3);
        CREATEINVITEMS(SLF, 0x861e, 2);
        CREATEINVITEMS(SLF, 0x8590, 2);
        CREATEINVITEMS(SLF, 0x8581, 4);
        CREATEINVITEMS(SLF, 0x857e, 2);
        CREATEINVITEMS(SLF, 0x8584, 2);
        CREATEINVITEMS(SLF, 0x8585, 2);
        CREATEINVITEMS(SLF, 0x858a, 2);
        CREATEINVITEMS(SLF, 0x85b6, 2);
        CREATEINVITEMS(SLF, 0x8583, 2);
        CREATEINVITEMS(SLF, 0x84ca, 10);
        CREATEINVITEMS(SLF, 0x9058, 2);
        CREATEINVITEMS(SLF, 0x87b6, 4);
        CREATEINVITEMS(SLF, 0x905f, 4);
        CREATEINVITEMS(SLF, 0x8c47, 1);
        CREATEINVITEMS(SLF, 0x8c77, 1);
        VEIT_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((SQ227_VEITMARKET) == (2)) && ((VEIT_ITEMSGIVEN_CITY) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x9554, 2);
        CREATEINVITEMS(SLF, 0x955a, 2);
        CREATEINVITEMS(SLF, 0x952a, 5);
        CREATEINVITEMS(SLF, 0x877e, 5);
        CREATEINVITEMS(SLF, 0x8781, 5);
        CREATEINVITEMS(SLF, 0x878d, 1);
        CREATEINVITEMS(SLF, 0x8581, 20);
        CREATEINVITEMS(SLF, 0x857e, 1);
        CREATEINVITEMS(SLF, 0x8584, 1);
        CREATEINVITEMS(SLF, 0x8585, 1);
        CREATEINVITEMS(SLF, 0x858a, 1);
        CREATEINVITEMS(SLF, 0x85b6, 1);
        CREATEINVITEMS(SLF, 0x8583, 1);
        CREATEINVITEMS(SLF, 0x9058, 1);
        CREATEINVITEMS(SLF, 0x84ca, 15);
        CREATEINVITEMS(SLF, 0x87b6, 12);
        CREATEINVITEMS(SLF, 0x8378, 2);
        CREATEINVITEMS(SLF, 0xca47, 1);
        CREATEINVITEMS(SLF, 0x905f, 4);
        CREATEINVITEMS(SLF, 0x864b, 5);
        CREATEINVITEMS(SLF, 0x864d, 3);
        CREATEINVITEMS(SLF, 0x935a, 2);
        CREATEINVITEMS(SLF, 0x936a, 3);
        CREATEINVITEMS(SLF, 0x8630, 5);
        CREATEINVITEMS(SLF, 0x861e, 3);
        CREATEINVITEMS(SLF, 0x8632, 3);
        CREATEINVITEMS(SLF, 0x8623, 2);
        CREATEINVITEMS(SLF, 0x9342, 20);
        CREATEINVITEMS(SLF, 0x8f29, 1);
        CREATEINVITEMS(SLF, 0x8f70, 1);
        CREATEINVITEMS(SLF, 0x8f1f, 10);
        CREATEINVITEMS(SLF, 0x8e1f, 3);
        CREATEINVITEMS(SLF, 0x84c4, 10);
        CREATEINVITEMS(SLF, 0x8e14, 20);
        CREATEINVITEMS(SLF, 0x9560, 1);
        CREATEINVITEMS(SLF, 0x956c, 1);
        CREATEINVITEMS(SLF, 0x956a, 1);
        VEIT_ITEMSGIVEN_CITY = TRUE;
    };
}
