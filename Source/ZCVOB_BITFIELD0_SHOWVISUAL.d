const int ZCVOB_BITFIELD0_SHOWVISUAL = 1;
const int ZCVOB_BITFIELD0_DRAWBBOX3D = 2;
const int ZCVOB_BITFIELD0_VISUALALPHAENABLED = 4;
const int ZCVOB_BITFIELD0_PHYSICSENABLED = 8;
const int ZCVOB_BITFIELD0_STATICVOB = 16;
const int ZCVOB_BITFIELD0_IGNOREDBYTRACERAY = 32;
const int ZCVOB_BITFIELD0_COLLDETECTIONSTATIC = 64;
const int ZCVOB_BITFIELD0_COLLDETECTIONDYNAMIC = 128;
const int ZCVOB_BITFIELD0_CASTDYNSHADOW = 768;
const int ZCVOB_BITFIELD0_LIGHTCOLORSTATDIRTY = 1024;
const int ZCVOB_BITFIELD0_LIGHTCOLORDYNDIRTY = 2048;
const int ZCVOB_BITFIELD1_ISINMOVEMENTMODE = 3;
const int ZCVOB_BITFIELD2_SLEEPINGMODE = 3;
const int ZCVOB_BITFIELD2_MBHINTTRAFOLOCALCONST = 4;
const int ZCVOB_BITFIELD2_MBINSIDEENDMOVEMENTMETHOD = 8;
const int ZCVOB_BITFIELD3_VISUALCAMALIGN = 3;
const int ZCVOB_BITFIELD4_COLLBUTNOMOVE = 15;
const int ZCVOB_BITFIELD4_DONTWRITEINTOARCHIVE = 16;
const int ZCVOB_BITFIELD4_BISINWATER = 32;
const int ZCVOB_BITFIELD4_BISAMBIENTVOB = 64;
const int ZCVOB_TRAFOOBJTOWORLD_X = 3;
const int ZCVOB_TRAFOOBJTOWORLD_Y = 7;
const int ZCVOB_TRAFOOBJTOWORLD_Z = 11;
class ZCVOB {
	var int _VTBL;
	var int _ZCOBJECT_REFCTR;
	var int _ZCOBJECT_HASHINDEX;
	var int _ZCOBJECT_HASHNEXT;
	var string _ZCOBJECT_OBJECTNAME;
	var int GLOBALVOBTREENODE;
	var int LASTTIMEDRAWN;
	var int LASTTIMECOLLECTED;
	var int VOBLEAFLIST_ARRAY;
	var int VOBLEAFLIST_NUMALLOC;
	var int VOBLEAFLIST_NUMINARRAY;
	var int TRAFOOBJTOWORLD[16];
	var int BBOX3D_MINS[3];
	var int BBOX3D_MAXS[3];
	var int BSPHERE3D_CENTER[3];
	var int BSPHERE3D_RADIUS;
	var int TOUCHVOBLIST_ARRAY;
	var int TOUCHVOBLIST_NUMALLOC;
	var int TOUCHVOBLIST_NUMINARRAY;
	var int TYPE;
	var int GROUNDSHADOWSIZEPACKED;
	var int HOMEWORLD;
	var int GROUNDPOLY;
	var int CALLBACK_AI;
	var int TRAFO;
	var int VISUAL;
	var int VISUALALPHA;
	var int M_FVOBFARCLIPZSCALE;
	var int M_ANIMODE;
	var int M_ANIMODESTRENGTH;
	var int M_ZBIAS;
	var int RIGIDBODY;
	var int LIGHTCOLORSTAT;
	var int LIGHTCOLORDYN;
	var int LIGHTDIRECTIONSTAT[3];
	var int VOBPRESETNAME;
	var int EVENTMANAGER;
	var int NEXTONTIMER;
	var int BITFIELD[5];
	var int M_POCOLLISIONOBJECTCLASS;
	var int M_POCOLLISIONOBJECT;
};
const int SIZEOF_ZCVOB = 288;
