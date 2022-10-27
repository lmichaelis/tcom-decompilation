func int OCNPC_ISSPELLACTIVE(var C_NPC SLF, var int NR) {
    CALL_INTPARAM(NR);
    CALL__THISCALL(MEM_INSTTOPTR(0x5253), 0x73d340);
    return CALL_RETVALASINT();
}

func int ISSPELLACTIVE(var C_NPC SLF, var int NR) {
    RESULT = OCNPC_ISSPELLACTIVE(SLF, NR);
    if ((RESULT) == (0)) {
        return FALSE;
    };
    return TRUE;
}

var int ISSPELLACTIVE.RESULT = 0;
func void OCNPC_DROPFROMSLOT(var C_NPC SLF, var string SLOTNAME) {
    CALL_ZSTRINGPTRPARAM(SLOTNAME);
    CALL__THISCALL(MEM_INSTTOPTR(0x525a), 0x74a590);
}

instance ITEM_HOLDER(C_NPC)
func void GETITEMHOLDER() {
    ITEM_HOLDER = HLP_GETNPC(0xc867);
    if (!(HLP_ISVALIDNPC(ITEM_HOLDER))) {
        SELFBAK = HLP_GETNPC(0x717);
        WLD_INSERTNPC(0xc867, TOT);
        ITEM_HOLDER = HLP_GETNPC(0xc867);
        SELF = HLP_GETNPC(0x525e);
    };
}

instance GETITEMHOLDER.SELFBAK(C_NPC)
func int OCNPC_GETMODEL(var int NPC) {
    CALL__THISCALL(MEM_INSTTOPTR(NPC), OCNPC__GETMODEL);
    return CALL_RETVALASINT();
}

func int ANIISACTIVE(var C_NPC SLF, var string ANINAME) {
    PTR = OCNPC_GETMODEL(0x5262);
    CALL_ZSTRINGPTRPARAM(STR_UPPER(ANINAME));
    CALL__THISCALL(PTR, ZCMODEL_ANIISACTIVE);
    return CALL_RETVALASINT();
}

var int ANIISACTIVE.PTR = 0;
func int NPC_STARTANIMATION(var C_NPC SLF, var string ANINAME) {
    PTR = OCNPC_GETMODEL(0x5266);
    ANINAMEPTR = _@S(ANINAME);
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(ZERO));
        CALL_PTRPARAM(_@(ANINAMEPTR));
        CALL__THISCALL(_@(PTR), ZCMODEL_STARTANIMATION);
        CALL = CALL_END();
    };
    return CALL_RETVALASINT();
}

var int NPC_STARTANIMATION.PTR = 0;
var int NPC_STARTANIMATION.ANINAMEPTR = 0;
var int NPC_STARTANIMATION.ZERO = 0;
const int NPC_STARTANIMATION.CALL = 0;
func void MAKEHEROGHOST(var int TRANSPARENCY) {
    HER = HLP_GETNPC(0x71b);
    HER._ZCVOB_BITFIELD[0] = (HER._ZCVOB_BITFIELD[0]) | (ZCVOB_BITFIELD0_VISUALALPHAENABLED);
    HER._ZCVOB_VISUALALPHA = DIVF(MKF((100) - (TRANSPARENCY)), MKF(100));
    HER._ZCVOB_BITFIELD[0] = (HER._ZCVOB_BITFIELD[0]) & (~(ZCVOB_BITFIELD0_CASTDYNSHADOW));
}

instance MAKEHEROGHOST.HER(OCNPC)
func int ISHEROINVISIBLE() {
    return (NPC_ISPLAYER(OTHER)) && ((OTHER.AIVAR[4]) == (TRUE));
}

func void SETINVINVIBLEON() {
    HERO.AIVAR[4] = TRUE;
    MAKEHEROGHOST(50);
}

func void SETTOTALINVINVIBLEON() {
    MAKEHEROGHOST(100);
}

func int WLD_GETWAYPOINTBYNAME(var string WPNAME) {
    MEM_INITGLOBALINST();
    MEM_ASSIGNINST(0x5275, MEM_WAYNET.WPLIST_NEXT);
    MEM_INITLABELS();
    LABEL = MEM_STACKPOS.POSITION;
    if (!(CURITEM.DATA)) {
        return 0;
    };
    MEM_ASSIGNINST(0x5274, CURITEM.DATA);
    if (HLP_STRCMP(CURWP.NAME, WPNAME)) {
        return MEM_INSTGETOFFSET(0x5274);
    };
    if (!(CURITEM.NEXT)) {
        return 0;
    };
    MEM_ASSIGNINST(0x5276, MEM_INSTGETOFFSET(0x5275));
    MEM_ASSIGNINST(0x5275, LASTITEM.NEXT);
    MEM_STACKPOS.POSITION = LABEL;
    return 0;
}

instance WLD_GETWAYPOINTBYNAME.CURWP(ZCWAYPOINT)
instance WLD_GETWAYPOINTBYNAME.CURITEM(ZCLISTSORT)
instance WLD_GETWAYPOINTBYNAME.LASTITEM(ZCLISTSORT)
var int WLD_GETWAYPOINTBYNAME.LABEL = 0;
func void GETPOSITIONWORLDVEC(var int VOBPTR, var int VECPTR) {
    VOB = MEM_PTRTOINST(VOBPTR);
    MEM_WRITEINTARRAY(VECPTR, 0, VOB.TRAFOOBJTOWORLD[3]);
    MEM_WRITEINTARRAY(VECPTR, 1, VOB.TRAFOOBJTOWORLD[7]);
    MEM_WRITEINTARRAY(VECPTR, 2, VOB.TRAFOOBJTOWORLD[11]);
}

instance GETPOSITIONWORLDVEC.VOB(ZCVOB)
func void SETPOSITIONWORLDVEC(var int VOBPTR, var int VECPTR) {
    CALL_PTRPARAM(VECPTR);
    CALL__THISCALL(VOBPTR, ZCVOB__SETPOSITIONWORLD);
}

func void TELEPORTNPCTOWP(var int NPCINSTANCE, var string WP) {
    WPPTR = WLD_GETWAYPOINTBYNAME(WP);
    if ((WPPTR) == (0)) {
        MEM_WARN(CONCATSTRINGS("TeleportNpcToWP: invalid waypoint: ", WP));
        return;
    };
    MEM_ASSIGNINST(0x5283, WPPTR);
    NPC_VOB = HLP_GETNPC(NPCINSTANCE);
    NPC_PTR = _@(0x5284);
    if (NPC_PTR) {
        NPC_VOB.TRAFOOBJTOWORLD[3] = VOB.POS[0];
        NPC_VOB.TRAFOOBJTOWORLD[7] = VOB.POS[1];
        NPC_VOB.TRAFOOBJTOWORLD[11] = VOB.POS[2];
        GETPOSITIONWORLDVEC(NPC_PTR, _@(POS[0]));
        SETPOSITIONWORLDVEC(NPC_PTR, _@(POS[0]));
    };
}

var int TELEPORTNPCTOWP.WPPTR = 0;
instance TELEPORTNPCTOWP.VOB(ZCWAYPOINT)
instance TELEPORTNPCTOWP.NPC_VOB(ZCVOB)
var int TELEPORTNPCTOWP.NPC_PTR = 0;
var int TELEPORTNPCTOWP.POS[3] = {0, 0, 0};
func void ZCVOB_SETCOLL(var int VOBPTR, var int B) {
    CALL_INTPARAM(B);
    CALL__THISCALL(VOBPTR, ZCVOB__SETCOLL);
}

