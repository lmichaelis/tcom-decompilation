func void APPLYRETROFIXES(var int SAVEVERSION, var int CURRENTVERSION) {
    MEM_INFO(CS4("Applying retrofixes: from ", I2S(SAVEVERSION), " to ", I2S(CURRENTVERSION)));
    FOREACHHNDL(0x5589, 0x17295);
}

func void FIXBROKENCAMERA() {
    ISINCAMERA = FALSE;
    ENABLESAVEGAME(TRUE);
    CURRENTTRIGGEREDCAMERAPTR = 0;
}

