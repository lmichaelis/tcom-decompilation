class ZCWAYNET {
	var int _VTBL;
	var int _ZCOBJECT_REFCTR;
	var int _ZCOBJECT_HASHINDEX;
	var int _ZCOBJECT_HASHNEXT;
	var string _ZCOBJECT_OBJECTNAME;
	var int WORLD;
	var int WPLIST_COMPAREFUNC;
	var int WPLIST_DATA;
	var int WPLIST_NEXT;
	var int WAYLIST_DATA;
	var int WAYLIST_NEXT;
	var int OPENLIST_COMPAREFUNC;
	var int OPENLIST_DATA;
	var int OPENLIST_NEXT;
	var int ROUTECTR;
};

class ZCWAYPOINT {
	var int _VTBL;
	var int _ZCOBJECT_REFCTR;
	var int _ZCOBJECT_HASHINDEX;
	var int _ZCOBJECT_HASHNEXT;
	var string _ZCOBJECT_OBJECTNAME;
	var int ROUTECTR;
	var int CURCOST;
	var int ESTCOST;
	var int SCORE;
	var int CURLIST;
	var int PARENT;
	var int WATERDEPTH;
	var int UNDERWATER;
	var int POS[3];
	var int DIR[3];
	var string NAME;
	var int WPVOB;
	var int WAYLIST_DATA;
	var int WAYLIST_NEXT;
};