func void _AI_TELEPORTALWAYS(var int NPC_PTR, var string WP) {
    MEM_ASSIGNINST(0x528d, WLD_GETWAYPOINTBYNAME(WP));
    NPC_VOB = _^(NPC_PTR);
    ZCVOB_SETCOLL(NPC_PTR, FALSE);
    NPC_VOB.TRAFOOBJTOWORLD[3] = VOB.POS[0];
    NPC_VOB.TRAFOOBJTOWORLD[7] = VOB.POS[1];
    NPC_VOB.TRAFOOBJTOWORLD[11] = VOB.POS[2];
    ZCVOB_SETCOLL(NPC_PTR, TRUE);
}

instance _AI_TELEPORTALWAYS.VOB(ZCWAYPOINT)
instance _AI_TELEPORTALWAYS.NPC_VOB(ZCVOB)
func void AI_TELEPORTALWAYS(var C_NPC NPC, var string WP, var int CLEARAIQUEUE) {
    if (CLEARAIQUEUE) {
        NPC_CLEARAIQUEUE(NPC);
        AI_STANDUPQUICK(NPC);
    };
    NPC_PTR = _@(0x5290);
    AI_TELEPORT(NPC, WP);
    AI_FUNCTION_IS(NPC, 0x528a, NPC_PTR, WP);
}

var int AI_TELEPORTALWAYS.NPC_PTR = 0;
func void TELEPORTHEROTOPOS(var int X, var int Y, var int Z) {
    HER = HLP_GETNPC(0x71b);
    HER._ZCVOB_TRAFOOBJTOWORLD[3] = X;
    HER._ZCVOB_TRAFOOBJTOWORLD[7] = Y;
    HER._ZCVOB_TRAFOOBJTOWORLD[11] = Z;
}

instance TELEPORTHEROTOPOS.HER(OCNPC)
func int GETOFFSETBYPARSERSYMBOL(var string SYMBOL) {
    if ((MEM_FINDPARSERSYMBOL(SYMBOL)) != (-(1))) {
        SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, MEM_FINDPARSERSYMBOL(SYMBOL)));
        return SYMB.OFFSET;
    };
    return -(1);
}

instance GETOFFSETBYPARSERSYMBOL.SYMB(ZCPAR_SYMBOL)
func int PARSERSYMBOLISNPC(var string SYMBOL) {
    PTR = GETOFFSETBYPARSERSYMBOL(SYMBOL);
    if ((PTR) == (-(1))) {
        return FALSE;
    };
    NPC = MEM_PTRTOINST(PTR);
    return (NPC._VTBL) != (0);
}

var int PARSERSYMBOLISNPC.PTR = 0;
instance PARSERSYMBOLISNPC.NPC(OCNPC)
func int PARSERSYMBOLISVOB(var string SYMBOL) {
    PTR = MEM_SEARCHVOBBYNAME(SYMBOL);
    if ((PTR) == (-(1))) {
        return FALSE;
    };
    VOB = MEM_PTRTOINST(PTR);
    return (VOB._VTBL) != (0);
}

var int PARSERSYMBOLISVOB.PTR = 0;
instance PARSERSYMBOLISVOB.VOB(ZCVOB)
func void TELEPORTHEROTOWP(var string WP) {
    TELEPORTNPCTOWP(0xc3ab, WP);
}

func void TELEPORTHEROTOOCNPC(var OCNPC NPC) {
    TELEPORTNPCTOWP(0xc3ab, NPC.WPNAME);
}

func void TELEPORTHEROTONPC(var C_NPC NPC) {
    TELEPORTNPCTOWP(0xc3ab, NPC.WP);
}

func void TELEPORTHEROTOVOB(var string VOBNAME) {
    VOB = MEM_PTRTOINST(MEM_SEARCHVOBBYNAME(VOBNAME));
    TELEPORTHEROTOPOS(VOB.TRAFOOBJTOWORLD[3], VOB.TRAFOOBJTOWORLD[7], VOB.TRAFOOBJTOWORLD[11]);
}

instance TELEPORTHEROTOVOB.VOB(ZCVOB)
func void SETDIALOGUETOLDPROPERTY(var int ID, var int STATE) {
    CALL_INTPARAM(ID);
    CALL__THISCALL(MEM_GAME.INFOMAN, OCINFOMANAGER__GETINFORMATION);
    INFO = MEM_PTRTOINST(CALL_RETVALASPTR());
    INFO.TOLD = STATE;
}

instance SETDIALOGUETOLDPROPERTY.INFO(OCINFO)
func void FOLLOWINGNPC_LOOP(var int NPCINSTANCE) {
    NPC = HLP_GETNPC(NPCINSTANCE);
    if ((NPC_ISINSTATE(NPC, 0xf09f)) || (NPC_ISINSTATE(HERO, 0xf09f))) {
        NPC_CLEARAIQUEUE(HERO);
    };
    AI_GOTONPC(HERO, NPC);
}

instance FOLLOWINGNPC_LOOP.NPC(C_NPC)
func void STARTFOLLOWINGNPC(var int NPCINSTANCE) {
    FF_APPLYONCEDATA(0x52b1, NPCINSTANCE);
}

func void STOPFOLLOWINGNPC() {
    FF_REMOVE(0x52b1);
    NPC_CLEARAIQUEUE(HERO);
}

func void STOPALLACTIVESOUNDS() {
    if (CALL_BEGIN(CALL)) {
        CALL__THISCALL(_@(ZSOUND), ZCSNDSYS_MSS__REMOVEALLACTIVESOUNDS);
        CALL = CALL_END();
    };
}

const int STOPALLACTIVESOUNDS.CALL = 0;
func int WLD_TIMEISBETWEEN(var int X, var int Y) {
    return ((WLD_GETHOUR()) > (X)) || ((WLD_GETHOUR()) < (Y));
}

func void CHANGEVOBONSTATEFUNCTION(var string VOBNAME, var string FUNCTION) {
    ARRPTR = MEM_SEARCHALLVOBSBYNAME(VOBNAME);
    MEM_ASSIGNINST(0x52bf, ARRPTR);
    if ((ARR.NUMINARRAY) > (0)) {
        I = 0;
        MEM_INITLABELS();
        LOOP = MEM_STACKPOS.POSITION;
        if ((I) <= (ARR.NUMINARRAY)) {
            MEM_ASSIGNINST(0x52c3, MEM_READINTARRAY(ARR.ARRAY, I));
            VOB.ONSTATEFUNCNAME = FUNCTION;
            I += 1;
            MEM_STACKPOS.POSITION = LOOP;
        };
    };
}

instance CHANGEVOBONSTATEFUNCTION.ARR(ZCARRAY)
var int CHANGEVOBONSTATEFUNCTION.ARRPTR = 0;
var int CHANGEVOBONSTATEFUNCTION.I = 0;
var int CHANGEVOBONSTATEFUNCTION.LOOP = 0;
instance CHANGEVOBONSTATEFUNCTION.VOB(OCMOBINTER)
func void ENABLELOADGAME(var int ENABLE) {
    LOADMENUITEMPTR = MEM_GETMENUITEMBYSTRING("MENUITEM_MAIN_INGAME_SAVEGAME_LOAD");
    if ((LOADMENUITEMPTR) != (0)) {
        LOADMENUITEM = _^(LOADMENUITEMPTR);
        if (ENABLE) {
            LOADMENUITEM.M_PARITEMFLAGS = (LOADMENUITEM.M_PARITEMFLAGS) & (~(256));
        } else {
            LOADMENUITEM.M_PARITEMFLAGS = (LOADMENUITEM.M_PARITEMFLAGS) | (256);
        };
    };
}

