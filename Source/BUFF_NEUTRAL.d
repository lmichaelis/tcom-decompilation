const int BUFF_NEUTRAL = 0;
const int BUFF_BAD = -1;
const int BUFFLIST_SIZE = 15;
class LCBUFF {
	var string NAME;
	var int BUFFTYPE;
	var int TARGETID;
	var int DURATIONMS;
	var int TICKMS;
	var int NEXTTICKNR;
	var int ONAPPLY;
	var int ONTICK;
	var int ONREMOVED;
	var string BUFFTEX;
	var int _STARTEDTIME;
	var int _ENDTIME;
	var int SHOW;
};
func void LCBUFF_ARCHIVER(var LCBUFF THIS) {
    PM_SAVESTRING("name", THIS.NAME);
    PM_SAVEINT("bufftype", THIS.BUFFTYPE);
    PM_SAVEINT("targetID", THIS.TARGETID);
    PM_SAVEINT("durationMS", THIS.DURATIONMS);
    PM_SAVEINT("tickMS", THIS.TICKMS);
    PM_SAVEINT("nextTickNr", THIS.NEXTTICKNR);
    PM_SAVEINT("_startedTime", THIS._STARTEDTIME);
    PM_SAVEINT("_endTime", THIS._ENDTIME);
    PM_SAVEINT("show", THIS.SHOW);
    if ((THIS.ONAPPLY) > (0)) {
        PM_SAVEFUNCID("OnApply", THIS.ONAPPLY);
    };
    if ((THIS.ONTICK) > (0)) {
        PM_SAVEFUNCID("OnTick", THIS.ONTICK);
    };
    if ((THIS.ONREMOVED) > (0)) {
        PM_SAVEFUNCID("OnRemoved", THIS.ONREMOVED);
    };
    PM_SAVESTRING("buffTex", THIS.BUFFTEX);
}

var int BUFFLIST_HERO;
var int BUFFLIST_VIEWS[15];
var int BUFFLIST_VIEWS_LENGTH;
const int BUFF_Y = 0;
const int BUFF_HEIGHT = 400;
func void BUFFLIST_INIT() {
    if (!(BUFFS_DISPLAYFORHERO)) {
        return;
    };
    BUFFLIST_HERO = NEW(10672);
    if (BUFF_FADEOUT) {
        FF_APPLYEXTGT(11557, 0, -(1));
    };
}

func void BUFFLIST_ADD(var int BH) {
    var int XSIZE;
    var int V;
    var LCBUFF B;
    var ZCARRAY ARR;
    ARR = GET(BUFFLIST_HERO);
    B = GET(BH);
    MEM_ARRAYINSERT(GETPTR(BUFFLIST_HERO), BH);
    V = MEM_READSTATARR(BUFFLIST_VIEWS[0], (ARR.NUMINARRAY) - (1));
    if ((GETPTR(V)) == (0)) {
        PRINT_GETSCREENSIZE();
        XSIZE = ROUNDF(DIVF(MKF(BUFF_HEIGHT), PRINT_RATIO));
        V = VIEW_CREATE(((100) + (XSIZE)) * ((ARR.NUMINARRAY) - (1)), BUFF_Y, (((100) + (XSIZE)) * ((ARR.NUMINARRAY) - (1))) + (XSIZE), (BUFF_Y) + (BUFF_HEIGHT));
        MEM_WRITESTATARR(BUFFLIST_VIEWS[0], (ARR.NUMINARRAY) - (1), V);
    };
    VIEW_SETTEXTURE(V, B.BUFFTEX);
    VIEW_OPEN(V);
}

