func void B_SETNPCVISUAL(var C_NPC SLF, var int GENDER, var string HEADMESH, var int FACETEX, var int BODYTEX, var int ARMORINSTANCE) {
    MDL_SETVISUAL(SLF, HUMANSMDS);
    if ((GENDER) == (MALE)) {
        MDL_SETVISUALBODY(SLF, HUMBODYNAKED0, BODYTEX, 0, HEADMESH, FACETEX, 0, ARMORINSTANCE);
        if ((SLF.ATTRIBUTE[4]) < (50)) {
            MDL_SETMODELSCALE(SLF, 0x3f666666, 0x3f800000, 0x3f800000);
        };
        if ((SLF.ATTRIBUTE[4]) > (100)) {
            MDL_SETMODELSCALE(SLF, 0x3f8ccccd, 0x3f800000, 0x3f800000);
        };
    };
    if (((BODYTEX) >= (0)) && ((BODYTEX) <= (3))) {
        BODYTEX = (BODYTEX) + (4);
    };
    MDL_SETVISUALBODY(SLF, "Hum_Body_Babe0", BODYTEX, 0, HEADMESH, FACETEX, 0, ARMORINSTANCE);
}