var int ENABLELOADGAME.LOADMENUITEMPTR = 0;
instance ENABLELOADGAME.LOADMENUITEM(ZCMENUITEM)
func void ENABLESAVEGAME(var int ENABLE) {
    SAVEMENUITEMPTR = MEM_GETMENUITEMBYSTRING("MENUITEM_MAIN_INGAME_SAVEGAME_SAVE");
    if ((SAVEMENUITEMPTR) != (0)) {
        SAVEMENUITEM = _^(SAVEMENUITEMPTR);
        if (ENABLE) {
            SAVEMENUITEM.M_PARITEMFLAGS = (SAVEMENUITEM.M_PARITEMFLAGS) & (~(256));
        } else {
            SAVEMENUITEM.M_PARITEMFLAGS = (SAVEMENUITEM.M_PARITEMFLAGS) | (256);
        };
    };
}

var int ENABLESAVEGAME.SAVEMENUITEMPTR = 0;
instance ENABLESAVEGAME.SAVEMENUITEM(ZCMENUITEM)
func void ENABLELOADSAVEGAME(var int ENABLE) {
    ENABLELOADGAME(ENABLE);
    ENABLESAVEGAME(ENABLE);
}

func void PRINTSCREENS(var string MSG, var int POSX, var int POSY, var string FONT, var int TIMESEC) {
    PRINTS(MSG);
}

func void AI_PRINTSCREENS(var C_NPC NPC, var string MSG, var int POSX, var int POSY, var string FONT, var int TIMESEC) {
    AI_FUNCTION_S(NPC, 0x2be9, MSG);
}

func void AI_STARTFACEANI(var C_NPC NPC, var string NAME, var int INTENSITY, var int HOLDTIME) {
    ID = HLP_GETINSTANCEID(NPC);
    AI_FUNCTION_NSII(NPC, 703, ID, NAME, INTENSITY, HOLDTIME);
}

var int AI_STARTFACEANI.ID = 0;
func void AI_RESETFACEANI(var C_NPC NPC) {
    ID = HLP_GETINSTANCEID(NPC);
    AI_FUNCTION_NSII(NPC, 703, ID, S_NEUTRAL, 1, -(1));
}

var int AI_RESETFACEANI.ID = 0;
func void CHANGEVOBCOLLISION(var string VOBNAME, var int STATICVOB, var int COLLSTAT, var int COLLDYN, var int SHOWVISUAL) {
    STATICVOB = FALSE;
    ONBITS = ((((SHOWVISUAL) * (ZCVOB_BITFIELD0_SHOWVISUAL)) + ((STATICVOB) * (ZCVOB_BITFIELD0_STATICVOB))) + ((COLLSTAT) * (ZCVOB_BITFIELD0_COLLDETECTIONSTATIC))) + ((COLLDYN) * (ZCVOB_BITFIELD0_COLLDETECTIONDYNAMIC));
    OFFBITS = ((((!(SHOWVISUAL)) * (ZCVOB_BITFIELD0_SHOWVISUAL)) + ((!(STATICVOB)) * (ZCVOB_BITFIELD0_STATICVOB))) + ((!(COLLSTAT)) * (ZCVOB_BITFIELD0_COLLDETECTIONSTATIC))) + ((!(COLLDYN)) * (ZCVOB_BITFIELD0_COLLDETECTIONDYNAMIC));
    ARRPTR = MEM_SEARCHALLVOBSBYNAME(VOBNAME);
    ARR = _^(ARRPTR);
    REPEAT(J, ARR.NUMINARRAY);
    VOBPTR = MEM_ARRAYREAD(ARRPTR, J);
    VOB = MEM_PTRTOINST(VOBPTR);
    VOB.BITFIELD[0] = (VOB.BITFIELD[0]) | (ONBITS);
    VOB.BITFIELD[0] = (VOB.BITFIELD[0]) & (~(OFFBITS));
    END;
    MEM_ARRAYFREE(ARRPTR);
}

var int CHANGEVOBCOLLISION.ONBITS = 0;
var int CHANGEVOBCOLLISION.OFFBITS = 0;
var int CHANGEVOBCOLLISION.ARRPTR = 0;
instance CHANGEVOBCOLLISION.ARR(ZCARRAY)
var int CHANGEVOBCOLLISION.J = 0;
var int CHANGEVOBCOLLISION.VOBPTR = 0;
instance CHANGEVOBCOLLISION.VOB(ZCVOB)
func int MOB_CHANGEFOCUSNAME(var string VOBNAME, var string PARSERSYMBOLNAME) {
    SYMBOLINDEX = MEM_GETSYMBOLINDEX(PARSERSYMBOLNAME);
    if ((SYMBOLINDEX) == (-(1))) {
        return FALSE;
    };
    ARRPTR = MEM_SEARCHALLVOBSBYNAME(VOBNAME);
    MEM_ASSIGNINST(0x52f6, ARRPTR);
    if ((ARR.NUMINARRAY) > (0)) {
        I = 0;
        MEM_INITLABELS();
        LOOP = MEM_STACKPOS.POSITION;
        if ((I) <= (ARR.NUMINARRAY)) {
            MEM_ASSIGNINST(0x52f9, MEM_READINTARRAY(ARR.ARRAY, I));
            MOB.NAME = PARSERSYMBOLNAME;
            MOB.FOCUSNAMEINDEX = SYMBOLINDEX;
            I += 1;
            MEM_STACKPOS.POSITION = LOOP;
        };
    };
    return TRUE;
}

var int MOB_CHANGEFOCUSNAME.SYMBOLINDEX = 0;
var int MOB_CHANGEFOCUSNAME.ARRPTR = 0;
instance MOB_CHANGEFOCUSNAME.ARR(ZCARRAY)
var int MOB_CHANGEFOCUSNAME.I = 0;
var int MOB_CHANGEFOCUSNAME.LOOP = 0;
instance MOB_CHANGEFOCUSNAME.MOB(OCMOB)
func void AI_LOGENTRY(var string TOPIC, var string TEXT) {
    AI_FUNCTION_SS(SELF, 0x7d9e, TOPIC, TEXT);
}

func int GETWEAPONTYPE(var C_ITEM ITM) {
    if ((ITM.MAINFLAG) == (ITEM_KAT_NF)) {
        if (((ITM.FLAGS) & (ITEM_SWD)) || ((ITM.FLAGS) & (ITEM_AXE))) {
            return 1;
        };
        if (((ITM.FLAGS) & (ITEM_2HD_SWD)) || ((ITM.FLAGS) & (ITEM_2HD_AXE))) {
            return 2;
        };
    };
    return 0 /* !broken stack! */;
}

func int MAXOF4(var int A, var int B, var int C, var int D) {
    MAX = A;
    if ((B) > (MAX)) {
        MAX = B;
    };
    if ((C) > (MAX)) {
        MAX = C;
    };
    if ((D) > (MAX)) {
        MAX = D;
    };
    return MAX;
}

