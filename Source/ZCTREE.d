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
