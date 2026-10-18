package l5;

import android.net.Uri;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import n3.p0;

/* JADX INFO: compiled from: DataSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f10071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f10072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f10074d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Map<String, String> f10075e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f10076f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f10077g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f10078h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10079i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f10080j;

    static {
        p0.a("goog.exo.datasource");
    }

    public m(Uri uri) {
        this(uri, 0L, -1L);
    }

    public static String a(int i10) {
        if (i10 == 1) {
            return "GET";
        }
        if (i10 == 2) {
            return "POST";
        }
        if (i10 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public final m b(long j10) {
        long j11 = this.f10077g;
        long j12 = j11 != -1 ? j11 - j10 : -1L;
        return (j10 == 0 && j11 == j12) ? this : new m(this.f10071a, this.f10072b, this.f10073c, this.f10074d, this.f10075e, this.f10076f + j10, j12, this.f10078h, this.f10079i, this.f10080j);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("DataSpec[");
        sbC.append(a(this.f10073c));
        sbC.append(" ");
        sbC.append(this.f10071a);
        sbC.append(", ");
        sbC.append(this.f10076f);
        sbC.append(", ");
        sbC.append(this.f10077g);
        sbC.append(", ");
        sbC.append(this.f10078h);
        sbC.append(", ");
        return androidx.recyclerview.widget.s.a(sbC, this.f10079i, "]");
    }

    public m(Uri uri, long j10, long j11) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j10, j11, null, 0, null);
    }

    public m(Uri uri, long j10, int i10, byte[] bArr, Map<String, String> map, long j11, long j12, String str, int i11, Object obj) {
        byte[] bArr2 = bArr;
        boolean z10 = true;
        m5.a.a(j10 + j11 >= 0);
        m5.a.a(j11 >= 0);
        if (j12 <= 0 && j12 != -1) {
            z10 = false;
        }
        m5.a.a(z10);
        this.f10071a = uri;
        this.f10072b = j10;
        this.f10073c = i10;
        this.f10074d = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.f10075e = Collections.unmodifiableMap(new HashMap(map));
        this.f10076f = j11;
        this.f10077g = j12;
        this.f10078h = str;
        this.f10079i = i11;
        this.f10080j = obj;
    }
}