var int MAXOF4.MAX = 0;
func string I2S(var int INTEGER) {
    return INTTOSTRING(INTEGER);
}

func void ZCVISUAL_LOADVISUAL(var string VISUALNAME, var int OUTPTR) {
    CALL_ZSTRINGPTRPARAM(VISUALNAME);
    CALL_PUTRETVALTO(OUTPTR);
    CALL__CDECL(ZCVISUAL__LOADVISUAL);
}

func void OCNPCSTATES_CHANGEROUTINE_HOOK() {
    MEM_FATAL(MEM_READSTRING(EAX));
}

func void INIT_OCNPCSTATES_CHANGEROUTINE_ERROR() {
    MEMORYPROTECTIONOVERRIDE(ADDR, 5);
    WRITENOP(ADDR, 5);
    HOOKENGINEF(ADDR, 5, 0x530a);
}

const int INIT_OCNPCSTATES_CHANGEROUTINE_ERROR.ADDR = 7790835;
func void MISSINGVISUALFALLBACKHOOK() {
    ZCVISUAL_LOADVISUAL("DEFAULT.3DS", (ESI) + (200));
}

func void INIT_MISSINGVISUALFALLBACK() {
}

func void OCNPC__GETNEXTENEMY_REPLACEHOOK() {
    THIS = _^(EBP);
    NPC = _^(EDI);
    if (((THIS.AIVAR[15]) == (TRUE)) && ((NPC.AIVAR[15]) == (TRUE))) {
        ECX = TRUE;
    };
    if (NPC_CANSEENPC(THIS, NPC)) {
        ECX = FALSE;
    };
    ECX = TRUE;
}

instance OCNPC__GETNEXTENEMY_REPLACEHOOK.THIS(C_NPC)
instance OCNPC__GETNEXTENEMY_REPLACEHOOK.NPC(C_NPC)
func void INIT_GETNEXTENEMYFIX() {
    WRITENOP(0x734f4d, 46);
    HOOKENGINEF(0x734f4d, 46, 0x530f);
}

func void INIT_FIXCONSOLEAUTOCOMPLETION() {
    MEMORYPROTECTIONOVERRIDE(0x7949b0, 21);
    WRITENOP(0x7949b0, 2);
    WRITENOP(0x7949b2, 2);
    WRITENOP(0x7949b4, 3);
    WRITENOP(0x7949b7, 6);
    WRITENOP(0x7949bd, 6);
    WRITENOP(0x7949c3, 2);
}

func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK() {
    FOCUS = _^(EBP);
    ISDEAD = NPC_ISDEAD(FOCUS);
    PARTYMEMBER = FOCUS.AIVAR[15];
    EAX = (!(ISDEAD)) && (!(PARTYMEMBER));
}

instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK.FOCUS(C_NPC)
var int HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK.ISDEAD = 0;
var int HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK.PARTYMEMBER = 0;
func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK2() {
    if ((EDI) == (0)) {
        return;
    };
    FOCUS = _^(EDI);
    if (FOCUS.AIVAR[15]) {
        HER = HLP_GETNPC(0x71b);
        HER.FOCUS_VOB = 0;
    };
    CALL_PTRPARAM(EDI);
    CALL__THISCALL(ESI, 0x6b6490);
}

instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK2.FOCUS(C_NPC)
instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK2.HER(OCNPC)
func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK3() {
    FOCUS = _^(EDI);
    if (FOCUS.AIVAR[15]) {
        EAX = 0;
    };
    EAX = FOCUS.ATTRIBUTE[0];
}

instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK3.FOCUS(C_NPC)
func void HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK4() {
    FOCUS = _^(EDI);
    if (((FOCUS.AIVAR[15]) == (TRUE)) && ((NPC_ISINFIGHTMODE(HERO, FMODE_NONE)) == (FALSE))) {
        CANFOCUS = FALSE;
        HER = HLP_GETNPC(0x71b);
        HER.FOCUS_VOB = 0;
    };
    CANFOCUS = !(FOCUS.NOFOCUS);
    EAX = !(CANFOCUS);
}

instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK4.FOCUS(C_NPC)
var int HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK4.CANFOCUS = 0;
instance HIDEFOCUSFORPARTYMEMBERS_UPDATESTATUSREPLACEHOOK4.HER(OCNPC)
func void INIT_HIDEFOCUSFORPARTYMEMBERS() {
    MEMORYPROTECTIONOVERRIDE(0x733eb7, 6);
    WRITENOP(0x733eb7, 6);
    HOOKENGINEF(0x733eb7, 6, 0x5314);
    MEMORYPROTECTIONOVERRIDE(0x733ea4, 6);
    WRITENOP(0x733ea4, 6);
    HOOKENGINEF(0x733ea4, 6, 0x5314);
    MEMORYPROTECTIONOVERRIDE(0x69b947, 8);
    WRITENOP(0x69b947, 8);
    HOOKENGINEF(0x69b947, 8, 0x5318);
    MEMORYPROTECTIONOVERRIDE(0x733837, 6);
    WRITENOP(0x733837, 6);
    HOOKENGINEF(0x733837, 6, 0x531b);
    MEMORYPROTECTIONOVERRIDE(0x6c36db, 6);
    WRITENOP(0x6c36db, 6);
    HOOKENGINEF(0x6c36db, 6, 0x531d);
}

func void INIT_REMOVEITEMDRINKFLAGS() {
    MEMORYPROTECTIONOVERRIDE(0x73c123, 2);
    WRITENOP(0x73c123, 2);
    MEMORYPROTECTIONOVERRIDE(0x73c125, 6);
    WRITENOP(0x73c125, 6);
}

func void INIT_RESTOREMOBFIRESTATES() {
    MEMORYPROTECTIONOVERRIDE(0x722c00, 1);
    MEMORYPROTECTIONOVERRIDE(0x722d40, 1);
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        MEM_WRITEBYTE(0x722c00, ASMINT_OP_RETN);
        MEM_WRITEBYTE(0x722d40, ASMINT_OP_RETN);
    };
    MEM_WRITEBYTE(0x722c00, 86);
    MEM_WRITEBYTE(0x722d40, 86);
}

func int FUNCTION(var func F) {
    return SAVE_GETFUNCID(0x5325);
}

func void CALLAFTERWORLDLOADED(var func FUNCTION) {
    FF_APPLYONCEEXTGT(0x5327, 1, 1);
}

const int GMEM_MOVEABLE = 2;
func int GLOBALALLOC(var int FLAG, var int BYTES) {
    CALL_INTPARAM(BYTES);
    CALL_INTPARAM(FLAG);
    CALL__STDCALL(PGLOBALALLOC);
    return CALL_RETVALASINT();
}

func int GLOBALLOCK(var int HANDLE) {
    CALL_INTPARAM(HANDLE);
    CALL__STDCALL(PGLOBALLOCK);
    return CALL_RETVALASINT();
}

const int CF_TEXT = 1;
func int OPENCLIPBOARD() {
    CALL_INTPARAM(0);
    CALL__STDCALL(POPENCLIPBOARD);
    return CALL_RETVALASINT();
}

func int EMPTYCLIPBOARD() {
    CALL__STDCALL(PEMPTYCLIPBOARD);
    return CALL_RETVALASINT();
}

func int SETCLIPBOARDDATA(var int FORMAT, var int HANDLE) {
    CALL_INTPARAM(HANDLE);
    CALL_INTPARAM(FORMAT);
    CALL__STDCALL(PSETCLIPBOARDDATA);
    return CALL_RETVALASINT();
}

