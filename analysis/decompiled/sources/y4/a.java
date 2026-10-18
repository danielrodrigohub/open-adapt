package y4;

import a4.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import m5.g0;
import n3.s0;
import o4.c;

/* JADX INFO: compiled from: SsManifest.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements o4.a<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f18591a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f18594d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0320a f18595e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final b[] f18596f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f18597g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f18598h;

    /* JADX INFO: renamed from: y4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SsManifest.java */
    public static class C0320a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f18599a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f18600b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final m[] f18601c;

        public C0320a(UUID uuid, byte[] bArr, m[] mVarArr) {
            this.f18599a = uuid;
            this.f18600b = bArr;
            this.f18601c = mVarArr;
        }
    }

    /* JADX INFO: compiled from: SsManifest.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18602a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f18603b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f18604c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final String f18605d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f18606e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f18607f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final int f18608g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f18609h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f18610i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final s0[] f18611j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int f18612k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final String f18613l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final String f18614m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final List<Long> f18615n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final long[] f18616o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final long f18617p;

        public b(String str, String str2, int i10, String str3, long j10, String str4, int i11, int i12, int i13, int i14, String str5, s0[] s0VarArr, List<Long> list, long[] jArr, long j11) {
            this.f18613l = str;
            this.f18614m = str2;
            this.f18602a = i10;
            this.f18603b = str3;
            this.f18604c = j10;
            this.f18605d = str4;
            this.f18606e = i11;
            this.f18607f = i12;
            this.f18608g = i13;
            this.f18609h = i14;
            this.f18610i = str5;
            this.f18611j = s0VarArr;
            this.f18615n = list;
            this.f18616o = jArr;
            this.f18617p = j11;
            this.f18612k = list.size();
        }

        public final b a(s0[] s0VarArr) {
            return new b(this.f18613l, this.f18614m, this.f18602a, this.f18603b, this.f18604c, this.f18605d, this.f18606e, this.f18607f, this.f18608g, this.f18609h, this.f18610i, s0VarArr, this.f18615n, this.f18616o, this.f18617p);
        }

        public final long b(int i10) {
            if (i10 == this.f18612k - 1) {
                return this.f18617p;
            }
            long[] jArr = this.f18616o;
            return jArr[i10 + 1] - jArr[i10];
        }

        public final int c(long j10) {
            return g0.f(this.f18616o, j10, true);
        }
    }

    public a(int i10, int i11, long j10, long j11, long j12, int i12, boolean z10, C0320a c0320a, b[] bVarArr) {
        long jR = j11 == 0 ? -9223372036854775807L : g0.R(j11, 1000000L, j10);
        long jR2 = j12 != 0 ? g0.R(j12, 1000000L, j10) : -9223372036854775807L;
        this.f18591a = i10;
        this.f18592b = i11;
        this.f18597g = jR;
        this.f18598h = jR2;
        this.f18593c = i12;
        this.f18594d = z10;
        this.f18595e = c0320a;
        this.f18596f = bVarArr;
    }

    @Override // o4.a
    public final a a(List list) {
        ArrayList arrayList = new ArrayList(list);
        Collections.sort(arrayList);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        b bVar = null;
        int i10 = 0;
        while (i10 < arrayList.size()) {
            c cVar = (c) arrayList.get(i10);
            b bVar2 = this.f18596f[cVar.f12268i];
            if (bVar2 != bVar && bVar != null) {
                arrayList2.add(bVar.a((s0[]) arrayList3.toArray(new s0[0])));
                arrayList3.clear();
            }
            arrayList3.add(bVar2.f18611j[cVar.f12269j]);
            i10++;
            bVar = bVar2;
        }
        if (bVar != null) {
            arrayList2.add(bVar.a((s0[]) arrayList3.toArray(new s0[0])));
        }
        return new a(this.f18591a, this.f18592b, this.f18597g, this.f18598h, this.f18593c, this.f18594d, this.f18595e, (b[]) arrayList2.toArray(new b[0]));
    }

    public a(int i10, int i11, long j10, long j11, int i12, boolean z10, C0320a c0320a, b[] bVarArr) {
        this.f18591a = i10;
        this.f18592b = i11;
        this.f18597g = j10;
        this.f18598h = j11;
        this.f18593c = i12;
        this.f18594d = z10;
        this.f18595e = c0320a;
        this.f18596f = bVarArr;
    }
}
