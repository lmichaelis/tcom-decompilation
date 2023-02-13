const int OCMOB_BITFIELD_HITP = 4095;
const int OCMOB_BITFIELD_DAMAGE = 16773120;
const int OCMOB_BITFIELD_ISDESTROYED = 16777216;
const int OCMOB_BITFIELD_MOVEABLE = 33554432;
const int OCMOB_BITFIELD_TAKEABLE = 67108864;
const int OCMOB_BITFIELD_FOCUSOVERRIDE = 134217728;
const int OCMOB_BITFIELD_SNDMAT = 1879048192;
class OCMOB {
	var int _VTBL;
	var int _ZCOBJECT_REFCTR;
	var int _ZCOBJECT_HASHINDEX;
	var int _ZCOBJECT_HASHNEXT;
	var string _ZCOBJECT_OBJECTNAME;
	var int _ZCVOB_GLOBALVOBTREENODE;
	var int _ZCVOB_LASTTIMEDRAWN;
	var int _ZCVOB_LASTTIMECOLLECTED;
	var int _ZCVOB_VOBLEAFLIST_ARRAY;
	var int _ZCVOB_VOBLEAFLIST_NUMALLOC;
	var int _ZCVOB_VOBLEAFLIST_NUMINARRAY;
	var int _ZCVOB_TRAFOOBJTOWORLD[16];
	var int _ZCVOB_BBOX3D_MINS[3];
	var int _ZCVOB_BBOX3D_MAXS[3];
	var int _ZCVOB_BSPHERE3D_CENTER[3];
	var int _ZCVOB_BSPHERE3D_RADIUS;
	var int _ZCVOB_TOUCHVOBLIST_ARRAY;
	var int _ZCVOB_TOUCHVOBLIST_NUMALLOC;
	var int _ZCVOB_TOUCHVOBLIST_NUMINARRAY;
	var int _ZCVOB_TYPE;
	var int _ZCVOB_GROUNDSHADOWSIZEPACKED;
	var int _ZCVOB_HOMEWORLD;
	var int _ZCVOB_GROUNDPOLY;
	var int _ZCVOB_CALLBACK_AI;
	var int _ZCVOB_TRAFO;
	var int _ZCVOB_VISUAL;
	var int _ZCVOB_VISUALALPHA;
	var int _ZCVOB_M_FVOBFARCLIPZSCALE;
	var int _ZCVOB_M_ANIMODE;
	var int _ZCVOB_M_ANIMODESTRENGTH;
	var int _ZCVOB_M_ZBIAS;
	var int _ZCVOB_RIGIDBODY;
	var int _ZCVOB_LIGHTCOLORSTAT;
	var int _ZCVOB_LIGHTCOLORDYN;
	var int _ZCVOB_LIGHTDIRECTIONSTAT[3];
	var int _ZCVOB_VOBPRESETNAME;
	var int _ZCVOB_EVENTMANAGER;
	var int _ZCVOB_NEXTONTIMER;
	var int _ZCVOB_BITFIELD[5];
	var int _ZCVOB_M_POCOLLISIONOBJECTCLASS;
	var int _ZCVOB_M_POCOLLISIONOBJECT;
	var string NAME;
	var int BITFIELD;
	var string VISUALDESTROYED;
	var string OWNERSTR;
	var string OWNERGUILDSTR;
	var int OWNER;
	var int OWNERGUILD;
	var int FOCUSNAMEINDEX;
	var int IGNOREVOBLIST_DATA;
	var int IGNOREVOBLIST_NEXT;
};
