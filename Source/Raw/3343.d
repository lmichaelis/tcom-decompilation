var int LOKVAR_ITEMSGIVEN_CHAPTER_1 = 0;
var int LOKVAR_ITEMSGIVEN_CHAPTER_2 = 0;
var int LOKVAR_ITEMSAFTERRIORDIANQUEST1 = 0;
var int LOKVAR_ITEMSAFTERRIORDIANQUEST2 = 0;
func void B_GIVETRADEINV_LOKVAR(var C_NPC SLF) {
    if (((KAPITEL) >= (1)) && ((LOKVAR_ITEMSGIVEN_CHAPTER_1) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x83bb, 1);
        CREATEINVITEMS(SLF, 0x877e, 5);
        CREATEINVITEMS(SLF, 0x8781, 4);
        CREATEINVITEMS(SLF, 0x8785, 3);
        CREATEINVITEMS(SLF, 0x8780, 8);
        CREATEINVITEMS(SLF, 0x8784, 8);
        CREATEINVITEMS(SLF, 0x8786, 4);
        CREATEINVITEMS(SLF, 0x83b2, 2);
        CREATEINVITEMS(SLF, 0x83b3, 2);
        CREATEINVITEMS(SLF, 0x83b4, 2);
        CREATEINVITEMS(SLF, 0x83b6, 2);
        CREATEINVITEMS(SLF, 0x952c, 2);
        CREATEINVITEMS(SLF, 0x879e, 3);
        CREATEINVITEMS(SLF, 0x835e, 1);
        CREATEINVITEMS(SLF, 0x8361, 1);
        CREATEINVITEMS(SLF, 0x8408, 1);
        CREATEINVITEMS(SLF, 0x83f0, 1);
        CREATEINVITEMS(SLF, 0x83f9, 1);
        CREATEINVITEMS(SLF, 0x86de, 1);
        CREATEINVITEMS(SLF, 0x86c0, 1);
        CREATEINVITEMS(SLF, 0x86a8, 1);
        CREATEINVITEMS(SLF, 0x947c, 1);
        CREATEINVITEMS(SLF, 0x85e8, 12);
        CREATEINVITEMS(SLF, 0x85ea, 8);
        CREATEINVITEMS(SLF, 0x85ec, 5);
        CREATEINVITEMS(SLF, 0x85e2, 10);
        CREATEINVITEMS(SLF, 0x85e4, 7);
        CREATEINVITEMS(SLF, 0x85e6, 4);
        CREATEINVITEMS(SLF, 0x85ee, 1);
        CREATEINVITEMS(SLF, 0x85f0, 1);
        CREATEINVITEMS(SLF, 0x85f2, 4);
        CREATEINVITEMS(SLF, 0x85fa, 8);
        CREATEINVITEMS(SLF, 0x85fc, 6);
        CREATEINVITEMS(SLF, 0x85f8, 4);
        CREATEINVITEMS(SLF, 0x8630, 6);
        CREATEINVITEMS(SLF, 0x8632, 4);
        CREATEINVITEMS(SLF, 0x8635, 1);
        CREATEINVITEMS(SLF, 0x9342, 5);
        CREATEINVITEMS(SLF, 0x861e, 5);
        CREATEINVITEMS(SLF, 0x8623, 2);
        CREATEINVITEMS(SLF, 0x864b, 5);
        CREATEINVITEMS(SLF, 0x936a, 1);
        CREATEINVITEMS(SLF, 0x8581, 20);
        CREATEINVITEMS(SLF, 0x85b0, 2);
        CREATEINVITEMS(SLF, 0x857e, 2);
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        CREATEINVITEMS(SLF, 0x889e, 1);
        CREATEINVITEMS(SLF, 0x88e4, 1);
        CREATEINVITEMS(SLF, 0x85af, 4);
        CREATEINVITEMS(SLF, 0x85ae, 4);
        CREATEINVITEMS(SLF, 0x85b1, 4);
        CREATEINVITEMS(SLF, 0x8c37, 1);
        CREATEINVITEMS(SLF, 0x8c3d, 1);
        CREATEINVITEMS(SLF, 0x88c8, 1);
        CREATEINVITEMS(SLF, 0x9c6e, 1);
        CREATEINVITEMS(SLF, 0x9c78, 1);
        CREATEINVITEMS(SLF, 0x9c7b, 1);
        CREATEINVITEMS(SLF, 0x9c7e, 1);
        CREATEINVITEMS(SLF, 0x9c81, 1);
        CREATEINVITEMS(SLF, 0x9da8, 1);
        CREATEINVITEMS(SLF, 0x9db0, 1);
        CREATEINVITEMS(SLF, 0x9db3, 1);
        LOKVAR_ITEMSGIVEN_CHAPTER_1 = TRUE;
    };
    if (((LOKVAR_ITEMSAFTERRIORDIANQUEST1) == (FALSE)) && ((LOG_GETSTATUS(MIS_Q108)) == (LOG_SUCCESS))) {
        CREATEINVITEMS(SLF, 0x9526, 2);
        CREATEINVITEMS(SLF, 0x889e, 1);
        LOKVAR_ITEMSAFTERRIORDIANQUEST1 = TRUE;
    };
    if (((LOKVAR_ITEMSAFTERRIORDIANQUEST2) == (FALSE)) && ((LOG_GETSTATUS(MIS_SQ121)) == (LOG_SUCCESS))) {
        CREATEINVITEMS(SLF, 0x8ce2, 2);
        CREATEINVITEMS(SLF, 0x8c94, 28);
        CREATEINVITEMS(SLF, 0x8c95, 34);
        CREATEINVITEMS(SLF, 0x8787, 1);
        CREATEINVITEMS(SLF, 0x956c, 1);
        LOKVAR_ITEMSAFTERRIORDIANQUEST2 = TRUE;
    };
    if (((KAPITEL) >= (2)) && ((LOKVAR_ITEMSGIVEN_CHAPTER_2) == (FALSE))) {
        CREATEINVITEMS(SLF, 0x83bd, 1);
        CREATEINVITEMS(SLF, 0x877e, 4);
        CREATEINVITEMS(SLF, 0x8781, 2);
        CREATEINVITEMS(SLF, 0x8785, 2);
        CREATEINVITEMS(SLF, 0x8788, 3);
        CREATEINVITEMS(SLF, 0x8780, 2);
        CREATEINVITEMS(SLF, 0x8784, 2);
        CREATEINVITEMS(SLF, 0x8786, 1);
        CREATEINVITEMS(SLF, 0x8789, 3);
        CREATEINVITEMS(SLF, 0x878d, 2);
        CREATEINVITEMS(SLF, 0x83b2, 1);
        CREATEINVITEMS(SLF, 0x83b3, 1);
        CREATEINVITEMS(SLF, 0x83b4, 1);
        CREATEINVITEMS(SLF, 0x83b6, 1);
        CREATEINVITEMS(SLF, 0x88e2, 1);
        CREATEINVITEMS(SLF, 0x88e6, 1);
        CREATEINVITEMS(SLF, 0x88e8, 1);
        CREATEINVITEMS(SLF, 0x9c60, 1);
        CREATEINVITEMS(SLF, 0x9c68, 1);
        CREATEINVITEMS(SLF, 0x9c6b, 1);
        CREATEINVITEMS(SLF, 0x85e8, 6);
        CREATEINVITEMS(SLF, 0x85ea, 4);
        CREATEINVITEMS(SLF, 0x85ec, 2);
        CREATEINVITEMS(SLF, 0x85e2, 4);
        CREATEINVITEMS(SLF, 0x85e4, 2);
        CREATEINVITEMS(SLF, 0x85e6, 1);
        CREATEINVITEMS(SLF, 0x85f2, 2);
        CREATEINVITEMS(SLF, 0x85fa, 5);
        CREATEINVITEMS(SLF, 0x85fc, 4);
        CREATEINVITEMS(SLF, 0x85f8, 2);
        CREATEINVITEMS(SLF, 0x8630, 4);
        CREATEINVITEMS(SLF, 0x8632, 2);
        CREATEINVITEMS(SLF, 0x8635, 1);
        CREATEINVITEMS(SLF, 0x9342, 5);
        CREATEINVITEMS(SLF, 0x861e, 3);
        CREATEINVITEMS(SLF, 0x8623, 1);
        CREATEINVITEMS(SLF, 0x864b, 3);
        CREATEINVITEMS(SLF, 0x864d, 2);
        CREATEINVITEMS(SLF, 0x935c, 1);
        CREATEINVITEMS(SLF, 0x936a, 1);
        CREATEINVITEMS(SLF, 0x9362, 2);
        CREATEINVITEMS(SLF, 0x9366, 2);
        CREATEINVITEMS(SLF, 0x8581, 20);
        CREATEINVITEMS(SLF, 0x8ce2, 1);
        CREATEINVITEMS(SLF, 0x85af, 3);
        CREATEINVITEMS(SLF, 0x85ae, 3);
        CREATEINVITEMS(SLF, 0x956c, 1);
        CREATEINVITEMS(SLF, 0x86e1, 1);
        CREATEINVITEMS(SLF, 0x87ab, 1);
        CREATEINVITEMS(SLF, 0x8ce2, 1);
        CREATEINVITEMS(SLF, 0x8c94, 20);
        CREATEINVITEMS(SLF, 0x8c95, 28);
        CREATEINVITEMS(SLF, 0x9526, 1);
        LOKVAR_ITEMSGIVEN_CHAPTER_2 = TRUE;
    };
}
