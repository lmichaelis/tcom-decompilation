const int EQUIPWEAPON_TOGGLESEQUIP = 1;
func void EQUIPWEAPON(var C_NPC SLF, var int ITEMINST) {
    if (!(NPC_HASITEMS(SLF, ITEMINST))) {
        CREATEINVITEMS(SLF, ITEMINST, 1);
    };
    if (!(NPC_GETINVITEM(SLF, ITEMINST))) {
        MEM_ASSERTFAIL("Unexpected behaviour in EquipWeapon.");
        return;
    };
    if ((((ITEM.MAINFLAG) == (ITEM_KAT_NF)) && (NPC_HASREADIEDMELEEWEAPON(SLF))) || (((ITEM.MAINFLAG) == (ITEM_KAT_FF)) && (NPC_HASREADIEDRANGEDWEAPON(SLF)))) {
        MEM_WARN("EquipWeapon: Caller wants to equip a weapon while weapon of the same type is readied. Ignoring request.");
        return;
    };
    if (((ITEM.FLAGS) & (ITEM_ACTIVE_LEGO)) && (!(EQUIPWEAPON_TOGGLESEQUIP))) {
        MEM_INFO("EquipWeapon: This weapon is already equipped. Ignoring request.");
        return;
    };
    CALL_PTRPARAM(MEM_INSTTOPTR(1818));
    CALL__THISCALL(MEM_INSTTOPTR(11632), OCNPC__EQUIPWEAPON);
}

func int NPC_GETARMOR(var C_NPC SLF) {
    var C_ITEM ITM;
    if (!(NPC_HASEQUIPPEDARMOR(SLF))) {
        return -(1);
    };
    ITM = NPC_GETEQUIPPEDARMOR(SLF);
    return HLP_GETINSTANCEID(ITM);
}

func int NPC_GETMELEEWEAPON(var C_NPC SLF) {
    var C_ITEM ITM;
    if (!(NPC_HASEQUIPPEDMELEEWEAPON(SLF))) {
        return 0;
    };
    ITM = NPC_GETEQUIPPEDMELEEWEAPON(SLF);
    return HLP_GETINSTANCEID(ITM);
}

func int NPC_GETRANGEDWEAPON(var C_NPC SLF) {
    var C_ITEM ITM;
    if (!(NPC_HASEQUIPPEDRANGEDWEAPON(SLF))) {
        return 0;
    };
    ITM = NPC_GETEQUIPPEDRANGEDWEAPON(SLF);
    return HLP_GETINSTANCEID(ITM);
}

const int TRIA_MAXNPC = 16;
func void DIACAM_UPDATE() {
    var int AICAM;
    if (INFOMANAGER_HASFINISHED()) {
        return;
    };
    AICAM = MEM_READINT(ZCAICAMERA__CURRENT);
    CALL_INTPARAM(1);
    CALL__THISCALL(AICAM, ZCAICAMERA_STARTDIALOGCAM);
}

func void DIACAM_DISABLE() {
    MEMORYPROTECTIONOVERRIDE(ZCAICAMERA__STARTDIALOGCAM, 4);
    MEM_WRITEINT(ZCAICAMERA__STARTDIALOGCAM, 268436674);
}

func void DIACAM_ENABLE() {
    MEMORYPROTECTIONOVERRIDE(ZCAICAMERA__STARTDIALOGCAM, 4);
    MEM_WRITEINT(ZCAICAMERA__STARTDIALOGCAM, ZCAICAMERA__STARTDIALOGCAM_OLDINSTR);
}

var int TRIA_NPCPTR[16];
var int TRIA_RUNNING;
var int TRIA_CPTR;
var int TRIA_LAST;
var int TRIA_SELF;
var string TRIA_CAMERA;
func void ZS_TRIA() {
}

