const int ZCPARSER_SYMTAB_TABLE_ARRAY_OFFSET = 24;
const int ZCPARSER_SORTED_SYMTAB_TABLE_ARRAY_OFFSET = 36;
const int ZCPARSER_STACK_OFFSET = 72;
const int ZCPARSER_STACK_STACKPTR_OFFSET = 76;
class ZCPARSER {
	var int MSGFUNC;
	var int FILE_ARRAY;
	var int FILE_NUMALLOC;
	var int FILE_NUMINARRAY;
	var int SYMTAB_PREALLOCATEDSYMBOLS;
	var int SYMTAB_NEXTPREALLOCATED;
	var int SYMTAB_TABLE_ARRAY;
	var int SYMTAB_TABLE_NUMALLOC;
	var int SYMTAB_TABLE_NUMINARRAY;
	var int SYMTAB_TABLESORT_ARRAY;
	var int SYMTAB_TABLESORT_NUMALLOC;
	var int SYMTAB_TABLESORT_NUMINARRAY;
	var int SYMTAB_TABLESORT_COMPARE;
	var int LASTSYM;
	var int FIRSTSYM;
	var int STRINGTAB_ARRAY_ARRAY;
	var int STRINGTAB_ARRAY_NUMALLOC;
	var int STRINGTAB_ARRAY_NUMINARRAY;
	var int STACK_STACK;
	var int STACK_STACKPTR;
	var int STACK_STACKLAST;
	var int STACK_STACKSIZE;
	var int DATASTACK_STACK[2048];
	var int DATASTACK_SPTR;
	var int _SELF;
	var string FNAME;
	var string MAINFILE;
	var int COMPILED;
	var int TREESAVE;
	var int DATSAVE;
	var int PARSE_CHANGED;
	var int TREELOAD;
	var int MERGEMODE;
	var int LINKINGNR;
	var int LINEC;
	var int LINE_START;
	var int EXT_PARSE;
	var int PC_START;
	var int PC;
	var int OLDPC;
	var int PC_STOP;
	var int OLDPC_STOP;
	var int PARAMS;
	var int IN_FUNCNR;
	var int IN_CLASSNR;
	var int STRINGCOUNT;
	var int IN_FUNC;
	var int IN_CLASS;
	var int ERROR;
	var int STOP_ON_ERROR;
	var int ERRORLINE;
	var int PREVWORD_INDEX[16];
	var int PREVLINE_INDEX[16];
	var int PREVWORD_NR;
	var string AWORD;
	var int _INSTANCE;
	var int INSTANCE_HELP;
	var int PROGRESSBAR;
	var int TREE;
	var int TREENODE;
	var int WIN_CODE;
	var int DEBUGMODE;
	var int CURFUNCNR;
	var int LABELCOUNT;
	var int LABELPOS;
	var int ADD_FUNCLIST_DATA;
	var int ADD_FUNCLIST_NEXT;
	var string ADD_FILENAME;
	var int ADD_CREATED;
};
const int ZCPAR_SYMBOL_BITFIELD_ELE = 4095;
const int ZCPAR_SYMBOL_BITFIELD_TYPE = 61440;
const int ZCPAR_SYMBOL_BITFIELD_FLAGS = 4128768;
const int ZCPAR_SYMBOL_BITFIELD_SPACE = 4194304;
const int ZPAR_TYPE_VOID = 0;
const int ZPAR_TYPE_FLOAT = 4096;
const int ZPAR_TYPE_INT = 8192;
const int ZPAR_TYPE_STRING = 12288;
const int ZPAR_TYPE_CLASS = 16384;
const int ZPAR_TYPE_FUNC = 20480;
const int ZPAR_TYPE_PROTOTYPE = 24576;
const int ZPAR_TYPE_INSTANCE = 28672;
const int ZPAR_FLAG_CONST = 65536;
const int ZPAR_FLAG_RETURN = 131072;
const int ZPAR_FLAG_CLASSVAR = 262144;
const int ZPAR_FLAG_EXTERNAL = 524288;
const int ZPAR_FLAG_MERGED = 1048576;
const int ZCPARSYMBOL_CONTENT_OFFSET = 24;
const int ZCPARSYMBOL_OFFSET_OFFSET = 28;
class ZCPAR_SYMBOL {
	var string NAME;
	var int NEXT;
	var int CONTENT;
	var int OFFSET;
	var int BITFIELD;
	var int FILENR;
	var int LINE;
	var int LINE_ANZ;
	var int POS_BEG;
	var int POS_ANZ;
	var int PARENT;
};
const int ZPAR_OP_PLUS = 0;
const int ZPAR_OP_MINUS = 1;
const int ZPAR_OP_MUL = 2;
const int ZPAR_OP_DIV = 3;
const int ZPAR_OP_MOD = 4;
const int ZPAR_OP_OR = 5;
const int ZPAR_OP_AND = 6;
const int ZPAR_OP_LOWER = 7;
const int ZPAR_OP_HIGHER = 8;
const int ZPAR_OP_IS = 9;
const int ZPAR_OP_LOG_OR = 11;
const int ZPAR_OP_LOG_AND = 12;
const int ZPAR_OP_SHIFTL = 13;
const int ZPAR_OP_SHIFTR = 14;
const int ZPAR_OP_LOWER_EQ = 15;
const int ZPAR_OP_EQUAL = 16;
const int ZPAR_OP_NOTEQUAL = 17;
const int ZPAR_OP_HIGHER_EQ = 18;
const int ZPAR_OP_ISPLUS = 19;
const int ZPAR_OP_ISMINUS = 20;
const int ZPAR_OP_ISMUL = 21;
const int ZPAR_OP_ISDIV = 22;
const int ZPAR_OP_UNARY = 30;
const int ZPAR_OP_UN_PLUS = 30;
const int ZPAR_OP_UN_MINUS = 31;
const int ZPAR_OP_UN_NOT = 32;
const int ZPAR_OP_UN_NEG = 33;
const int ZPAR_OP_MAX = 33;
const int ZPAR_TOK_BRACKETON = 40;
const int ZPAR_TOK_BRACKETOFF = 41;
const int ZPAR_TOK_SEMIKOLON = 42;
const int ZPAR_TOK_KOMMA = 43;
const int ZPAR_TOK_SCHWEIF = 44;
const int ZPAR_TOK_NONE = 45;
const int ZPAR_TOK_FLOAT = 51;
const int ZPAR_TOK_VAR = 52;
const int ZPAR_TOK_OPERATOR = 53;
const int ZPAR_TOK_RET = 60;
const int ZPAR_TOK_CALL = 61;
const int ZPAR_TOK_CALLEXTERN = 62;
const int ZPAR_TOK_POPINT = 63;
const int ZPAR_TOK_PUSHINT = 64;
const int ZPAR_TOK_PUSHVAR = 65;
const int ZPAR_TOK_PUSHSTR = 66;
const int ZPAR_TOK_PUSHINST = 67;
const int ZPAR_TOK_PUSHINDEX = 68;
const int ZPAR_TOK_POPVAR = 69;
const int ZPAR_TOK_ASSIGNSTR = 70;
const int ZPAR_TOK_ASSIGNSTRP = 71;
const int ZPAR_TOK_ASSIGNFUNC = 72;
const int ZPAR_TOK_ASSIGNFLOAT = 73;
const int ZPAR_TOK_ASSIGNINST = 74;
const int ZPAR_TOK_JUMP = 75;
const int ZPAR_TOK_JUMPF = 76;
const int ZPAR_TOK_SETINSTANCE = 80;
const int ZPAR_TOK_SKIP = 90;
const int ZPAR_TOK_LABEL = 91;
const int ZPAR_TOK_FUNC = 92;
const int ZPAR_TOK_FUNCEND = 93;
const int ZPAR_TOK_CLASS = 94;
const int ZPAR_TOK_CLASSEND = 95;
const int ZPAR_TOK_INSTANCE = 96;
const int ZPAR_TOK_INSTANCEEND = 97;
const int ZPAR_TOK_NEWSTRING = 98;
const int ZPAR_TOK_FLAGARRAY = 180;
const int ZPAR_TOK_PUSH_ARRAYVAR = 245;
