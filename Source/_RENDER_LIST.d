const int _RENDER_LIST = 0;
class RENDERITEM {
	var int INST;
	var int ITMPTR;
	var int VIEW;
	var int VIEW_OPEN;
	var int PRIORITY;
};
instance RENDERITEM@(RENDERITEM);
func int RENDER_ADDITEMPRIO(var int ITEMINST, var int X1, var int Y1, var int X2, var int Y2, var int PRIORITY) {
    var ZCLIST L;
    var RENDERITEM ITM;
    var int PTR;
    PTR = CREATE(11908);
    ITM = _^(PTR);
    ITM.INST = ITEMINST;
    ITM.VIEW = VIEWPTR_CREATE(X1, Y1, X2, Y2);
    ITM.PRIORITY = PRIORITY;
    VIEWPTR_OPEN(ITM.VIEW);
    ITM.ITMPTR = ITM_GETPTR(ITEMINST);
    L = _^(_RENDER_LIST);
    if (L.DATA) {
        LIST_INSERTSORTED(_RENDER_LIST, PTR, 11948);
    };
    L.DATA = PTR;
    return PTR;
}

func void _RENDER_HOOK_SUB(var int LIST) {
    var RENDERITEM ITM;
    var ZCLIST L;
    L = _^(LIST);
    if (L.DATA) {
        ITM = _^(L.DATA);
        if (ITM.ITMPTR) {
            OCITEM_RENDER(ITM.ITMPTR, _RENDER_WLD, ITM.VIEW, FLOATNULL);
        } else if ((ITM.VIEW_OPEN) && ((ITM.VIEW) != (0))) {
            VIEWPTR_RENDER(ITM.VIEW);
        };
    };
}

func int _RENDER_COMPARATOR(var int DATA1, var int DATA2) {
    var RENDERITEM ITM2;
    var RENDERITEM ITM1;
    ITM1 = _^(DATA1);
    ITM2 = _^(DATA2);
    return (ITM1.PRIORITY) > (ITM2.PRIORITY);
}

