const int BUFF_GOOD = 1;
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

func void LCBUFF_UNARCHIVER(var LCBUFF THIS) {
    if (PM_EXISTS("name")) {
        THIS.NAME = PM_LOADSTRING("name");
    };
    if (PM_EXISTS("bufftype")) {
        THIS.BUFFTYPE = PM_LOAD("bufftype");
    };
    if (PM_EXISTS("targetID")) {
        THIS.TARGETID = PM_LOAD("targetID");
    };
    if (PM_EXISTS("durationMS")) {
        THIS.DURATIONMS = PM_LOAD("durationMS");
    };
    if (PM_EXISTS("tickMS")) {
        THIS.TICKMS = PM_LOAD("tickMS");
    };
    if (PM_EXISTS("nextTickNr")) {
        THIS.NEXTTICKNR = PM_LOAD("nextTickNr");
    };
    if (PM_EXISTS("_startedTime")) {
        THIS._STARTEDTIME = PM_LOAD("_startedTime");
    };
    if (PM_EXISTS("_endTime")) {
        THIS._ENDTIME = PM_LOAD("_endTime");
    };
    if (PM_EXISTS("show")) {
        THIS.SHOW = PM_LOAD("show");
    };
    if (PM_EXISTS("OnApply")) {
        OBJ = _PM_SEARCHOBJ("OnApply");
        if ((_PM_OBJECTTYPE(OBJ)) == (_PM_STRING)) {
            THIS.ONAPPLY = PM_LOADFUNCID("OnApply");
        } else {
            THIS.ONAPPLY = PM_LOAD("OnApply");
        };
    };
    if (PM_EXISTS("OnTick")) {
        OBJ = _PM_SEARCHOBJ("OnTick");
        if ((_PM_OBJECTTYPE(OBJ)) == (_PM_STRING)) {
            THIS.ONTICK = PM_LOADFUNCID("OnTick");
        } else {
            THIS.ONTICK = PM_LOAD("OnTick");
        };
    };
    if (PM_EXISTS("OnRemoved")) {
        OBJ = _PM_SEARCHOBJ("OnRemoved");
        if ((_PM_OBJECTTYPE(OBJ)) == (_PM_STRING)) {
            THIS.ONREMOVED = PM_LOADFUNCID("OnRemoved");
        } else {
            THIS.ONREMOVED = PM_LOAD("OnRemoved");
        };
    };
    if (PM_EXISTS("buffTex")) {
        THIS.BUFFTEX = PM_LOADSTRING("buffTex");
    };
}

var int LCBUFF_UNARCHIVER.OBJ = 0;
var int BUFFLIST_HERO = 0;
var int BUFFLIST_VIEWS[15] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
var int BUFFLIST_VIEWS_LENGTH = 0;
const int BUFF_Y = 0;
const int BUFF_HEIGHT = 400;
func void BUFFLIST_INIT() {
    if (!(BUFFS_DISPLAYFORHERO)) {
        return;
    };
    BUFFLIST_HERO = NEW(0x29b0);
    if (BUFF_FADEOUT) {
        FF_APPLYEXTGT(0x2d25, 0, -(1));
    };
}