func void _BUFFLIST_UPDATEDURATIONFADE() {
    var int NEW_ALPHA;
    var int NEW_ALPHAF;
    var ZCVIEW VIEW;
    var int NOW;
    var LCBUFF BUFF;
    var int H;
    var int TIMEDIFF;
    var int BL_VIEW;
    var int CHANGEVIEWS;
    var int VIEWSTATE;
    var int XF;
    var int K;
    var ZCARRAY ARR;
    ARR = GET(BUFFLIST_HERO);
    if ((MEM_GAME.SHOWPLAYERSTATUS) == (VIEWSTATE)) {
        VIEWSTATE = !(MEM_GAME.SHOWPLAYERSTATUS);
        CHANGEVIEWS = TRUE;
    };
    REPEAT(K, ARR.NUMINARRAY);
    BL_VIEW = MEM_READSTATARR(BUFFLIST_VIEWS[0], K);
    if (CHANGEVIEWS) {
        if (MEM_GAME.SHOWPLAYERSTATUS) {
            VIEW_OPEN(BL_VIEW);
        } else {
            VIEW_CLOSE(BL_VIEW);
        };
    };
    H = MEM_READINTARRAY(ARR.ARRAY, K);
    if (HLP_ISVALIDHANDLE(H)) {
        BUFF = GET(H);
        NOW = TIMERGT();
        VIEW = GET(BL_VIEW);
        TIMEDIFF = (BUFF._ENDTIME) - (NOW);
        if ((TIMEDIFF) < (0)) {
            TIMEDIFF = 0;
        };
        XF = FRACF(TIMEDIFF, BUFF.DURATIONMS);
        NEW_ALPHAF = ADDF(MKF(160), MULF(DIVF(MKF(128), TAN(FLOATEINS)), TAN(SUBF(MULF(MKF(2), XF), FLOATEINS))));
        NEW_ALPHA = ROUNDF(NEW_ALPHAF);
        if ((NEW_ALPHA) < (0)) {
            NEW_ALPHA = 0;
        } else if ((NEW_ALPHA) > (255)) {
            NEW_ALPHA = 255;
        };
        VIEW_SETCOLOR(BL_VIEW, RGBA(255, 255, 255, NEW_ALPHA));
    };
    END;
    CHANGEVIEWS = FALSE;
}

func int SAVE_GETFUNCID(var func F) {
    var int RES;
    var int I;
    I = MEM_GETUSEINSTANCE();
    RES = MEM_GETFUNCID(11572);
    MEM_SETUSEINSTANCE(I);
    return RES;
}

var int BUFF_BUFFHNDL;
func int _BUFF_CHECK(var int BUFFH) {
    var LCBUFF B;
    B = GET(BUFFH);
    if ((BUFF_NPCID) == (B.TARGETID)) {
        BUFF_BUFFHNDL = BUFFH;
        return RBREAK;
    };
    return RCONTINUE;
}

func void _BUFF_DISPATCHER(var int BH) {
    var OCNPC TARGET;
    var LCBUFF B;
    if (!(HLP_ISVALIDHANDLE(BH))) {
        return;
    };
    B = GET(BH);
    if ((B.NEXTTICKNR) > ((B.DURATIONMS) / (B.TICKMS))) {
        FF_REMOVEDATA(11583, BH);
        BH;
        MEM_CALL(11618);
        return;
    };
    TARGET = _^(NPC_FINDBYID(B.TARGETID));
    if ((B.ONTICK) && (!(NPC_ISDEAD(TARGET)))) {
        BH;
        MEM_CALLBYID(B.ONTICK);
        if (!(HLP_ISVALIDHANDLE(BH))) {
            return;
        };
    };
    B.NEXTTICKNR += 1;
}

func void BUFF_ADDTIME(var int BH) {
    var int TIME;
    var LCBUFF B;
    if (!(HLP_ISVALIDHANDLE(BH))) {
        return;
    };
    B = GET(BH);
    TIME = B.DURATIONMS;
    B.DURATIONMS += TIME;
    B._ENDTIME += TIME;
}

func int BUFF_APPLY(var C_NPC NPC, var int BUFF) {
    return BUFF_APPLYEXT(NPC, BUFF, -(1), FALSE, FALSE);
}

func int BUFF_APPLYORADDTIME(var C_NPC N, var int BUFF) {
    var int BH;
    BH = BUFF_HAS(N, BUFF);
    if (BH) {
        BUFF_ADDTIME(BH);
        return BH;
    };
    return BUFF_APPLY(N, BUFF);
}

func void _BUFF_REMOVEALL_SUB(var int BUFFH) {
    var LCBUFF BUFF;
    BUFF = GET(BUFFH);
    if ((BUFF.TARGETID) == (BUFF_NPCID)) {
        BUFF_REMOVE(BUFFH);
    };
}

