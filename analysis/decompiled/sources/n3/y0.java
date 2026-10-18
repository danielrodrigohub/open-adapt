package n3;

import android.net.Uri;
import android.os.Bundle;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: compiled from: MediaItem.java */
/* JADX INFO: loaded from: classes.dex */
public final class y0 implements n3.h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final y0 f11745n = new b().a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final n3.h.a<y0> f11746o = y0.i.f18231c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f11747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f11748i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final f f11749j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final a1 f11750k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final d f11751l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final i f11752m;

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f11753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Uri f11754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f11755c;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f11759g;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f11761i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public a1 f11762j;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c.a f11756d = new c.a();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public e.a f11757e = new e.a();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public List<o4.c> f11758f = Collections.emptyList();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public u6.v<k> f11760h = u6.p0.f15967l;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public f.a f11763k = new f.a();

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public i f11764l = i.f11812k;

        public final y0 a() {
            h hVar;
            e.a aVar = this.f11757e;
            m5.a.e(aVar.f11786b == null || aVar.f11785a != null);
            Uri uri = this.f11754b;
            if (uri != null) {
                String str = this.f11755c;
                e.a aVar2 = this.f11757e;
                hVar = new h(uri, str, aVar2.f11785a != null ? new e(aVar2) : null, this.f11758f, this.f11759g, this.f11760h, this.f11761i);
            } else {
                hVar = null;
            }
            String str2 = this.f11753a;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = str2;
            c.a aVar3 = this.f11756d;
            Objects.requireNonNull(aVar3);
            d dVar = new d(aVar3);
            f.a aVar4 = this.f11763k;
            Objects.requireNonNull(aVar4);
            f fVar = new f(aVar4);
            a1 a1Var = this.f11762j;
            if (a1Var == null) {
                a1Var = a1.N;
            }
            return new y0(str3, dVar, hVar, fVar, a1Var, this.f11764l, null);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static class c implements n3.h {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final n3.h.a<d> f11765m;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f11766h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f11767i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f11768j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final boolean f11769k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean f11770l;

        static {
            new a().a();
            f11765m = y0.f.f18194c;
        }

        public c(a aVar) {
            this.f11766h = aVar.f11771a;
            this.f11767i = aVar.f11772b;
            this.f11768j = aVar.f11773c;
            this.f11769k = aVar.f11774d;
            this.f11770l = aVar.f11775e;
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putLong(b(0), this.f11766h);
            bundle.putLong(b(1), this.f11767i);
            bundle.putBoolean(b(2), this.f11768j);
            bundle.putBoolean(b(3), this.f11769k);
            bundle.putBoolean(b(4), this.f11770l);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f11766h == cVar.f11766h && this.f11767i == cVar.f11767i && this.f11768j == cVar.f11768j && this.f11769k == cVar.f11769k && this.f11770l == cVar.f11770l;
        }

        public final int hashCode() {
            long j10 = this.f11766h;
            int i10 = ((int) (j10 ^ (j10 >>> 32))) * 31;
            long j11 = this.f11767i;
            return ((((((i10 + ((int) ((j11 >>> 32) ^ j11))) * 31) + (this.f11768j ? 1 : 0)) * 31) + (this.f11769k ? 1 : 0)) * 31) + (this.f11770l ? 1 : 0);
        }

        /* JADX INFO: compiled from: MediaItem.java */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f11771a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f11772b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f11773c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f11774d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f11775e;

            public a() {
                this.f11772b = Long.MIN_VALUE;
            }

            @Deprecated
            public final d a() {
                return new d(this);
            }

            public a(c cVar) {
                this.f11771a = cVar.f11766h;
                this.f11772b = cVar.f11767i;
                this.f11773c = cVar.f11768j;
                this.f11774d = cVar.f11769k;
                this.f11775e = cVar.f11770l;
            }
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    @Deprecated
    public static final class d extends c {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final d f11776n = new c.a().a();

        public d(c.a aVar) {
            super(aVar);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f11805a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f11806b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final e f11807c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final List<o4.c> f11808d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f11809e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final u6.v<k> f11810f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final Object f11811g;

        /* JADX WARN: Multi-variable type inference failed */
        public g(Uri uri, String str, e eVar, List list, String str2, u6.v vVar, Object obj) {
            this.f11805a = uri;
            this.f11806b = str;
            this.f11807c = eVar;
            this.f11808d = list;
            this.f11809e = str2;
            this.f11810f = vVar;
            u6.a aVar = u6.v.f16002i;
            u6.h.b(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            int i10 = 0;
            int i11 = 0;
            while (i10 < vVar.size()) {
                j jVar = new j(new k.a((k) vVar.get(i10)));
                int i12 = i11 + 1;
                if (objArrCopyOf.length < i12) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i12));
                }
                objArrCopyOf[i11] = jVar;
                i10++;
                i11 = i12;
            }
            u6.v.q(objArrCopyOf, i11);
            this.f11811g = obj;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.f11805a.equals(gVar.f11805a) && m5.g0.a(this.f11806b, gVar.f11806b) && m5.g0.a(this.f11807c, gVar.f11807c) && m5.g0.a(null, null) && this.f11808d.equals(gVar.f11808d) && m5.g0.a(this.f11809e, gVar.f11809e) && this.f11810f.equals(gVar.f11810f) && m5.g0.a(this.f11811g, gVar.f11811g);
        }

        public final int hashCode() {
            int iHashCode = this.f11805a.hashCode() * 31;
            String str = this.f11806b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            e eVar = this.f11807c;
            int iHashCode3 = (this.f11808d.hashCode() + ((((iHashCode2 + (eVar == null ? 0 : eVar.hashCode())) * 31) + 0) * 31)) * 31;
            String str2 = this.f11809e;
            int iHashCode4 = (this.f11810f.hashCode() + ((iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31)) * 31;
            Object obj = this.f11811g;
            return iHashCode4 + (obj != null ? obj.hashCode() : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    @Deprecated
    public static final class h extends g {
        public h(Uri uri, String str, e eVar, List list, String str2, u6.v vVar, Object obj) {
            super(uri, str, eVar, list, str2, vVar, obj);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class i implements n3.h {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final i f11812k = new i(new a());

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final n3.h.a<i> f11813l = z0.f11839c;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Uri f11814h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f11815i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Bundle f11816j;

        /* JADX INFO: compiled from: MediaItem.java */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Uri f11817a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f11818b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public Bundle f11819c;
        }

        public i(a aVar) {
            this.f11814h = aVar.f11817a;
            this.f11815i = aVar.f11818b;
            this.f11816j = aVar.f11819c;
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            if (this.f11814h != null) {
                bundle.putParcelable(b(0), this.f11814h);
            }
            if (this.f11815i != null) {
                bundle.putString(b(1), this.f11815i);
            }
            if (this.f11816j != null) {
                bundle.putBundle(b(2), this.f11816j);
            }
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return m5.g0.a(this.f11814h, iVar.f11814h) && m5.g0.a(this.f11815i, iVar.f11815i);
        }

        public final int hashCode() {
            Uri uri = this.f11814h;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.f11815i;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    @Deprecated
    public static final class j extends k {
        public j(k.a aVar) {
            super(aVar);
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static class k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f11820a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f11821b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f11822c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f11823d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f11824e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f11825f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final String f11826g;

        /* JADX INFO: compiled from: MediaItem.java */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public Uri f11827a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public String f11828b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public String f11829c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f11830d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f11831e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public String f11832f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public String f11833g;

            public a(k kVar) {
                this.f11827a = kVar.f11820a;
                this.f11828b = kVar.f11821b;
                this.f11829c = kVar.f11822c;
                this.f11830d = kVar.f11823d;
                this.f11831e = kVar.f11824e;
                this.f11832f = kVar.f11825f;
                this.f11833g = kVar.f11826g;
            }
        }

        public k(a aVar) {
            this.f11820a = aVar.f11827a;
            this.f11821b = aVar.f11828b;
            this.f11822c = aVar.f11829c;
            this.f11823d = aVar.f11830d;
            this.f11824e = aVar.f11831e;
            this.f11825f = aVar.f11832f;
            this.f11826g = aVar.f11833g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof k)) {
                return false;
            }
            k kVar = (k) obj;
            return this.f11820a.equals(kVar.f11820a) && m5.g0.a(this.f11821b, kVar.f11821b) && m5.g0.a(this.f11822c, kVar.f11822c) && this.f11823d == kVar.f11823d && this.f11824e == kVar.f11824e && m5.g0.a(this.f11825f, kVar.f11825f) && m5.g0.a(this.f11826g, kVar.f11826g);
        }

        public final int hashCode() {
            int iHashCode = this.f11820a.hashCode() * 31;
            String str = this.f11821b;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.f11822c;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.f11823d) * 31) + this.f11824e) * 31;
            String str3 = this.f11825f;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.f11826g;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    public y0(String str, d dVar, f fVar, a1 a1Var, i iVar) {
        this.f11747h = str;
        this.f11748i = null;
        this.f11749j = fVar;
        this.f11750k = a1Var;
        this.f11751l = dVar;
        this.f11752m = iVar;
    }

    public static y0 c(Uri uri) {
        b bVar = new b();
        bVar.f11754b = uri;
        return bVar.a();
    }

    public static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putString(d(0), this.f11747h);
        bundle.putBundle(d(1), this.f11749j.a());
        bundle.putBundle(d(2), this.f11750k.a());
        bundle.putBundle(d(3), this.f11751l.a());
        bundle.putBundle(d(4), this.f11752m.a());
        return bundle;
    }

    public final b b() {
        b bVar = new b();
        bVar.f11756d = new c.a(this.f11751l);
        bVar.f11753a = this.f11747h;
        bVar.f11762j = this.f11750k;
        bVar.f11763k = new f.a(this.f11749j);
        bVar.f11764l = this.f11752m;
        h hVar = this.f11748i;
        if (hVar != null) {
            bVar.f11759g = hVar.f11809e;
            bVar.f11755c = hVar.f11806b;
            bVar.f11754b = hVar.f11805a;
            bVar.f11758f = hVar.f11808d;
            bVar.f11760h = hVar.f11810f;
            bVar.f11761i = hVar.f11811g;
            e eVar = hVar.f11807c;
            bVar.f11757e = eVar != null ? new e.a(eVar) : new e.a();
        }
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y0)) {
            return false;
        }
        y0 y0Var = (y0) obj;
        return m5.g0.a(this.f11747h, y0Var.f11747h) && this.f11751l.equals(y0Var.f11751l) && m5.g0.a(this.f11748i, y0Var.f11748i) && m5.g0.a(this.f11749j, y0Var.f11749j) && m5.g0.a(this.f11750k, y0Var.f11750k) && m5.g0.a(this.f11752m, y0Var.f11752m);
    }

    public final int hashCode() {
        int iHashCode = this.f11747h.hashCode() * 31;
        h hVar = this.f11748i;
        return this.f11752m.hashCode() + ((this.f11750k.hashCode() + ((this.f11751l.hashCode() + ((this.f11749j.hashCode() + ((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31)) * 31)) * 31)) * 31);
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f11777a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Uri f11778b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final u6.x<String, String> f11779c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final boolean f11780d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final boolean f11781e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f11782f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final u6.v<Integer> f11783g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final byte[] f11784h;

        public e(a aVar) {
            m5.a.e((aVar.f11790f && aVar.f11786b == null) ? false : true);
            UUID uuid = aVar.f11785a;
            Objects.requireNonNull(uuid);
            this.f11777a = uuid;
            this.f11778b = aVar.f11786b;
            this.f11779c = aVar.f11787c;
            this.f11780d = aVar.f11788d;
            this.f11782f = aVar.f11790f;
            this.f11781e = aVar.f11789e;
            this.f11783g = aVar.f11791g;
            byte[] bArr = aVar.f11792h;
            this.f11784h = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof e)) {
                return false;
            }
            e eVar = (e) obj;
            return this.f11777a.equals(eVar.f11777a) && m5.g0.a(this.f11778b, eVar.f11778b) && m5.g0.a(this.f11779c, eVar.f11779c) && this.f11780d == eVar.f11780d && this.f11782f == eVar.f11782f && this.f11781e == eVar.f11781e && this.f11783g.equals(eVar.f11783g) && Arrays.equals(this.f11784h, eVar.f11784h);
        }

        public final int hashCode() {
            int iHashCode = this.f11777a.hashCode() * 31;
            Uri uri = this.f11778b;
            return Arrays.hashCode(this.f11784h) + ((this.f11783g.hashCode() + ((((((((this.f11779c.hashCode() + ((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31)) * 31) + (this.f11780d ? 1 : 0)) * 31) + (this.f11782f ? 1 : 0)) * 31) + (this.f11781e ? 1 : 0)) * 31)) * 31);
        }

        /* JADX INFO: compiled from: MediaItem.java */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public UUID f11785a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public Uri f11786b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public u6.x<String, String> f11787c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f11788d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public boolean f11789e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f11790f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            public u6.v<Integer> f11791g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public byte[] f11792h;

            public a() {
                this.f11787c = u6.q0.f15971n;
                u6.a aVar = u6.v.f16002i;
                this.f11791g = u6.p0.f15967l;
            }

            public a(e eVar) {
                this.f11785a = eVar.f11777a;
                this.f11786b = eVar.f11778b;
                this.f11787c = eVar.f11779c;
                this.f11788d = eVar.f11780d;
                this.f11789e = eVar.f11781e;
                this.f11790f = eVar.f11782f;
                this.f11791g = eVar.f11783g;
                this.f11792h = eVar.f11784h;
            }
        }
    }

    /* JADX INFO: compiled from: MediaItem.java */
    public static final class f implements n3.h {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final f f11793m = new f(new a());

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final n3.h.a<f> f11794n = y0.h.f18221d;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f11795h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f11796i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f11797j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final float f11798k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final float f11799l;

        public f(a aVar) {
            long j10 = aVar.f11800a;
            long j11 = aVar.f11801b;
            long j12 = aVar.f11802c;
            float f10 = aVar.f11803d;
            float f11 = aVar.f11804e;
            this.f11795h = j10;
            this.f11796i = j11;
            this.f11797j = j12;
            this.f11798k = f10;
            this.f11799l = f11;
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putLong(b(0), this.f11795h);
            bundle.putLong(b(1), this.f11796i);
            bundle.putLong(b(2), this.f11797j);
            bundle.putFloat(b(3), this.f11798k);
            bundle.putFloat(b(4), this.f11799l);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.f11795h == fVar.f11795h && this.f11796i == fVar.f11796i && this.f11797j == fVar.f11797j && this.f11798k == fVar.f11798k && this.f11799l == fVar.f11799l;
        }

        public final int hashCode() {
            long j10 = this.f11795h;
            long j11 = this.f11796i;
            int i10 = ((((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) (j11 ^ (j11 >>> 32)))) * 31;
            long j12 = this.f11797j;
            int i11 = (i10 + ((int) ((j12 >>> 32) ^ j12))) * 31;
            float f10 = this.f11798k;
            int iFloatToIntBits = (i11 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31;
            float f11 = this.f11799l;
            return iFloatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0);
        }

        /* JADX INFO: compiled from: MediaItem.java */
        public static final class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public long f11800a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public long f11801b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f11802c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public float f11803d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public float f11804e;

            public a() {
                this.f11800a = -9223372036854775807L;
                this.f11801b = -9223372036854775807L;
                this.f11802c = -9223372036854775807L;
                this.f11803d = -3.4028235E38f;
                this.f11804e = -3.4028235E38f;
            }

            public a(f fVar) {
                this.f11800a = fVar.f11795h;
                this.f11801b = fVar.f11796i;
                this.f11802c = fVar.f11797j;
                this.f11803d = fVar.f11798k;
                this.f11804e = fVar.f11799l;
            }
        }

        @Deprecated
        public f(long j10, long j11, long j12, float f10, float f11) {
            this.f11795h = j10;
            this.f11796i = j11;
            this.f11797j = j12;
            this.f11798k = f10;
            this.f11799l = f11;
        }
    }

    public y0(String str, d dVar, h hVar, f fVar, a1 a1Var, i iVar, a aVar) {
        this.f11747h = str;
        this.f11748i = hVar;
        this.f11749j = fVar;
        this.f11750k = a1Var;
        this.f11751l = dVar;
        this.f11752m = iVar;
    }
}
