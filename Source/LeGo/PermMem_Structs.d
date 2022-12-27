class _EMPTY {
};
instance _EMPTY@(_EMPTY)
class _INT {
	var int I;
};

instance INT@(_INT)
instance FUNC@(_INT)
instance FLOAT@(_INT)
class _STRING {
	var string S;
};

instance STRING@(_STRING)
const string ZCLIST_STRUCT = "auto zCList*";
instance ZCLIST@(ZCLIST)
const string ZCLISTSORT_STRUCT = "auto|2 zCListSort*";
instance ZCLISTSORT@(ZCLISTSORT)
func void ZCARRAY_ARCHIVER(var ZCARRAY THIS) {
    PM_SAVEINT("length", THIS.NUMINARRAY);
    PM_SAVEINTARRAY("array", THIS.ARRAY, THIS.NUMINARRAY);
}

func void ZCARRAY_UNARCHIVER(var ZCARRAY THIS) {
    THIS.NUMINARRAY = PM_LOAD("length");
    THIS.NUMALLOC = THIS.NUMINARRAY;
    THIS.ARRAY = PM_LOAD("array");
}

func void ZCARRAY_DELETE(var ZCARRAY THIS) {
    if (THIS.ARRAY) {
        MEM_FREE(THIS.ARRAY);
    };
}

instance ZCARRAY@(ZCARRAY)
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

func void ZCVIEWTEXT_UNARCHIVER(var ZCVIEWTEXT THIS) {
    THIS._VTBL = PM_LOADINT("vtbl");
    THIS.POSX = PM_LOADINT("posx");
    THIS.POSY = PM_LOADINT("posy");
    THIS.TEXT = PM_LOADSTRING("text");
    THIS.FONT = PRINT_GETFONTPTR(PM_LOADSTRING("fontname"));
    THIS.TIMER = PM_LOADINT("timer");
    THIS.INPRINTWIN = PM_LOADINT("inPrintWin");
    THIS.COLOR = PM_LOADINT("color");
    THIS.TIMED = PM_LOADINT("timed");
    THIS.COLORED = PM_LOADINT("colored");
}

func void ZCVIEWTEXT_DELETE(var ZCVIEWTEXT TXT) {
    TXT.TIMER = 0;
    TXT.TIMED = 1;
    V = _^(MEM_GAME.ARRAY_VIEW[0]);
    LIST = _@(V.TEXTLINES_DATA);
    OFFS = LIST_CONTAINS(LIST, _@(0x29b7));
    if ((OFFS) > (1)) {
        LIST_DELETE(LIST, OFFS);
    };
}

instance ZCVIEWTEXT_DELETE.V(ZCVIEW)
var int ZCVIEWTEXT_DELETE.LIST = 0;
var int ZCVIEWTEXT_DELETE.OFFS = 0;
class ZCLIST__ZCVIEWTEXT {
	var int ZCVIEWPTR;
	var int NEXT;
};


const string ZCLIST__ZCVIEWTEXT_STRUCT = "zCViewText* zCList__zCViewText*";
instance ZCLIST__ZCVIEWTEXT@(ZCLIST__ZCVIEWTEXT)