func int GETCLIPBOARDDATA(var int FORMAT) {
    PGETCLIPBOARDDATA = GETPROCADDRESS(LOADLIBRARY("USER32.DLL"), "GetClipboardData");
    CALL_INTPARAM(FORMAT);
    CALL__STDCALL(PGETCLIPBOARDDATA);
    return CALL_RETVALASINT();
}

var int GETCLIPBOARDDATA.PGETCLIPBOARDDATA = 0;
func int CLOSECLIPBOARD() {
    CALL__STDCALL(PCLOSECLIPBOARD);
    return CALL_RETVALASINT();
}

func void WRITETOCLIPBOARD(var string TXT) {
    STR = MEM_PTRTOINST(STR_GETADDRESS(TXT));
    RES = MEM_ALLOC(STR.RES);
    MEM_COPYBYTES(STR.PTR, RES, STR.RES);
    HANDLE = GLOBALALLOC(GMEM_MOVEABLE, STR.RES);
    PTR = GLOBALLOCK(HANDLE);
    MEM_COPYBYTES(RES, PTR, STR.RES);
    MEM_FREE(RES);
    if (!(OPENCLIPBOARD())) {
        return;
    };
    if (!(EMPTYCLIPBOARD())) {
        return;
    };
    if (!(SETCLIPBOARDDATA(CF_TEXT, HANDLE))) {
        return;
    };
    MEM_FREE(HANDLE);
    CLOSECLIPBOARD();
}

var int WRITETOCLIPBOARD.RES = 0;
instance WRITETOCLIPBOARD.STR(ZSTRING)
var int WRITETOCLIPBOARD.HANDLE = 0;
var int WRITETOCLIPBOARD.PTR = 0;
func string GETCLIPBOARDTEXT() {
    if (!(OPENCLIPBOARD())) {
        return "";
    };
    HANDLE = GETCLIPBOARDDATA(CF_TEXT);
    if (!(HANDLE)) {
        return "";
    };
    PTR = GLOBALLOCK(HANDLE);
    RESULT = STR_FROMCHAR(PTR);
    MEM_FREE(HANDLE);
    CLOSECLIPBOARD();
    return RESULT;
}

var int GETCLIPBOARDTEXT.HANDLE = 0;
var int GETCLIPBOARDTEXT.PTR = 0;
var string GETCLIPBOARDTEXT.RESULT = "";
func void ENABLEMUSICZONE(var string VOBNAME, var int ENABLE) {
    PTR = MEM_SEARCHVOBBYNAME(VOBNAME);
    ZONE = MEM_PTRTOINST(PTR);
    ZONE.ENABLED = ENABLE;
    ZONE.LOCAL_ENABLED = ENABLE;
}

var int ENABLEMUSICZONE.PTR = 0;
instance ENABLEMUSICZONE.ZONE(OCZONEMUSIC)
var int TESTMODE_ACTIVATED = 0;
func void HANDLERESULTSTRING_MARVINMODE_REPLACEHOOK() {
    TESTMODE_ACTIVATED = TRUE;
    if (INFOMANAGER_HASFINISHED()) {
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_Cheat_15_00");
    };
}

func void OCAIHUMAN__PC_DIVING_HOOK() {
    HER = HLP_GETNPC(0x71b);
    HEROPTR = _@(0x534a);
    if ((MEM_KEYPRESSED(MEM_GETKEY("keyAction"))) || (MEM_KEYPRESSED(MEM_GETSECONDARYKEY("keyAction")))) {
        if (HLP_IS_OCITEM(HER.FOCUS_VOB)) {
            AI_PLAYANI(HERO, "T_WATERTAKEITEM");
            ITEM = _^(HER.FOCUS_VOB);
            PRINTS(CS2(ITEM.NAME, PRINT_ADDON_ERHALTEN));
            CALL_PTRPARAM(HER.FOCUS_VOB);
            CALL__THISCALL(_@(0x534a), 0x7449c0);
        };
    };
}

instance OCAIHUMAN__PC_DIVING_HOOK.HER(OCNPC)
var int OCAIHUMAN__PC_DIVING_HOOK.HEROPTR = 0;
instance OCAIHUMAN__PC_DIVING_HOOK.ITEM(C_ITEM)
func void INIT_GATHERINGITEMSUNDERWATER() {
    HOOKENGINEF(0x699c60, 6, 0x5349);
}

func void NPC_CHANGEARMOR(var C_NPC SLF, var int ARMOR) {
    NPC = HLP_GETNPC(0x534f);
    MDL_SETVISUALBODY(SLF, NPC.BODY_VISUALNAME, ((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_BODY_TEXVARNR)) >> (14), 0, NPC.HEAD_VISUALNAME, ((NPC.BITFIELD[1]) & (OCNPC_BITFIELD1_HEAD_TEXVARNR)) >> (16), ((NPC.BITFIELD[2]) & (OCNPC_BITFIELD2_TEETH_TEXVARNR)) >> (0), ARMOR);
    SLF.AIVAR[48] = ARMOR;
}

instance NPC_CHANGEARMOR.NPC(OCNPC)
func void NPC_CHANGEFACE(var C_NPC SLF, var int HEADTEX) {
    NPC = HLP_GETNPC(0x5353);
    MDL_SETVISUALBODY(SLF, NPC.BODY_VISUALNAME, ((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_BODY_TEXVARNR)) >> (14), 0, NPC.HEAD_VISUALNAME, HEADTEX, ((NPC.BITFIELD[2]) & (OCNPC_BITFIELD2_TEETH_TEXVARNR)) >> (0), 0);
}

instance NPC_CHANGEFACE.NPC(OCNPC)
func void NPC_REFRESH(var C_NPC SLF) {
    NPC_CLEARAIQUEUE(SLF);
    AI_STANDUP(SLF);
    AI_CONTINUEROUTINE(SLF);
}

func void NPC_REFRESH_WITHSELF() {
    NPC_REFRESH(SELF);
}

func void DUMMYFUNCWITHSTRINGPARAMETER(var string PAR) {
}

func void CHANGEWORLD(var string WORLD, var string STARTVOB) {
    CALL_ZSTRINGPTRPARAM(STARTVOB);
    CALL_ZSTRINGPTRPARAM(WORLD);
    CALL__THISCALL(MEM_INSTTOPTR(0x1685), OCGAME__TRIGGERCHANGELEVEL);
}

func void PATCHSAVEGAMEVERSION_HOOK() {
    STRPTR = MEM_GETSTRINGADDRESS(INTTOSTRING(SAVE_VERSION));
    LANGSTR = MEM_PTRTOINST(STRPTR);
    EDX = LANGSTR.PTR;
}

var int PATCHSAVEGAMEVERSION_HOOK.STRPTR = 0;
instance PATCHSAVEGAMEVERSION_HOOK.LANGSTR(ZSTRING)
func void PATCHSAVEGAMEVERSION() {
    MEMORYPROTECTIONOVERRIDE(0x437e55, 6);
    WRITENOP(0x437e55, 6);
    HOOKENGINEF(0x437e55, 6, 0x535e);
}

