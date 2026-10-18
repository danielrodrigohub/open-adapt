package o5;

import java.nio.FloatBuffer;

/* JADX INFO: compiled from: ProjectionRenderer.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final float[] f12295i = {1.0f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f12296j = {1.0f, 0.0f, 0.0f, 0.0f, -0.5f, 0.0f, 0.0f, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f12297k = {0.5f, 0.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f12298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f12299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public m5.k f12300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f12301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f12303f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f12304g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12305h;

    /* JADX INFO: compiled from: ProjectionRenderer.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f12306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FloatBuffer f12307b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FloatBuffer f12308c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f12309d;

        public a(e.b bVar) {
            float[] fArr = bVar.f12293c;
            this.f12306a = fArr.length / 3;
            this.f12307b = da.e.g(fArr);
            this.f12308c = da.e.g(bVar.f12294d);
            int i10 = bVar.f12292b;
            if (i10 == 1) {
                this.f12309d = 5;
            } else if (i10 != 2) {
                this.f12309d = 4;
            } else {
                this.f12309d = 6;
            }
        }
    }

    public static boolean a(e eVar) {
        e.a aVar = eVar.f12286a;
        e.a aVar2 = eVar.f12287b;
        e.b[] bVarArr = aVar.f12290a;
        if (bVarArr.length != 1 || bVarArr[0].f12291a != 0) {
            return false;
        }
        e.b[] bVarArr2 = aVar2.f12290a;
        return bVarArr2.length == 1 && bVarArr2[0].f12291a == 0;
    }
}
