const int NUM_ENTRIES = 26;
class ZCOPTION {
	var int _VBTL;
	var int M_BREADTEMP;
	var int SECTIONLIST_ARRAY;
	var int SECTIONLIST_NUMALLOC;
	var int SECTIONLIST_NUMINARRAY;
	var int DIRECTORY[26];
	var string DIR_STRING[26];
	var string COMMANDLINE;
};

class ZCOPTIONSECTION {
	var string SECNAME;
	var int ENTRYLIST_ARRAY;
	var int ENTRYLIST_NUMALLOC;
	var int ENTRYLIST_NUMINARRAY;
};

const int SIZEOF_ZCOPTIONSECTION = 32;
class ZCOPTIONENTRY {
	var int CHANGED;
	var int CCBLIST_ARRAY;
	var int CCBLIST_NUMALLOC;
	var int CCBLIST_NUMINARRAY;
	var string VARNAME;
	var string VARVALUE;
	var string VARVALUETEMP;
	var int VARFLAG;
};

const int SIZEOF_ZCOPTIONENTRY = 80;