var string CURRENTMUSICZONE = "";
func string GETWORLDNAME() {
    if ((((STR_STARTSWITH(CURRENTMUSICZONE, "CMD_")) || (STR_STARTSWITH(CURRENTMUSICZONE, "CIT_"))) || (STR_STARTSWITH(CURRENTMUSICZONE, "HAR_"))) || (STR_STARTSWITH(CURRENTMUSICZONE, "CRH_"))) {
        return WORLD_CITY;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "VIL_")) {
        return WORLD_SILBACH;
    };
    if ((STR_STARTSWITH(CURRENTMUSICZONE, "WLF_")) || (STR_STARTSWITH(CURRENTMUSICZONE, "MIN_"))) {
        return WORLD_WOLFSDEN;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "MON_")) {
        return WORLD_MONASTERY;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "HAV_")) {
        return WORLD_HAVEN;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "VIN_")) {
        return WORLD_VALERIO;
    };
    if (STR_STARTSWITH(CURRENTMUSICZONE, "SWP_")) {
        return WORLD_SWAMPS;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ZEN)) {
        return WORLD_ARCHOLOS;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_ENDGAME_ZEN)) {
        return WORLD_ENDGAME;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SILVERMINE_ZEN)) {
        return WORLD_SILVERMINE;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_VOLFZACKE_ZEN)) {
        return WORLD_VOLFZACKE;
    };
    if ((CURRENTLEVEL) == (ARCHOLOS_SEWERS_ZEN)) {
        return WORLD_SEWERS;
    };
    return "";
}

func void PATCHSAVEGAMEWORLD_HOOK() {
    WORLDNAME = GETWORLDNAME();
    if (HLP_STRCMP(WORLDNAME, "")) {
        MEM_WRITESTRING((EBP) + (84), MEM_WORLD.WORLDNAME);
    };
    MEM_WRITESTRING((EBP) + (84), WORLDNAME);
}

var string PATCHSAVEGAMEWORLD_HOOK.WORLDNAME = "";
func void PATCHSAVEGAMEWORLD() {
    HOOKENGINEF(0x437d9f, 5, 0x5364);
}

func int GETKEYSTATE(var int NVIRTKEY) {
    PGETKEYSTATE = GETPROCADDRESS(LOADLIBRARY("USER32.DLL"), "GetKeyState");
    CALL_INTPARAM(NVIRTKEY);
    CALL__STDCALL(PGETKEYSTATE);
    return CALL_RETVALASINT();
}