func int ZS_TRIA_LOOP() {
    if (INFOMANAGER_HASFINISHED()) {
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void TRIA_WAIT() {
    AI_WAITTILLEND(HERO, SELF);
    AI_WAITTILLEND(SELF, HERO);
    AI_WAITTILLEND(HERO, SELF);
}

func void _TRIA_UPDATEVISUAL(var C_NPC SLF, var int ARMOR) {
    var OCNPC NPC;
    NPC = HLP_GETNPC(11658);
    MDL_SETVISUALBODY(SLF, NPC.BODY_VISUALNAME, ((NPC.BITFIELD[0]) & (OCNPC_BITFIELD0_BODY_TEXVARNR)) >> (14), (NPC.BITFIELD[1]) & (OCNPC_BITFIELD1_BODY_TEXCOLORNR), NPC.HEAD_VISUALNAME, ((NPC.BITFIELD[1]) & (OCNPC_BITFIELD1_HEAD_TEXVARNR)) >> (16), (NPC.BITFIELD[2]) & (OCNPC_BITFIELD2_TEETH_TEXVARNR), ARMOR);
}

func void NPC_TRADEITEM(var C_NPC SLF, var int ITM0, var int ITM1) {
    if (ITM0) {
        EQUIPWEAPON(SLF, ITM0);
        NPC_REMOVEINVITEM(SLF, ITM0);
    };
    if (ITM1) {
        CREATEINVITEM(SLF, ITM1);
        EQUIPWEAPON(SLF, ITM1);
    };
}

class _TRIA_FLTWRAPPER {
	var float F0;
	var float F1;
	var float F2;
	var float F3;
};
func void _TRIA_COPY(var int N0, var int N1) {
    var int RW1;
    var int MW1;
    var int MW0;
    var _TRIA_FLTWRAPPER FN1;
    var _TRIA_FLTWRAPPER FN0;
    var int RW0;
    var int A1;
    var int A0;
    var OCNPC ONP0;
    var C_NPC NP1;
    var OCNPC ONP1;
    var C_NPC NP0;
    if ((!(HLP_IS_OCNPC(N0))) || (!(HLP_IS_OCNPC(N1)))) {
        MEM_ERROR("_TRIA_Copy: Invalid NPC");
        return;
    };
    NP0 = MEM_PTRTOINST(N0);
    NP1 = MEM_PTRTOINST(N1);
    ONP0 = MEM_PTRTOINST(N0);
    ONP1 = MEM_PTRTOINST(N1);
    A0 = NPC_GETARMOR(NP0);
    A1 = NPC_GETARMOR(NP1);
    FN0 = MEM_PTRTOINST(_@(ONP0.MODEL_SCALE[0]));
    FN1 = MEM_PTRTOINST(_@(ONP1.MODEL_SCALE[0]));
    MEM_SWAPBYTES((N0) + (60), (N1) + (60), 64);
    MEM_SWAPBYTES((N0) + (MEM_NPCNAME_OFFSET), (N1) + (MEM_NPCNAME_OFFSET), MEMINT_SWITCHG1G2(272, 312));
    MEM_SWAPBYTES(_@(ONP0.BITFIELD[0]), _@(ONP1.BITFIELD[0]), 20);
    MEM_SWAPBYTES(_@S(ONP0.MDS_NAME), _@S(ONP1.MDS_NAME), 76);
    MEM_SWAPBYTES(_@(ONP0._ZCVOB_BITFIELD[0]), _@(ONP1._ZCVOB_BITFIELD[0]), 20);
    MEM_SWAPBYTES(_@(ONP0._ZCVOB_VISUALALPHA), _@(ONP1._ZCVOB_VISUALALPHA), 4);
    MEM_SWAPBYTES(_@(ONP0.PROTECTION[0]), _@(ONP1.PROTECTION[0]), 32);
    MDL_SETMODELSCALE(NP0, FN0.F0, FN0.F1, FN0.F2);
    MDL_SETMODELSCALE(NP1, FN1.F0, FN1.F1, FN1.F2);
    MDL_SETMODELFATNESS(NP0, FN0.F3);
    MDL_SETMODELFATNESS(NP1, FN1.F3);
    _TRIA_UPDATEVISUAL(NP0, A1);
    _TRIA_UPDATEVISUAL(NP1, A0);
    NPC_REMOVEINVITEM(NP1, A1);
    MW0 = NPC_GETMELEEWEAPON(NP0);
    NPC_REMOVEINVITEM(NP0, A0);
    RW0 = NPC_GETRANGEDWEAPON(NP0);
    MW1 = NPC_GETMELEEWEAPON(NP1);
    RW1 = NPC_GETRANGEDWEAPON(NP1);
    NPC_TRADEITEM(NP0, MW0, MW1);
    NPC_TRADEITEM(NP0, RW0, RW1);
    NPC_TRADEITEM(NP1, MW1, MW0);
    NPC_TRADEITEM(NP1, RW1, RW0);
}

func void _TRIA_COPYNPC(var int SLF) {
    if ((SLF) == (TRIA_LAST)) {
        return;
    };
    if ((SLF) == (TRIA_SELF)) {
        _TRIA_COPY(TRIA_SELF, TRIA_LAST);
    };
    if ((TRIA_LAST) == (TRIA_SELF)) {
        _TRIA_COPY(TRIA_SELF, SLF);
    };
    _TRIA_COPY(TRIA_SELF, TRIA_LAST);
    _TRIA_COPY(TRIA_SELF, SLF);
    TRIA_LAST = SLF;
}

func void _TRIA_INITNPC(var C_NPC SLF, var int TURN) {
    NPC_CLEARAIQUEUE(SLF);
    AI_STANDUP(SLF);
    AI_STOPLOOKAT(SLF);
    AI_REMOVEWEAPON(SLF);
    AI_SETWALKMODE(SLF, NPC_RUN);
    if (TURN) {
        AI_TURNTONPC(SLF, HERO);
        AI_LOOKATNPC(SLF, HERO);
    };
    SLF.AIVAR[4] = TRUE;
    AI_WAITTILLEND(HERO, SLF);
    AI_STARTSTATE(SLF, 11654, 0, "");
}

func void TRIA_INVITE(var C_NPC SLF) {
    if (TRIA_RUNNING) {
        MEM_WARN("TRIA_Invite: Der Trialog l�uft bereits.");
        return;
    };
    if ((TRIA_CPTR) == (TRIA_MAXNPC)) {
        MEM_ERROR("TRIA_Invite: Zu viele Npcs. Erh�he bitte TRIA_MaxNPC.");
        return;
    };
    if (((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(HERO))) || ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(SELF)))) {
        MEM_WARN("TRIA_Invite: Der Held und/oder Self k�nnen nicht eingeladen werden. Sie sind bereits anwesend.");
        return;
    };
    if ((((NPC_GETDISTTONPC(SLF, HERO)) > (TRUNCF(MEM_READINT(SPAWN_INSERTRANGE_ADDRESS)))) || (NPC_ISDEAD(SLF))) || (!(HLP_ISVALIDNPC(SLF)))) {
        MEM_ERROR(CONCATSTRINGS("TRIA_Invite: Der Npc ist nicht in der KI-Glocke und/oder tot: ", SLF.NAME[0]));
        return;
    };
    MEM_WRITESTATARR(TRIA_NPCPTR[0], TRIA_CPTR, MEM_INSTTOPTR(11691));
    TRIA_CPTR += 1;
}

