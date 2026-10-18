package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentTransaction.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1889b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1890c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1891d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f1892e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f1893f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f1894g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f1896i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f1897j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CharSequence f1898k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1899l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f1900m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList<String> f1901n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList<String> f1902o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ArrayList<a> f1888a = new ArrayList<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1895h = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f1903p = false;

    /* JADX INFO: compiled from: FragmentTransaction.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1904a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public m f1905b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1906c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1907d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1908e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1909f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public androidx.lifecycle.i.c f1910g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public androidx.lifecycle.i.c f1911h;

        public a() {
        }

        public a(int i10, m mVar) {
            this.f1904a = i10;
            this.f1905b = mVar;
            androidx.lifecycle.i.c cVar = androidx.lifecycle.i.c.RESUMED;
            this.f1910g = cVar;
            this.f1911h = cVar;
        }

        public a(m mVar, androidx.lifecycle.i.c cVar) {
            this.f1904a = 10;
            this.f1905b = mVar;
            this.f1910g = mVar.T;
            this.f1911h = cVar;
        }
    }

    public final void b(a aVar) {
        this.f1888a.add(aVar);
        aVar.f1906c = this.f1889b;
        aVar.f1907d = this.f1890c;
        aVar.f1908e = this.f1891d;
        aVar.f1909f = this.f1892e;
    }

    public abstract void c();

    public abstract void d();

    public abstract void e(int i10, m mVar, String str, int i11);

    public final g0 f(int i10, m mVar, String str) {
        if (i10 == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        e(i10, mVar, str, 2);
        return this;
    }

    public final g0 g(int i10, int i11) {
        this.f1889b = i10;
        this.f1890c = i11;
        this.f1891d = 0;
        this.f1892e = 0;
        return this;
    }
}