var int GETKEYSTATE.PGETKEYSTATE = 0;
var int INFOMANAGERANSWERPOSSIBLE = 0;
var int INFOMANAGERANSWERMODE = 0;
var string INFOMANAGERANSWER = "";
var int INFOMANAGERLASTCHOICESELECTED = 0;
var int INFOMANAGERUPDATESTATE = 0;
const int CIM2BCHANGED = 0;
const int CIMCHANGED = 1;
func void ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK() {
    INFOMANAGERUPDATESTATE = CIM2BCHANGED;
    KEY = EDI;
    if (INFOMANAGERANSWERPOSSIBLE) {
        if ((KEY) == (KEY_ESCAPE)) {
            INFOMANAGERANSWERMODE = FALSE;
            INFOMANAGERANSWER = "";
        };
        if (((((KEY) == (KEY_RETURN)) || ((KEY) == (MOUSE_BUTTONLEFT))) || ((KEY) == (MEM_GETKEY("keyAction")))) || ((KEY) == (MEM_GETSECONDARYKEY("keyAction")))) {
            if (!(INFOMANAGERANSWERMODE)) {
                INFOMANAGERANSWER = "";
            };
            INFOMANAGERANSWERMODE = !(INFOMANAGERANSWERMODE);
        };
        S = "";
        if (INFOMANAGERANSWERMODE) {
            SHIFT = ((((MEM_KEYSTATE(KEY_LSHIFT)) == (KEY_PRESSED)) | ((MEM_KEYSTATE(KEY_LSHIFT)) == (KEY_HOLD))) | ((MEM_KEYSTATE(KEY_RSHIFT)) == (KEY_PRESSED))) | ((MEM_KEYSTATE(KEY_RSHIFT)) == (KEY_HOLD));
            CAPSLOCK = (GETKEYSTATE(20)) & ((1) != (0));
            UPPERCASE = (SHIFT) || (CAPSLOCK);
            ALT = ((((MEM_KEYSTATE(KEY_LMENU)) == (KEY_PRESSED)) | ((MEM_KEYSTATE(KEY_LMENU)) == (KEY_HOLD))) | ((MEM_KEYSTATE(KEY_RMENU)) == (KEY_PRESSED))) | ((MEM_KEYSTATE(KEY_RMENU)) == (KEY_HOLD));
            if ((KEY) == (KEY_1)) {
                if (SHIFT) {
                    S = "!";
                } else {
                    S = "1";
                };
            };
            if ((KEY) == (KEY_2)) {
                if (SHIFT) {
                    S = "@";
                } else {
                    S = "2";
                };
            };
            if ((KEY) == (KEY_3)) {
                if (SHIFT) {
                    S = "#";
                } else {
                    S = "3";
                };
            };
            if ((KEY) == (KEY_4)) {
                if (SHIFT) {
                    S = "$";
                } else {
                    S = "4";
                };
            };
            if ((KEY) == (KEY_5)) {
                if (SHIFT) {
                    S = "%";
                } else {
                    S = "5";
                };
            };
            if ((KEY) == (KEY_6)) {
                if (SHIFT) {
                    S = "^";
                } else {
                    S = "6";
                };
            };
            if ((KEY) == (KEY_7)) {
                if (SHIFT) {
                    S = "&";
                } else {
                    S = "7";
                };
            };
            if ((KEY) == (KEY_8)) {
                if (SHIFT) {
                    S = "*";
                } else {
                    S = "8";
                };
            };
            if ((KEY) == (KEY_9)) {
                if (SHIFT) {
                    S = "(";
                } else {
                    S = "9";
                };
            };
            if ((KEY) == (KEY_0)) {
                if (SHIFT) {
                    S = ")";
                } else {
                    S = "0";
                };
            };
            if ((KEY) == (KEY_MINUS)) {
                if (SHIFT) {
                    S = "-";
                } else {
                    S = "_";
                };
            };
            if ((KEY) == (KEY_EQUALS)) {
                if (SHIFT) {
                    S = "+";
                } else {
                    S = "=";
                };
            };
            if ((KEY) == (KEY_BACK)) {
                LEN = STR_LEN(INFOMANAGERANSWER);
                if ((LEN) == (1)) {
                    INFOMANAGERANSWER = "";
                } else if ((LEN) > (1)) {
                    INFOMANAGERANSWER = STR_SUBSTR(INFOMANAGERANSWER, 0, (LEN) - (1));
                };
            };
            if ((KEY) == (KEY_Q)) {
                if (UPPERCASE) {
                    S = "Q";
                } else {
                    S = "q";
                };
            };
            if ((KEY) == (KEY_W)) {
                if (UPPERCASE) {
                    S = "W";
                } else {
                    S = "w";
                };
            };
            if ((KEY) == (KEY_E)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "E";
                } else if ((UPPERCASE) && (ALT)) {
                    S = " ";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Í";
                } else {
                    S = "e";
                };
            };
            if ((KEY) == (KEY_R)) {
                if (UPPERCASE) {
                    S = "R";
                } else {
                    S = "r";
                };
            };
            if ((KEY) == (KEY_T)) {
                if (UPPERCASE) {
                    S = "T";
                } else {
                    S = "t";
                };
            };
            if ((KEY) == (KEY_Y)) {
                if (UPPERCASE) {
                    S = "Y";
                } else {
                    S = "y";
                };
            };
            if ((KEY) == (KEY_U)) {
                if (UPPERCASE) {
                    S = "U";
                } else {
                    S = "u";
                };
            };
            if ((KEY) == (KEY_I)) {
                if (UPPERCASE) {
                    S = "I";
                } else {
                    S = "i";
                };
            };
            if ((KEY) == (KEY_O)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "O";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "”";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Û";
                } else {
                    S = "o";
                };
            };
            if ((KEY) == (KEY_P)) {
                if (UPPERCASE) {
                    S = "P";
                } else {
                    S = "p";
                };
            };
            if ((KEY) == (KEY_LBRACKET)) {
                if (SHIFT) {
                    S = "{";
                } else {
                    S = "[";
                };
            };
            if ((KEY) == (KEY_RBRACKET)) {
                if (SHIFT) {
                    S = "}";
                } else {
                    S = "]";
                };
            };
            if ((KEY) == (KEY_A)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "A";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "•";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "π";
                } else {
                    S = "a";
                };
            };
            if ((KEY) == (KEY_S)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "S";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "å";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "s";
                } else {
                    S = "s";
                };
            };
            if ((KEY) == (KEY_D)) {
                if (UPPERCASE) {
                    S = "D";
                } else {
                    S = "d";
                };
            };
            if ((KEY) == (KEY_F)) {
                if (UPPERCASE) {
                    S = "F";
                } else {
                    S = "f";
                };
            };
            if ((KEY) == (KEY_G)) {
                if (UPPERCASE) {
                    S = "G";
                } else {
                    S = "g";
                };
            };
            if ((KEY) == (KEY_H)) {
                if (UPPERCASE) {
                    S = "H";
                } else {
                    S = "h";
                };
            };
            if ((KEY) == (KEY_J)) {
                if (UPPERCASE) {
                    S = "J";
                } else {
                    S = "j";
                };
            };
            if ((KEY) == (KEY_K)) {
                if (UPPERCASE) {
                    S = "K";
                } else {
                    S = "k";
                };
            };
            if ((KEY) == (KEY_L)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "L";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "£";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "≥";
                } else {
                    S = "l";
                };
            };
            if ((KEY) == (KEY_SEMICOLON)) {
                if (SHIFT) {
                    S = ":";
                } else {
                    S = ";";
                };
            };
            if ((KEY) == (KEY_APOSTROPHE)) {
                if (SHIFT) {
                    if (!(MEM)) {
                        MEM = MEM_ALLOC(1);
                    };
                    MEM_WRITEBYTE(MEM, 34);
                    S = STR_FROMCHAR(MEM);
                } else {
                    S = "'";
                };
            };
            if ((KEY) == (KEY_GRAVE)) {
                if (SHIFT) {
                    S = "~";
                } else {
                    S = "`";
                };
            };
            if ((KEY) == (KEY_BACKSLASH)) {
                if (SHIFT) {
                    S = "|";
                } else {
                    S = "\\";
                };
            };
            if ((KEY) == (KEY_Z)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "Z";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "Ø";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "ø";
                } else {
                    S = "z";
                };
            };
            if ((KEY) == (KEY_X)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "X";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "è";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "ü";
                } else {
                    S = "x";
                };
            };
            if ((KEY) == (KEY_C)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "C";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "∆";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Ê";
                } else {
                    S = "c";
                };
            };
            if ((KEY) == (KEY_V)) {
                if (UPPERCASE) {
                    S = "V";
                } else {
                    S = "v";
                };
            };
            if ((KEY) == (KEY_B)) {
                if (UPPERCASE) {
                    S = "B";
                } else {
                    S = "b";
                };
            };
            if ((KEY) == (KEY_N)) {
                if ((UPPERCASE) && (!(ALT))) {
                    S = "N";
                } else if ((UPPERCASE) && (ALT)) {
                    S = "—";
                } else if ((!(UPPERCASE)) && (ALT)) {
                    S = "Ò";
                } else {
                    S = "n";
                };
            };
            if ((KEY) == (KEY_M)) {
                if (UPPERCASE) {
                    S = "M";
                } else {
                    S = "m";
                };
            };
            if ((KEY) == (KEY_COMMA)) {
                if (SHIFT) {
                    S = "<";
                } else {
                    S = ",";
                };
            };
            if ((KEY) == (KEY_PERIOD)) {
                if (SHIFT) {
                    S = ">";
                } else {
                    S = ".";
                };
            };
            if ((KEY) == (KEY_SLASH)) {
                if (SHIFT) {
                    S = "?";
                } else {
                    S = "/";
                };
            };
            if ((KEY) == (KEY_SPACE)) {
                S = " ";
            };
            if ((KEY) == (KEY_NUMPAD0)) {
                S = "0";
            };
            if ((KEY) == (KEY_NUMPAD1)) {
                S = "1";
            };
            if ((KEY) == (KEY_NUMPAD2)) {
                S = "2";
            };
            if ((KEY) == (KEY_NUMPAD3)) {
                S = "3";
            };
            if ((KEY) == (KEY_NUMPAD4)) {
                S = "4";
            };
            if ((KEY) == (KEY_NUMPAD5)) {
                S = "5";
            };
            if ((KEY) == (KEY_NUMPAD6)) {
                S = "6";
            };
            if ((KEY) == (KEY_NUMPAD7)) {
                S = "7";
            };
            if ((KEY) == (KEY_NUMPAD8)) {
                S = "8";
            };
            if ((KEY) == (KEY_NUMPAD9)) {
                S = "9";
            };
            if ((KEY) == (KEY_MULTIPLY)) {
                S = "*";
            };
            if ((KEY) == (KEY_SUBTRACT)) {
                S = "-";
            };
            if ((KEY) == (KEY_ADD)) {
                S = "+";
            };
            if ((KEY) == (KEY_DECIMAL)) {
                S = ".";
            };
            if ((STR_LEN(S)) > (0)) {
                INFOMANAGERANSWER = CONCATSTRINGS(INFOMANAGERANSWER, S);
            };
            EDI = 0;
            MEM_WRITEINT((ESP) + (4), 0);
        };
    };
}

