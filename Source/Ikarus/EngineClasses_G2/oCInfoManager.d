class OCINFOCHOICE {
	var string TEXT;
	var int FUNCTION;
};


const int OCINFO_C_INFO_OFFSET = 28;
class OCINFO {
	var int _VTBL;
	var int NEXT;
	var string NAME;
	var int NPC;
	var int NR;
	var int IMPORTANT;
	var int CONDITIONS;
	var int INFORMATION;
	var string DESCRIPTION;
	var int TRADE;
	var int PERMANENT;
	var int TOLD;
	var int _INSTANCE;
	var int LISTCHOICES_DATA;
	var int LISTCHOICES_NEXT;
};

class OCINFOMANAGER {
	var int _VTBL;
	var int INFOLIST_COMPARE;
	var int INFOLIST_DATA;
	var int INFOLIST_NEXT;
	var int P;
};

class OCINFORMATIONMANAGER {
	var string LASTMETHOD;
	var int DLGSTATUS;
	var int DLGTRADE;
	var int DLGCHOICE;
	var int NPC;
	var int PLAYER;
	var int INFO;
	var int ISDONE;
	var int ISWAITINGFOREND;
	var int ISWAITINGFORSCRIPT;
	var int ISWAITINGFOROPEN;
	var int ISWAITINGFORCLOSE;
	var int ISWAITINGFORSELECTION;
	var int MUSTOPEN;
	var int INDEXBYE;
	var int IMPORTANTCURRENT;
	var int IMPORTANTMAX;
	var int MODE;
};

