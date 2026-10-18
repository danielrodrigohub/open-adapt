package w4;

import android.net.Uri;
import java.util.HashMap;
import java.util.Objects;
import m5.g0;
import u6.h0;
import u6.p0;
import u6.v;
import u6.x;

/* JADX INFO: compiled from: SessionDescription.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x<String, String> f17198a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final v<w4.a> f17199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f17201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f17202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f17203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Uri f17204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f17205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f17206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f17207j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f17208k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String f17209l;

    /* JADX INFO: compiled from: SessionDescription.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashMap<String, String> f17210a = new HashMap<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final v.a<w4.a> f17211b = new v.a<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f17212c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f17213d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f17214e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public String f17215f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public Uri f17216g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f17217h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f17218i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public String f17219j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public String f17220k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public String f17221l;
    }

    public n(a aVar) {
        this.f17198a = x.a(aVar.f17210a);
        this.f17199b = (p0) aVar.f17211b.e();
        String str = aVar.f17213d;
        int i10 = g0.f10384a;
        this.f17200c = str;
        this.f17201d = aVar.f17214e;
        this.f17202e = aVar.f17215f;
        this.f17204g = aVar.f17216g;
        this.f17205h = aVar.f17217h;
        this.f17203f = aVar.f17212c;
        this.f17206i = aVar.f17218i;
        this.f17207j = aVar.f17220k;
        this.f17208k = aVar.f17221l;
        this.f17209l = aVar.f17219j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || n.class != obj.getClass()) {
            return false;
        }
        n nVar = (n) obj;
        if (this.f17203f == nVar.f17203f) {
            x<String, String> xVar = this.f17198a;
            x<String, String> xVar2 = nVar.f17198a;
            Objects.requireNonNull(xVar);
            if (h0.a(xVar, xVar2) && this.f17199b.equals(nVar.f17199b) && g0.a(this.f17201d, nVar.f17201d) && g0.a(this.f17200c, nVar.f17200c) && g0.a(this.f17202e, nVar.f17202e) && g0.a(this.f17209l, nVar.f17209l) && g0.a(this.f17204g, nVar.f17204g) && g0.a(this.f17207j, nVar.f17207j) && g0.a(this.f17208k, nVar.f17208k) && g0.a(this.f17205h, nVar.f17205h) && g0.a(this.f17206i, nVar.f17206i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f17199b.hashCode() + ((this.f17198a.hashCode() + 217) * 31)) * 31;
        String str = this.f17201d;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f17200c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f17202e;
        int iHashCode4 = (((iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.f17203f) * 31;
        String str4 = this.f17209l;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Uri uri = this.f17204g;
        int iHashCode6 = (iHashCode5 + (uri == null ? 0 : uri.hashCode())) * 31;
        String str5 = this.f17207j;
        int iHashCode7 = (iHashCode6 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f17208k;
        int iHashCode8 = (iHashCode7 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f17205h;
        int iHashCode9 = (iHashCode8 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.f17206i;
        return iHashCode9 + (str8 != null ? str8.hashCode() : 0);
    }
}