var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.KEY = 0;
var string ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.S = "";
var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.SHIFT = 0;
var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.CAPSLOCK = 0;
var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.UPPERCASE = 0;
var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.ALT = 0;
var int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.LEN = 0;
const int ZCVIEWDIALOGCHOICE__HANDLEEVENT_HOOK.MEM = 0;
const int CINFO_MGR_MODE_IMPORTANT = 0;
const int CINFO_MGR_MODE_INFO = 1;
const int CINFO_MGR_MODE_CHOICE = 2;
const int CINFO_MGR_MODE_TRADE = 3;
const int DIALOG_ANSWER_NR = 1337;
func void OCINFORMATIONMANAGER__UPDATE_HOOK() {
    if ((MEM_INFORMATIONMAN.INFO) == (0)) {
        return;
    };
    DLGINSTANCE = _^(MEM_INFORMATIONMAN.INFO);
    if ((DLGINSTANCE.NR) != (DIALOG_ANSWER_NR)) {
        return;
    };
    if ((MEM_INFORMATIONMAN.DLGCHOICE) == (0)) {
        return;
    };
    DLG = _^(MEM_INFORMATIONMAN.DLGCHOICE);
    if ((DLG.ISACTIVATED) == (1)) {
        if (((INFOMANAGERUPDATESTATE) == (CIM2BCHANGED)) || ((INFOMANAGERLASTCHOICESELECTED) != (DLG.CHOICESELECTED))) {
            INFOMANAGERANSWERPOSSIBLE = FALSE;
            ARR = _^((MEM_INFORMATIONMAN.DLGCHOICE) + (172));
            if (ARR.ARRAY) {
                I = 0;
                P = MEM_STACKPOS.POSITION;
                if ((I) < (DLG.CHOICES)) {
                    if ((MEM_INFORMATIONMAN.MODE) == (CINFO_MGR_MODE_CHOICE)) {
                        if (DLGINSTANCE.LISTCHOICES_NEXT) {
                            J = 0;
                            LIST = DLGINSTANCE.LISTCHOICES_NEXT;
                            WHILE(LIST);
                            L = _^(LIST);
                            DLGCHOICE = MEM_PTRTOINST(L.DATA);
                            if ((I) == (J)) {
                                DLGDESCRIPTION = DLGCHOICE.TEXT;
                            };
                            LIST = L.NEXT;
                            J += 1;
                            END;
                        };
                        ANSWERDIALOG = -(1);
                        LEN = STR_LEN(DLGDESCRIPTION);
                        if ((LEN) > (0)) {
                            if (STR_STARTSWITH(DLGDESCRIPTION, "?")) {
                                DLGDESCRIPTION = STR_SUBSTR(DLGDESCRIPTION, 1, (LEN) - (1));
                                ANSWERDIALOG = I;
                            };
                        };
                        if ((I) == (DLG.CHOICESELECTED)) {
                            if ((ANSWERDIALOG) == (I)) {
                                INFOMANAGERANSWERPOSSIBLE = TRUE;
                            };
                            if (INFOMANAGERANSWERMODE) {
                                DLGDESCRIPTION = CONCATSTRINGS(INFOMANAGERANSWER, "_");
                            };
                        };
                        TXT = _^(MEM_READINTARRAY(ARR.ARRAY, I));
                        TXT.TEXT = DLGDESCRIPTION;
                    };
                    I += 1;
                    MEM_STACKPOS.POSITION = P;
                };
            } else {
                INFOMANAGERUPDATESTATE = CIMCHANGED;
                INFOMANAGERLASTCHOICESELECTED = DLG.CHOICESELECTED;
            };
        };
    };
}

instance OCINFORMATIONMANAGER__UPDATE_HOOK.DLGINSTANCE(OCINFO)
instance OCINFORMATIONMANAGER__UPDATE_HOOK.DLG(ZCVIEWDIALOGCHOICE)
instance OCINFORMATIONMANAGER__UPDATE_HOOK.ARR(ZCARRAY)
var int OCINFORMATIONMANAGER__UPDATE_HOOK.I = 0;
var int OCINFORMATIONMANAGER__UPDATE_HOOK.P = 0;
var string OCINFORMATIONMANAGER__UPDATE_HOOK.DLGDESCRIPTION = "";
var int OCINFORMATIONMANAGER__UPDATE_HOOK.J = 0;
instance OCINFORMATIONMANAGER__UPDATE_HOOK.L(ZCLIST)
var int OCINFORMATIONMANAGER__UPDATE_HOOK.LIST = 0;
instance OCINFORMATIONMANAGER__UPDATE_HOOK.DLGCHOICE(OCINFOCHOICE)
var int OCINFORMATIONMANAGER__UPDATE_HOOK.ANSWERDIALOG = 0;
var int OCINFORMATIONMANAGER__UPDATE_HOOK.LEN = 0;
instance OCINFORMATIONMANAGER__UPDATE_HOOK.TXT(ZCVIEWTEXT2)
func void OCNPC__EVDROPVOB_HOOK() {
    NPC = MEM_PTRTOINST(ECX);
    if ((NPC_ISPLAYER(NPC)) == (FALSE)) {
        return;
    };
    CSGPTR = MEM_READINT((ESP) + (4));
    if ((CSGPTR) == (0)) {
        return;
    };
    ITEMPTR = MEM_READINT((CSGPTR) + (108));
    if ((ITEMPTR) == (0)) {
        return;
    };
    ITM = _^(ITEMPTR);
    if (((ITM.FLAGS) & (ITEM_IMPORTANT)) == (ITEM_IMPORTANT)) {
        NPC_STARTANIMATION(NPC, T_NO);
        CALL_INTPARAM(1);
        CALL__THISCALL(CSGPTR, 0x763110);
    };
}

instance OCNPC__EVDROPVOB_HOOK.NPC(C_NPC)
var int OCNPC__EVDROPVOB_HOOK.CSGPTR = 0;
var int OCNPC__EVDROPVOB_HOOK.ITEMPTR = 0;
instance OCNPC__EVDROPVOB_HOOK.ITM(C_ITEM)
func int OCINFOMANAGER_GETINFOUNIMPORTANT(var int NPCINSTANCE, var int HERINSTANCE, var int INDEX) {
    OCINFOMANAGER__GETINFOUNIMPORTANT = MEMINT_SWITCHG1G2(OCINFOMANAGER__GETINFOUNIMPORTANT_G1, OCINFOMANAGER__GETINFOUNIMPORTANT_G2);
    SLF = HLP_GETNPC(NPCINSTANCE);
    HER = HLP_GETNPC(HERINSTANCE);
    CALL_INTPARAM(INDEX);
    CALL_PTRPARAM(MEM_INSTTOPTR(0x5399));
    CALL_PTRPARAM(MEM_INSTTOPTR(0x539a));
    CALL__THISCALL(MEM_GAME.INFOMAN, OCINFOMANAGER__GETINFOUNIMPORTANT);
    return CALL_RETVALASPTR();
}

const int OCINFOMANAGER_GETINFOUNIMPORTANT.OCINFOMANAGER__GETINFOUNIMPORTANT_G1 = 6705440;
const int OCINFOMANAGER_GETINFOUNIMPORTANT.OCINFOMANAGER__GETINFOUNIMPORTANT_G2 = 7352368;
var int OCINFOMANAGER_GETINFOUNIMPORTANT.OCINFOMANAGER__GETINFOUNIMPORTANT = 0;
instance OCINFOMANAGER_GETINFOUNIMPORTANT.SLF(OCNPC)
instance OCINFOMANAGER_GETINFOUNIMPORTANT.HER(OCNPC)
func void PRINTLANGUAGEMISMATCHMESSAGE() {
    PRINT(ERROR_SAVE_LANGUAGEMISMATCH);
}

func void INIT_ARMORUNLOCKINNPCOVERRIDE() {
    MEMORYPROTECTIONOVERRIDE(0x70b6bc, 2);
    MEM_WRITEBYTE((0x70b6bc) + (0), 117);
    MEM_WRITEBYTE((0x70b6bc) + (1), 26);
    MEMORYPROTECTIONOVERRIDE(0x70af4b, 6);
    MEM_WRITEBYTE((0x70af4b) + (0), 15);
    MEM_WRITEBYTE((0x70af4b) + (1), 133);
    MEM_WRITEBYTE((0x70af4b) + (2), 15);
    MEM_WRITEBYTE((0x70af4b) + (3), 1);
    MEM_WRITEBYTE((0x70af4b) + (4), 0);
    MEM_WRITEBYTE((0x70af4b) + (5), 0);
}

