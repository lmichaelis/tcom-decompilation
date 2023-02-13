class _INT {
	var int I;
};
instance INT@(_INT);
instance FUNC@(_INT);
instance FLOAT@(_INT);
class _STRING {
	var string S;
};
instance STRING@(_STRING);
const string ZCLIST_STRUCT = "auto zCList*";
instance ZCLIST@(ZCLIST);
const string ZCLISTSORT_STRUCT = "auto|2 zCListSort*";
instance ZCLISTSORT@(ZCLISTSORT);
func void ZCARRAY_ARCHIVER(var ZCARRAY THIS) {
    PM_SAVEINT("length", THIS.NUMINARRAY);
    PM_SAVEINTARRAY("array", THIS.ARRAY, THIS.NUMINARRAY);
}

func void ZCARRAY_DELETE(var ZCARRAY THIS) {
    if (THIS.ARRAY) {
        MEM_FREE(THIS.ARRAY);
    };
}

instance ZCVIEWTEXT@(ZCVIEWTEXT) {
    _VTBL = ZCVIEWTEXT_VTBL;
    INPRINTWIN = 0;
    TIMER = 0;
    TIMED = 0;
    COLORED = 0;
    COLOR = 0;
}

func void ZCVIEWTEXT_ARCHIVER(var ZCVIEWTEXT THIS) {
    PM_SAVEINT("vtbl", THIS._VTBL);
    PM_SAVEINT("posx", THIS.POSX);
    PM_SAVEINT("posy", THIS.POSY);
    PM_SAVESTRING("text", THIS.TEXT);
    PM_SAVESTRING("fontname", PRINT_GETFONTNAME(THIS.FONT));
    PM_SAVEINT("timer", THIS.TIMER);
    PM_SAVEINT("inPrintWin", THIS.INPRINTWIN);
    PM_SAVEINT("color", THIS.COLOR);
    PM_SAVEINT("timed", THIS.TIMED);
    PM_SAVEINT("colored", THIS.COLORED);
}

func void ZCVIEWTEXT_DELETE(var ZCVIEWTEXT TXT) {
    var int OFFS;
    var int LIST;
    var ZCVIEW V;
    TXT.TIMER = 0;
    TXT.TIMED = 1;
    V = _^(MEM_GAME.ARRAY_VIEW[0]);
    LIST = _@(V.TEXTLINES_DATA);
    OFFS = LIST_CONTAINS(LIST, _@(10679));
    if ((OFFS) > (1)) {
        LIST_DELETE(LIST, OFFS);
    };
}

const string ZCLIST__ZCVIEWTEXT_STRUCT = "zCViewText* zCList__zCViewText*";
instance ZCLIST__ZCVIEWTEXT@(ZCLIST__ZCVIEWTEXT);