func void TRIA_STARTEXT(var int TURN) {
    var C_NPC SELFCOPY;
    var C_NPC SLF;
    var int P;
    var int I;
    if (TRIA_RUNNING) {
        MEM_WARN("TRIA_Start: Es l�uft bereits ein Trialog.");
        return;
    };
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (TRIA_CPTR)) {
        SLF = MEM_PTRTOINST(MEM_READSTATARR(TRIA_NPCPTR[0], I));
        _TRIA_INITNPC(SLF, TURN);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    NPC_CLEARAIQUEUE(HERO);
    AI_OUTPUT(HERO, SELF, "");
    AI_SETWALKMODE(HERO, NPC_RUN);
    SELFCOPY = HLP_GETNPC(1815);
    SELF = MEM_NULLTOINST();
    TRIA_INVITE(SELFCOPY);
    SELF = HLP_GETNPC(11697);
    TRIA_WAIT();
    TRIA_LAST = MEM_INSTTOPTR(1815);
    TRIA_SELF = TRIA_LAST;
    TRIA_RUNNING = 1;
}

func void TRIA_START() {
    TRIA_STARTEXT(TRUE);
}

func void TRIA_BARRIER() {
    var C_NPC CURR;
    var int P;
    var C_NPC LAST;
    var int J;
    var int I;
    if (!(TRIA_RUNNING)) {
        MEM_WARN("TRIA_Next: Kein Trialog gestartet.");
        return;
    };
    TRIA_WAIT();
    I = !(1);
    J = 0;
    LAST = MEM_PTRTOINST(MEM_READSTATARR(TRIA_NPCPTR[0], TRIA_CPTR));
    P = MEM_STACKPOS.POSITION;
    if ((I) < (TRIA_CPTR)) {
        CURR = MEM_PTRTOINST(MEM_READSTATARR(TRIA_NPCPTR[0], I));
        AI_WAITTILLEND(CURR, LAST);
        LAST = HLP_GETNPC(11704);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    if (!(J)) {
        J = 1;
        I = 0;
        MEM_STACKPOS.POSITION = P;
    };
}

func void TRIA_NEXT(var C_NPC N0) {
    var int P;
    var int J;
    var int I;
    if (!(TRIA_RUNNING)) {
        MEM_WARN("TRIA_Next: Kein Trialog gestartet.");
        return;
    };
    if ((HLP_GETINSTANCEID(N0)) == (HLP_GETINSTANCEID(HERO))) {
        MEM_WARN("TRIA_Next: 'hero' ist kein erlaubter Parameter f�r diese Funktion.");
        return;
    };
    I = 0;
    J = MEM_INSTTOPTR(11706);
    P = MEM_STACKPOS.POSITION;
    if ((I) < (TRIA_CPTR)) {
        if ((MEM_READSTATARR(TRIA_NPCPTR[0], I)) != (J)) {
            I += 1;
            MEM_STACKPOS.POSITION = P;
        };
    };
    if ((I) == (TRIA_CPTR)) {
        MEM_ERROR(CONCATSTRINGS("TRIA_Next: Der Npc ist nicht eingeladen worden: ", N0.NAME[0]));
        return;
    };
    TRIA_WAIT();
    AI_FUNCTION_I(HERO, 11710, J);
}

func void _TRIA_NEXT(var int N0) {
    _TRIA_COPYNPC(N0);
}

func void TRIA_CAM(var string EVT) {
    TRIA_WAIT();
    if (!(STR_LEN(EVT))) {
        if (!(STR_LEN(TRIA_CAMERA))) {
            return;
        };
        AI_FUNCTION_S(HERO, 11716, TRIA_CAMERA);
    };
    if (STR_LEN(TRIA_CAMERA)) {
        AI_FUNCTION_S(HERO, 779, TRIA_CAMERA);
    };
    AI_FUNCTION_S(HERO, 11714, EVT);
    TRIA_CAMERA = EVT;
}

func void _TRIA_CAM(var string EVT) {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER(EVT);
}

func void _TRIA_UNCAM(var string EVT) {
    DIACAM_ENABLE();
    DIACAM_UPDATE();
    WLD_SENDUNTRIGGER(EVT);
}

func void TRIA_FINISH() {
    if (!(TRIA_RUNNING)) {
        MEM_WARN("TRIA_Finish: Kein Trialog gestartet.");
        return;
    };
    TRIA_WAIT();
    TRIA_CAM("");
    AI_FUNCTION(HERO, 11719);
}

func void _TRIA_FINISH() {
    var C_NPC SLF;
    var int P;
    var int I;
    AI_STOPLOOKAT(HERO);
    if ((TRIA_LAST) != (TRIA_SELF)) {
        _TRIA_COPY(TRIA_SELF, TRIA_LAST);
    };
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < ((TRIA_CPTR) - (1))) {
        SLF = MEM_PTRTOINST(MEM_READSTATARR(TRIA_NPCPTR[0], I));
        AI_STOPLOOKAT(SLF);
        SLF.AIVAR[4] = FALSE;
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    TRIA_RUNNING = 0;
    TRIA_CPTR = 0;
}

