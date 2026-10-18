package v4;

import android.net.Uri;
import g0.n;
import java.util.List;
import java.util.Map;
import u6.p0;
import u6.v;
import u6.x;

/* JADX INFO: compiled from: HlsMediaPlaylist.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16262d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16263e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f16264f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f16265g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f16266h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f16267i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f16268j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f16269k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f16270l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f16271m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f16272n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f16273o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f16274p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final r3.d f16275q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final List<c> f16276r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final List<a> f16277s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final Map<Uri, b> f16278t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final long f16279u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final C0291e f16280v;

    /* JADX INFO: compiled from: HlsMediaPlaylist.java */
    public static final class a extends d {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final boolean f16281s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final boolean f16282t;

        public a(String str, c cVar, long j10, int i10, long j11, r3.d dVar, String str2, String str3, long j12, long j13, boolean z10, boolean z11, boolean z12) {
            super(str, cVar, j10, i10, j11, dVar, str2, str3, j12, j13, z10);
            this.f16281s = z11;
            this.f16282t = z12;
        }
    }

    /* JADX INFO: compiled from: HlsMediaPlaylist.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f16283a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f16284b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f16285c;

        public b(Uri uri, long j10, int i10) {
            this.f16283a = uri;
            this.f16284b = j10;
            this.f16285c = i10;
        }
    }

    /* JADX INFO: compiled from: HlsMediaPlaylist.java */
    public static class d implements Comparable<Long> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f16288h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final c f16289i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f16290j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f16291k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final long f16292l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final r3.d f16293m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final String f16294n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final String f16295o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final long f16296p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public final long f16297q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final boolean f16298r;

        public d(String str, c cVar, long j10, int i10, long j11, r3.d dVar, String str2, String str3, long j12, long j13, boolean z10) {
            this.f16288h = str;
            this.f16289i = cVar;
            this.f16290j = j10;
            this.f16291k = i10;
            this.f16292l = j11;
            this.f16293m = dVar;
            this.f16294n = str2;
            this.f16295o = str3;
            this.f16296p = j12;
            this.f16297q = j13;
            this.f16298r = z10;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Long l10) {
            Long l11 = l10;
            if (this.f16292l > l11.longValue()) {
                return 1;
            }
            return this.f16292l < l11.longValue() ? -1 : 0;
        }
    }

    /* JADX INFO: renamed from: v4.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HlsMediaPlaylist.java */
    public static final class C0291e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16299a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f16300b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f16301c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f16302d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f16303e;

        public C0291e(long j10, boolean z10, long j11, long j12, boolean z11) {
            this.f16299a = j10;
            this.f16300b = z10;
            this.f16301c = j11;
            this.f16302d = j12;
            this.f16303e = z11;
        }
    }

    public e(int i10, String str, List<String> list, long j10, boolean z10, long j11, boolean z11, int i11, long j12, int i12, long j13, long j14, boolean z12, boolean z13, boolean z14, r3.d dVar, List<c> list2, List<a> list3, C0291e c0291e, Map<Uri, b> map) {
        super(str, list, z12);
        this.f16262d = i10;
        this.f16266h = j11;
        this.f16265g = z10;
        this.f16267i = z11;
        this.f16268j = i11;
        this.f16269k = j12;
        this.f16270l = i12;
        this.f16271m = j13;
        this.f16272n = j14;
        this.f16273o = z13;
        this.f16274p = z14;
        this.f16275q = dVar;
        this.f16276r = v.s(list2);
        this.f16277s = v.s(list3);
        this.f16278t = x.a(map);
        if (!list3.isEmpty()) {
            a aVar = (a) n.b(list3);
            this.f16279u = aVar.f16292l + aVar.f16290j;
        } else if (list2.isEmpty()) {
            this.f16279u = 0L;
        } else {
            c cVar = (c) n.b(list2);
            this.f16279u = cVar.f16292l + cVar.f16290j;
        }
        this.f16263e = j10 != -9223372036854775807L ? j10 >= 0 ? Math.min(this.f16279u, j10) : Math.max(0L, this.f16279u + j10) : -9223372036854775807L;
        this.f16264f = j10 >= 0;
        this.f16280v = c0291e;
    }

    @Override // o4.a
    public final g a(List list) {
        return this;
    }

    /* JADX INFO: compiled from: HlsMediaPlaylist.java */
    public static final class c extends d {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public final String f16286s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public final List<a> f16287t;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public c(String str, long j10, long j11, String str2, String str3) {
            this(str, null, "", 0L, -1, -9223372036854775807L, null, str2, str3, j10, j11, false, p0.f15967l);
            u6.a aVar = v.f16002i;
        }

        public c(String str, c cVar, String str2, long j10, int i10, long j11, r3.d dVar, String str3, String str4, long j12, long j13, boolean z10, List<a> list) {
            super(str, cVar, j10, i10, j11, dVar, str3, str4, j12, j13, z10);
            this.f16286s = str2;
            this.f16287t = v.s(list);
        }
    }
}