func void BUFFLIST_ADD(var int BH) {
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

instance BUFFLIST_ADD.ARR(ZCARRAY)
instance BUFFLIST_ADD.B(LCBUFF)
var int BUFFLIST_ADD.V = 0;
var int BUFFLIST_ADD.XSIZE = 0;
func void BUFFLIST_REMOVE(var int BH) {
    ARR = GET(BUFFLIST_HERO);
    INDEX = MEM_ARRAYINDEXOF(GETPTR(BUFFLIST_HERO), BH);
    if (((ARR.NUMINARRAY) == (1)) && ((INDEX) == (0))) {
        VIEW_CLOSE(BUFFLIST_VIEWS[0]);
    };
    TEX = VIEW_GETTEXTURE(MEM_READSTATARR(BUFFLIST_VIEWS[0], (ARR.NUMINARRAY) - (1)));
    VIEW_SETTEXTURE(MEM_READSTATARR(BUFFLIST_VIEWS[0], INDEX), TEX);
    VIEW_CLOSE(MEM_READSTATARR(BUFFLIST_VIEWS[0], (ARR.NUMINARRAY) - (1)));
    ARR.NUMINARRAY -= 1;
    if ((INDEX) == (ARR.NUMINARRAY)) {
        return;
    };
    MEM_WRITEINTARRAY(ARR.ARRAY, INDEX, MEM_READINTARRAY(ARR.ARRAY, ARR.NUMINARRAY));
}

instance BUFFLIST_REMOVE.ARR(ZCARRAY)
var int BUFFLIST_REMOVE.INDEX = 0;
var string BUFFLIST_REMOVE.TEX = "";
func void _BUFFLIST_UPDATEDURATIONFADE() {
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

instance _BUFFLIST_UPDATEDURATIONFADE.ARR(ZCARRAY)
var int _BUFFLIST_UPDATEDURATIONFADE.VIEWSTATE = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.CHANGEVIEWS = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.K = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.BL_VIEW = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.H = 0;
instance _BUFFLIST_UPDATEDURATIONFADE.BUFF(LCBUFF)
var int _BUFFLIST_UPDATEDURATIONFADE.NOW = 0;
instance _BUFFLIST_UPDATEDURATIONFADE.VIEW(ZCVIEW)
var int _BUFFLIST_UPDATEDURATIONFADE.TIMEDIFF = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.XF = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.NEW_ALPHAF = 0;
var int _BUFFLIST_UPDATEDURATIONFADE.NEW_ALPHA = 0;
func int SAVE_GETFUNCID(var func F) {
    I = MEM_GETUSEINSTANCE();
    RES = MEM_GETFUNCID(0x2d34);
    MEM_SETUSEINSTANCE(I);
    return RES;
}

var int SAVE_GETFUNCID.I = 0;
var int SAVE_GETFUNCID.RES = 0;
var int BUFF_NPCID = 0;
var int BUFF_BUFFHNDL = 0;
func int _BUFF_CHECK(var int BUFFH) {
    B = GET(BUFFH);
    if ((BUFF_NPCID) == (B.TARGETID)) {
        BUFF_BUFFHNDL = BUFFH;
        return RBREAK;
    };
    return RCONTINUE;
}

instance _BUFF_CHECK.B(LCBUFF)
func int BUFF_HAS(var C_NPC NPC, var int BUFF) {
    if (NPC.AIVAR[89]) {
        BUFF_NPCID = NPC_GETID(NPC);
        BUFF_BUFFHNDL = 0;
        FOREACHHNDL(BUFF, 0x2d39);
        if ((BUFF_BUFFHNDL) != (0)) {
            return BUFF_BUFFHNDL;
        };
    };
    return 0;
}

func void _BUFF_DISPATCHER(var int BH) {
    if (!(HLP_ISVALIDHANDLE(BH))) {
        return;
    };
    B = GET(BH);
    if ((B.NEXTTICKNR) > ((B.DURATIONMS) / (B.TICKMS))) {
        FF_REMOVEDATA(0x2d3f, BH);
        BH;
        MEM_CALL(0x2d62);
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

instance _BUFF_DISPATCHER.B(LCBUFF)
instance _BUFF_DISPATCHER.TARGET(OCNPC)
func void BUFF_REFRESH(var int BH) {
    if (!(HLP_ISVALIDHANDLE(BH))) {
        return;
    };
    B = GET(BH);
    B.NEXTTICKNR = 1;
    B._ENDTIME = (TIMERGT()) + (B.DURATIONMS);
}

instance BUFF_REFRESH.B(LCBUFF)
func void BUFF_ADDTIME(var int BH) {
    if (!(HLP_ISVALIDHANDLE(BH))) {
        return;
    };
    B = GET(BH);
    TIME = B.DURATIONMS;
    B.DURATIONMS += TIME;
    B._ENDTIME += TIME;
}

instance BUFF_ADDTIME.B(LCBUFF)
var int BUFF_ADDTIME.TIME = 0;
func int BUFF_APPLYEXT(var C_NPC NPC, var int BUFF, var int TIME, var int REFRESH, var int ADDTIME) {
    BH = BUFF_HAS(NPC, BUFF);
    if (BH) {
        if (REFRESH) {
            BUFF_REFRESH(BH);
        };
        if (ADDTIME) {
            BUFF_ADDTIME(BH);
        };
    };
    BH = NEW(BUFF);
    B = GET(BH);
    B.TARGETID = NPC_GETID(NPC);
    if ((TIME) > (0)) {
        B.DURATIONMS = TIME;
    };
    B._STARTEDTIME = TIMERGT();
    B._ENDTIME = (B._STARTEDTIME) + (B.DURATIONMS);
    if (B.ONAPPLY) {
        BH;
        MEM_CALLBYID(B.ONAPPLY);
        if (!(HLP_ISVALIDHANDLE(BH))) {
            return -(1);
        };
    };
    B.NEXTTICKNR = 1;
    if (!(B.TICKMS)) {
        B.TICKMS = (B.DURATIONMS) + (1);
    };
    FF_APPLYEXTDATAGT(0x2d3f, B.TICKMS, -(1), BH);
    if (((NPC_ISPLAYER(NPC)) && (BUFFS_DISPLAYFORHERO)) && (B.SHOW)) {
        BUFFLIST_ADD(BH);
    };
    return BH;
}

var int BUFF_APPLYEXT.BH = 0;
instance BUFF_APPLYEXT.B(LCBUFF)
func int BUFF_APPLY(var C_NPC NPC, var int BUFF) {
    return BUFF_APPLYEXT(NPC, BUFF, -(1), FALSE, FALSE);
}

var int BUFF_APPLY.BH = 0;
instance BUFF_APPLY.B(LCBUFF)
func int BUFF_APPLYUNIQUE(var C_NPC N, var int BUFF) {
    if (!(BUFF_HAS(N, BUFF))) {
        return BUFF_APPLY(N, BUFF);
    };
    return 0;
}

func int BUFF_APPLYORREFRESH(var C_NPC N, var int BUFF) {
    BH = BUFF_HAS(N, BUFF);
    if (BH) {
        BUFF_REFRESH(BH);
        return BH;
    };
    return BUFF_APPLY(N, BUFF);
}

var int BUFF_APPLYORREFRESH.BH = 0;
func int BUFF_APPLYORADDTIME(var C_NPC N, var int BUFF) {
    BH = BUFF_HAS(N, BUFF);
    if (BH) {
        BUFF_ADDTIME(BH);
        return BH;
    };
    return BUFF_APPLY(N, BUFF);
}

var int BUFF_APPLYORADDTIME.BH = 0;
func void BUFF_REMOVE(var int BH) {
    B = GET(BH);
    if (B.ONREMOVED) {
        BH;
        MEM_CALLBYID(B.ONREMOVED);
    };
    if ((((B.TARGETID) == (NPC_GETID(HERO))) && (BUFFS_DISPLAYFORHERO)) && (B.SHOW)) {
        BUFFLIST_REMOVE(BH);
    };
    if (HLP_ISVALIDHANDLE(BH)) {
        DELETE(BH);
    };
}

instance BUFF_REMOVE.B(LCBUFF)
func int BUFF_GETNPC(var int BH) {
    B = GET(BH);
    return NPC_FINDBYID(B.TARGETID);
}

instance BUFF_GETNPC.B(LCBUFF)
func void _BUFF_REMOVEALL_SUB(var int BUFFH) {
    BUFF = GET(BUFFH);
    if ((BUFF.TARGETID) == (BUFF_NPCID)) {
        BUFF_REMOVE(BUFFH);
    };
}

instance _BUFF_REMOVEALL_SUB.BUFF(LCBUFF)
func void BUFF_REMOVEALL(var C_NPC N, var int BUFFINSTANCE) {
    BUFF_NPCID = NPC_GETID(N);
    FOREACHHNDL(BUFFINSTANCE, 0x2d68);
}

