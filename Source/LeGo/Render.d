const int _RENDER_WLD = 0;
const int _RENDER_LIST = 0;
class RENDERITEM {
	var int INST;
	var int ITMPTR;
	var int VIEW;
	var int VIEW_OPEN;
	var int PRIORITY;
};





instance RENDERITEM@(RENDERITEM)
func int RENDER_ADDITEMPRIO(var int ITEMINST, var int X1, var int Y1, var int X2, var int Y2, var int PRIORITY) {
    PTR = CREATE(0x2e84);
    ITM = _^(PTR);
    ITM.INST = ITEMINST;
    ITM.VIEW = VIEWPTR_CREATE(X1, Y1, X2, Y2);
    ITM.PRIORITY = PRIORITY;
    VIEWPTR_OPEN(ITM.VIEW);
    ITM.ITMPTR = ITM_GETPTR(ITEMINST);
    L = _^(_RENDER_LIST);
    if (L.DATA) {
        LIST_INSERTSORTED(_RENDER_LIST, PTR, 0x2eac);
    };
    L.DATA = PTR;
    return PTR;
}

var int RENDER_ADDITEMPRIO.PTR = 0;
instance RENDER_ADDITEMPRIO.ITM(RENDERITEM)
instance RENDER_ADDITEMPRIO.L(ZCLIST)
func int RENDER_ADDITEM(var int ITEMINST, var int X1, var int Y1, var int X2, var int Y2) {
    return RENDER_ADDITEMPRIO(ITEMINST, X1, Y1, X2, Y2, 0);
}

func int RENDER_ADDVIEWPRIO(var int VIEW, var int PRIORITY) {
    PTR = CREATE(0x2e84);
    ITM = _^(PTR);
    ITM.INST = 0;
    ITM.VIEW = VIEW;
    ITM.PRIORITY = PRIORITY;
    ITM.VIEW_OPEN = 1;
    ITM.ITMPTR = 0;
    L = _^(_RENDER_LIST);
    if (L.DATA) {
        LIST_INSERTSORTED(_RENDER_LIST, PTR, 0x2eac);
    };
    L.DATA = PTR;
    return PTR;
}

var int RENDER_ADDVIEWPRIO.PTR = 0;
instance RENDER_ADDVIEWPRIO.ITM(RENDERITEM)
instance RENDER_ADDVIEWPRIO.L(ZCLIST)
func int RENDER_ADDVIEW(var int VIEW) {
    return RENDER_ADDVIEWPRIO(VIEW, 0);
}

func void RENDER_OPENVIEW(var int PTR) {
    ITM = _^(PTR);
    ITM.VIEW_OPEN = 1;
    if (ITM.ITMPTR) {
        VIEWPTR_OPEN(ITM.VIEW);
    };
}

instance RENDER_OPENVIEW.ITM(RENDERITEM)
func void RENDER_CLOSEVIEW(var int PTR) {
    ITM = _^(PTR);
    ITM.VIEW_OPEN = 0;
    if (ITM.ITMPTR) {
        VIEWPTR_CLOSE(ITM.VIEW);
    };
}

instance RENDER_CLOSEVIEW.ITM(RENDERITEM)
func void RENDER_REMOVE(var int PTR) {
    ITM = _^(PTR);
    if (ITM.VIEW) {
        VIEWPTR_DELETE(ITM.VIEW);
    };
    MEMINT_GETMEMHELPER();
    NPC_REMOVEINVITEM(MEM_HELPER, ITM.INST);
    OFFS = LIST_CONTAINS(_RENDER_LIST, PTR);
    if ((OFFS) > (0)) {
        LIST_DELETE(_RENDER_LIST, OFFS);
    };
    MEM_FREE(PTR);
}

instance RENDER_REMOVE.ITM(RENDERITEM)
var int RENDER_REMOVE.OFFS = 0;
func void _RENDER_HOOK_SUB(var int LIST) {
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

instance _RENDER_HOOK_SUB.ITM(RENDERITEM)
instance _RENDER_HOOK_SUB.L(ZCLIST)
func void _RENDER_HOOK() {
    if (!(_RENDER_LIST)) {
        return;
    };
    if (MEM_GAME.SINGLESTEP) {
        return;
    };
    LIST_FORF(_RENDER_LIST, 0x2ea7);
}

func int _RENDER_COMPARATOR(var int DATA1, var int DATA2) {
    ITM1 = _^(DATA1);
    ITM2 = _^(DATA2);
    return (ITM1.PRIORITY) > (ITM2.PRIORITY);
}

instance _RENDER_COMPARATOR.ITM1(RENDERITEM)
instance _RENDER_COMPARATOR.ITM2(RENDERITEM)
instance OWORLD@(OWORLD)
func void _RENDER_INIT() {
    if (_RENDER_WLD) {
        return;
    };
    HOOKENGINEF(OCGAME__RENDERX, 6, 0x2eab);
    _RENDER_LIST = LIST_CREATE(0);
    _RENDER_WLD = CREATE(0x2eb1);
    CALL__THISCALL(_RENDER_WLD, ZCWORLD__ZCWORLD);
    if (MEMINT_SWITCHG1G2(FALSE, TRUE)) {
        MEM_WRITEINT((_RENDER_WLD) + (136), 1);
    };
}

