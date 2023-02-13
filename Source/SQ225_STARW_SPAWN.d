func void SQ225_STARW_SPAWN() {
    WLD_INSERTNPC(50952, "PART9_SQ225_STRAW_01");
    WLD_INSERTNPC(50953, "PART9_SQ225_STRAW_02");
    WLD_INSERTNPC(50954, "PART9_SQ225_STRAW_03");
    WLD_INSERTNPC(50955, "PART9_SQ225_STRAW_04");
    WLD_INSERTNPC(50956, "PART9_SQ225_STRAW_05");
    WLD_INSERTNPC(50957, "PART9_SQ225_STRAW_06");
    WLD_INSERTNPC(50958, "PART9_SQ225_STRAW_07");
    WLD_INSERTNPC(50959, "PART9_SQ225_STRAW_08");
    WLD_INSERTNPC(50960, "PART9_SQ225_STRAW_09");
    WLD_INSERTNPC(50961, "PART9_SQ225_STRAW_10");
    STARW_SQ225_01.FLAGS = 2;
    STARW_SQ225_02.FLAGS = 2;
    STARW_SQ225_03.FLAGS = 2;
    STARW_SQ225_04.FLAGS = 2;
    STARW_SQ225_05.FLAGS = 2;
    STARW_SQ225_06.FLAGS = 2;
    STARW_SQ225_07.FLAGS = 2;
    STARW_SQ225_08.FLAGS = 2;
    STARW_SQ225_09.FLAGS = 2;
    STARW_SQ225_10.FLAGS = 2;
    STARW_SQ225_01.NOFOCUS = TRUE;
    STARW_SQ225_02.NOFOCUS = TRUE;
    STARW_SQ225_03.NOFOCUS = TRUE;
    STARW_SQ225_04.NOFOCUS = TRUE;
    STARW_SQ225_05.NOFOCUS = TRUE;
    STARW_SQ225_06.NOFOCUS = TRUE;
    STARW_SQ225_07.NOFOCUS = TRUE;
    STARW_SQ225_08.NOFOCUS = TRUE;
    STARW_SQ225_09.NOFOCUS = TRUE;
    STARW_SQ225_10.NOFOCUS = TRUE;
}

func void SQ225_STARW_FIGHTENABLE() {
    PRINTD("Walka");
    STARW_SQ225_01.FLAGS = 0;
    STARW_SQ225_02.FLAGS = 0;
    STARW_SQ225_03.FLAGS = 0;
    STARW_SQ225_04.FLAGS = 0;
    STARW_SQ225_05.FLAGS = 0;
    STARW_SQ225_06.FLAGS = 0;
    STARW_SQ225_07.FLAGS = 0;
    STARW_SQ225_08.FLAGS = 0;
    STARW_SQ225_09.FLAGS = 0;
    STARW_SQ225_10.FLAGS = 0;
    STARW_SQ225_01.NOFOCUS = FALSE;
    STARW_SQ225_02.NOFOCUS = FALSE;
    STARW_SQ225_03.NOFOCUS = FALSE;
    STARW_SQ225_04.NOFOCUS = FALSE;
    STARW_SQ225_05.NOFOCUS = FALSE;
    STARW_SQ225_06.NOFOCUS = FALSE;
    STARW_SQ225_07.NOFOCUS = FALSE;
    STARW_SQ225_08.NOFOCUS = FALSE;
    STARW_SQ225_09.NOFOCUS = FALSE;
    STARW_SQ225_10.NOFOCUS = FALSE;
}

func void SQ225_STARW_FIGHTDISABLE() {
    PRINTD("Nie ma walki");
    STARW_SQ225_01.FLAGS = 2;
    STARW_SQ225_02.FLAGS = 2;
    STARW_SQ225_03.FLAGS = 2;
    STARW_SQ225_04.FLAGS = 2;
    STARW_SQ225_05.FLAGS = 2;
    STARW_SQ225_06.FLAGS = 2;
    STARW_SQ225_07.FLAGS = 2;
    STARW_SQ225_08.FLAGS = 2;
    STARW_SQ225_09.FLAGS = 2;
    STARW_SQ225_10.FLAGS = 2;
    STARW_SQ225_01.NOFOCUS = TRUE;
    STARW_SQ225_02.NOFOCUS = TRUE;
    STARW_SQ225_03.NOFOCUS = TRUE;
    STARW_SQ225_04.NOFOCUS = TRUE;
    STARW_SQ225_05.NOFOCUS = TRUE;
    STARW_SQ225_06.NOFOCUS = TRUE;
    STARW_SQ225_07.NOFOCUS = TRUE;
    STARW_SQ225_08.NOFOCUS = TRUE;
    STARW_SQ225_09.NOFOCUS = TRUE;
    STARW_SQ225_10.NOFOCUS = TRUE;
}

