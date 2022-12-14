const int NUM_FRUSTUM_PLANES = 6;
class ZCCAMERA {
	var int FRUSTUMPLANES[24];
	var int SIGNBITS[2];
	var int XMIN;
	var int YMIN;
	var int XDIM;
	var int YDIM;
	var int XMINFLOAT;
	var int YMINFLOAT;
	var int XMAXFLOAT;
	var int YMAXFLOAT;
	var int XDIMFLOAT;
	var int YDIMFLOAT;
	var int XDIMFLOATMINUS1;
	var int YDIMFLOATMINUS1;
	var int XCENTER;
	var int YCENTER;
	var int TARGETVIEW;
	var int CAMMATRIX[16];
	var int CAMMATRIXINV[16];
	var int TREMORTOGGLE;
	var int TREMORSCALE;
	var int TREMORAMPLITUDE[3];
	var int TREMORORIGIN[3];
	var int TREMORVELO;
	var int TRAFOVIEW[16];
	var int TRAFOVIEWINV[16];
	var int TRAFOWORLD[16];
	var int TRAFOVIEWSTACK[129];
	var int TRAFOWORLDSTACK[129];
	var int TRAFOWORLDVIEWSTACK[129];
	var int TRAFOPROJECTION[16];
	var int POLYCAMVERTS[24];
	var int POLY;
	var int POLYMESH;
	var int POLYMATERIAL;
	var int SCREENFADEENABLED;
	var int SCREENFADECOLOR;
	var string SCREENFADETEXTURE;
	var int SCREENFADETEXTUREANIFPS;
	var int SCREENFADETEXTUREBLENDFUNC;
	var int CINEMASCOPEENABLED;
	var int CINEMASCOPECOLOR;
	var int PROJECTION;
	var int DRAWMODE;
	var int SHADEMODE;
	var int DRAWWIRE;
	var int FARCLIPZ;
	var int NEARCLIPZ;
	var int VIEWDISTANCEX;
	var int VIEWDISTANCEY;
	var int VIEWDISTANCEXINV;
	var int VIEWDISTANCEYINV;
	var int VOBFARCLIPZ;
	var int FOVH;
	var int FOVV;
	var int CONNECTEDVOB;
	var int TOPBOTTOMSIN;
	var int TOPBOTTOMCOS;
	var int LEFTRIGHTSIN;
	var int LEFTRIGHTCOS;
};
