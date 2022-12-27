class ZCTREE {
	var int PARENT;
	var int FIRSTCHILD;
	var int NEXT;
	var int PREV;
	var int DATA;
};





const int SIZEOF_ZCARRAY = 12;
class ZCARRAY {
	var int ARRAY;
	var int NUMALLOC;
	var int NUMINARRAY;
};



class ZCARRAYSORT {
	var int ARRAY;
	var int NUMALLOC;
	var int NUMINARRAY;
	var int COMPARE;
};




class ZLIST {
	var int COMPARE;
	var int COUNT;
	var int LAST;
	var int WURZEL;
};




class ZCLIST {
	var int DATA;
	var int NEXT;
};


class ZCLISTSORT {
	var int COMPAREFUNC;
	var int DATA;
	var int NEXT;
};



class ZMAT4 {
	var int V0[4];
	var int V1[4];
	var int V2[4];
	var int V3[4];
};




class ZMATRIX4 {
	var int TRAFO[16];
};


class OCPORTALROOM {
	var string PORTALNAME;
	var string OWNERNPC;
	var int OWNERGUILD;
};



class OCPORTALROOMMANAGER {
	var int OLDPLAYERPORTAL;
	var int CURPLAYERPORTAL;
	var int OLDPLAYERROOM;
	var int CURPLAYERROOM;
	var int PORTALS_ARRAY;
	var int PORTALS_NUMALLOC;
	var int PORTALS_NUMINARRAY;
	var int PORTALS_COMPARE;
};



class ZCTIMER {
	var int FACTORMOTION;
	var int FRAMETIMEFLOAT;
	var int TOTALTIMEFLOAT;
	var int FRAMETIMEFLOATSECS;
	var int TOTALTIMEFLOATSECS;
	var int LASTTIMER;
	var int FRAMETIME;
	var int TOTALTIME;
	var int MINFRAMETIME;
	var int FORCEDMAXFRAMETIME;
};



const int OCWORLDTIMER_TICKSPERHOUR = 250000;
const int OCWORLDTIMER_TICKSPERMIN_APPROX = 4167;
class OCWORLDTIMER {
	var int WORLDTIME;
	var int DAY;
};



class ZERROR {
	var int _VTBL;
	var int ONEXIT;
	var string FILTER_AUTHORS;
	var int FILTER_FLAG;
	var int FILTER_LEVEL;
	var int TARGET;
	var int ACK_TYPE;
	var int LOG_FILE;
	var int INDENT_DEPTH;
	var int SPYHANDLE;
	var int SPYMUTEX;
};


class ZSTRING {
	var int _VTBL;
	var int _ALLOCATER;
	var int PTR;
	var int LEN;
	var int RES;
};

const int SIZEOF_ZSTRING = 20;

const int ZCOLOR_CHANNEL = 255;
const int ZCOLOR_SHIFT_RED = 16;
const int ZCOLOR_SHIFT_GREEN = 8;
const int ZCOLOR_SHIFT_BLUE = 0;
const int ZCOLOR_SHIFT_ALPHA = 24;
const int ZCOLOR_RED = 16711680;
const int ZCOLOR_GREEN = 65280;
const int ZCOLOR_BLUE = 255;
const int ZCOLOR_ALPHA = -16777216;

class OCSPAWNMANAGER {
	var int SPAWNLIST_ARRAY;
	var int SPAWNLIST_NUMALLOC;
	var int SPAWNLIST_NUMINARRAY;
	var int SPAWNINGENABLED;
	var int CAMPOS[3];
	var int INSERTTIME;
	var int SPAWNFLAGS;
};
