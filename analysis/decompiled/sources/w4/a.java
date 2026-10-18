package w4;

import androidx.appcompat.widget.e0;
import java.util.HashMap;
import java.util.Objects;
import m5.g0;
import n3.i1;
import u6.h0;
import u6.x;

/* JADX INFO: compiled from: MediaDescription.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f17116a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17119d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f17120e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f17121f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f17122g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x<String, String> f17124i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f17125j;

    /* JADX INFO: compiled from: MediaDescription.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f17126a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f17127b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f17128c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f17129d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final HashMap<String, String> f17130e = new HashMap<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f17131f = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public String f17132g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f17133h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f17134i;

        public b(String str, int i10, String str2, int i11) {
            this.f17126a = str;
            this.f17127b = i10;
            this.f17128c = str2;
            this.f17129d = i11;
        }

        public static String b(int i10, String str, int i11, int i12) {
            return g0.m("%d %s/%d/%d", Integer.valueOf(i10), str, Integer.valueOf(i11), Integer.valueOf(i12));
        }

        public static String c(int i10) {
            m5.a.a(i10 < 96);
            if (i10 == 0) {
                return b(0, "PCMU", 8000, 1);
            }
            if (i10 == 8) {
                return b(8, "PCMA", 8000, 1);
            }
            if (i10 == 10) {
                return b(10, "L16", 44100, 2);
            }
            if (i10 == 11) {
                return b(11, "L16", 44100, 1);
            }
            throw new IllegalStateException(e0.d("Unsupported static paylod type ", i10));
        }

        public final a a() {
            c cVarA;
            try {
                if (this.f17130e.containsKey("rtpmap")) {
                    String str = this.f17130e.get("rtpmap");
                    int i10 = g0.f10384a;
                    cVarA = c.a(str);
                } else {
                    cVarA = c.a(c(this.f17129d));
                }
                return new a(this, x.a(this.f17130e), cVarA, null);
            } catch (i1 e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    /* JADX INFO: compiled from: MediaDescription.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f17135a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f17136b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f17137c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f17138d;

        public c(int i10, String str, int i11, int i12) {
            this.f17135a = i10;
            this.f17136b = str;
            this.f17137c = i11;
            this.f17138d = i12;
        }

        public static c a(String str) throws i1 {
            int i10 = g0.f10384a;
            String[] strArrSplit = str.split(" ", 2);
            m5.a.a(strArrSplit.length == 2);
            int iC = com.google.android.exoplayer2.source.rtsp.h.c(strArrSplit[0]);
            String[] strArrSplit2 = strArrSplit[1].trim().split("/", -1);
            m5.a.a(strArrSplit2.length >= 2);
            return new c(iC, strArrSplit2[0], com.google.android.exoplayer2.source.rtsp.h.c(strArrSplit2[1]), strArrSplit2.length == 3 ? com.google.android.exoplayer2.source.rtsp.h.c(strArrSplit2[2]) : -1);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || c.class != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.f17135a == cVar.f17135a && this.f17136b.equals(cVar.f17136b) && this.f17137c == cVar.f17137c && this.f17138d == cVar.f17138d;
        }

        public final int hashCode() {
            return ((a1.f.c(this.f17136b, (this.f17135a + 217) * 31, 31) + this.f17137c) * 31) + this.f17138d;
        }
    }

    public a(b bVar, x xVar, c cVar, C0301a c0301a) {
        this.f17116a = bVar.f17126a;
        this.f17117b = bVar.f17127b;
        this.f17118c = bVar.f17128c;
        this.f17119d = bVar.f17129d;
        this.f17121f = bVar.f17132g;
        this.f17122g = bVar.f17133h;
        this.f17120e = bVar.f17131f;
        this.f17123h = bVar.f17134i;
        this.f17124i = xVar;
        this.f17125j = cVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f17116a.equals(aVar.f17116a) && this.f17117b == aVar.f17117b && this.f17118c.equals(aVar.f17118c) && this.f17119d == aVar.f17119d && this.f17120e == aVar.f17120e) {
            x<String, String> xVar = this.f17124i;
            x<String, String> xVar2 = aVar.f17124i;
            Objects.requireNonNull(xVar);
            if (h0.a(xVar, xVar2) && this.f17125j.equals(aVar.f17125j) && g0.a(this.f17121f, aVar.f17121f) && g0.a(this.f17122g, aVar.f17122g) && g0.a(this.f17123h, aVar.f17123h)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f17125j.hashCode() + ((this.f17124i.hashCode() + ((((a1.f.c(this.f17118c, (a1.f.c(this.f17116a, 217, 31) + this.f17117b) * 31, 31) + this.f17119d) * 31) + this.f17120e) * 31)) * 31)) * 31;
        String str = this.f17121f;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f17122g;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f17123h;
        return iHashCode3 + (str3 != null ? str3.hashCode() : 0);
    }
}
