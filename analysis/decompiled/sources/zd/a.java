package zd;

import c3.d;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import gd.w;
import okhttp3.internal.http2.Http2Connection;
import p4.h;
import vd.e;

/* JADX INFO: compiled from: Duration.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Comparable<a> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C0338a f19479i = new C0338a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final long f19480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f19481k;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f19482h;

    /* JADX INFO: renamed from: zd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Duration.kt */
    public static final class C0338a {
    }

    static {
        int i10 = b.f19483a;
        f19480j = d.k(4611686018427387903L);
        f19481k = d.k(-4611686018427387903L);
    }

    public static final void b(StringBuilder sb2, int i10, int i11, int i12, String str) {
        CharSequence charSequenceSubSequence;
        sb2.append(i10);
        if (i11 != 0) {
            sb2.append('.');
            String strValueOf = String.valueOf(i11);
            h.j(strValueOf, "<this>");
            if (i12 < 0) {
                throw new IllegalArgumentException(a0.d.b("Desired length ", i12, " is less than zero."));
            }
            if (i12 <= strValueOf.length()) {
                charSequenceSubSequence = strValueOf.subSequence(0, strValueOf.length());
            } else {
                StringBuilder sb3 = new StringBuilder(i12);
                w it = new e(1, i12 - strValueOf.length()).iterator();
                while (((vd.d) it).f17026j) {
                    it.a();
                    sb3.append('0');
                }
                sb3.append((CharSequence) strValueOf);
                charSequenceSubSequence = sb3;
            }
            String string = charSequenceSubSequence.toString();
            int i13 = -1;
            int length = string.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i14 = length - 1;
                    if (string.charAt(length) != '0') {
                        i13 = length;
                        break;
                    } else if (i14 < 0) {
                        break;
                    } else {
                        length = i14;
                    }
                }
            }
            int i15 = i13 + 1;
            if (i15 < 3) {
                sb2.append((CharSequence) string, 0, i15);
            } else {
                sb2.append((CharSequence) string, 0, ((i15 + 2) / 3) * 3);
            }
        }
        sb2.append(str);
    }

    public static int g(long j10, long j11) {
        long j12 = j10 ^ j11;
        if (j12 >= 0 && (((int) j12) & 1) != 0) {
            int i10 = (((int) j10) & 1) - (((int) j11) & 1);
            return n(j10) ? -i10 : i10;
        }
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }

    public static final long i(long j10) {
        return p(j10, c.SECONDS);
    }

    public static final c j(long j10) {
        return l(j10) ? c.NANOSECONDS : c.MILLISECONDS;
    }

    public static int k(long j10) {
        return (int) (j10 ^ (j10 >>> 32));
    }

    public static final boolean l(long j10) {
        return (((int) j10) & 1) == 0;
    }

    public static final boolean m(long j10) {
        return j10 == f19480j || j10 == f19481k;
    }

    public static final boolean n(long j10) {
        return j10 < 0;
    }

    public static final double o(long j10, c cVar) {
        h.j(cVar, "unit");
        if (j10 == f19480j) {
            return Double.POSITIVE_INFINITY;
        }
        if (j10 == f19481k) {
            return Double.NEGATIVE_INFINITY;
        }
        return d3.e.e(j10 >> 1, j(j10), cVar);
    }

    public static final long p(long j10, c cVar) {
        h.j(cVar, "unit");
        if (j10 == f19480j) {
            return Long.MAX_VALUE;
        }
        if (j10 == f19481k) {
            return Long.MIN_VALUE;
        }
        long j11 = j10 >> 1;
        c cVarJ = j(j10);
        h.j(cVarJ, "sourceUnit");
        return cVar.f19491h.convert(j11, cVarJ.f19491h);
    }

    public static String q(long j10) {
        int i10;
        long j11;
        int i11;
        long j12 = j10;
        if (j12 == 0) {
            return "0s";
        }
        if (j12 == f19480j) {
            return "Infinity";
        }
        if (j12 == f19481k) {
            return "-Infinity";
        }
        boolean zN = n(j10);
        StringBuilder sb2 = new StringBuilder();
        if (zN) {
            sb2.append('-');
        }
        if (n(j10)) {
            j12 = ((long) (((int) j12) & 1)) + ((-(j12 >> 1)) << 1);
            int i12 = b.f19483a;
        }
        long jP = p(j12, c.DAYS);
        int iP = m(j12) ? 0 : (int) (p(j12, c.HOURS) % ((long) 24));
        int iP2 = m(j12) ? 0 : (int) (p(j12, c.MINUTES) % ((long) 60));
        int i13 = m(j12) ? 0 : (int) (i(j12) % ((long) 60));
        if (m(j12)) {
            j11 = 0;
            i10 = 0;
        } else {
            i10 = (int) ((((int) j12) & 1) == 1 ? ((j12 >> 1) % ((long) 1000)) * ((long) 1000000) : (j12 >> 1) % ((long) Http2Connection.DEGRADED_PONG_TIMEOUT_NS));
            j11 = 0;
        }
        boolean z10 = jP != j11;
        boolean z11 = iP != 0;
        boolean z12 = iP2 != 0;
        boolean z13 = (i13 == 0 && i10 == 0) ? false : true;
        if (z10) {
            sb2.append(jP);
            sb2.append('d');
            i11 = 1;
        } else {
            i11 = 0;
        }
        if (z11 || (z10 && (z12 || z13))) {
            int i14 = i11 + 1;
            if (i11 > 0) {
                sb2.append(SafeJsonPrimitive.NULL_CHAR);
            }
            sb2.append(iP);
            sb2.append('h');
            i11 = i14;
        }
        if (z12 || (z13 && (z11 || z10))) {
            int i15 = i11 + 1;
            if (i11 > 0) {
                sb2.append(SafeJsonPrimitive.NULL_CHAR);
            }
            sb2.append(iP2);
            sb2.append('m');
            i11 = i15;
        }
        if (z13) {
            int i16 = i11 + 1;
            if (i11 > 0) {
                sb2.append(SafeJsonPrimitive.NULL_CHAR);
            }
            if (i13 != 0 || z10 || z11 || z12) {
                b(sb2, i13, i10, 9, "s");
            } else if (i10 >= 1000000) {
                b(sb2, i10 / 1000000, i10 % 1000000, 6, "ms");
            } else if (i10 >= 1000) {
                b(sb2, i10 / 1000, i10 % 1000, 3, "us");
            } else {
                sb2.append(i10);
                sb2.append("ns");
            }
            i11 = i16;
        }
        if (zN && i11 > 1) {
            sb2.insert(1, '(').append(')');
        }
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // java.lang.Comparable
    public final int compareTo(a aVar) {
        return g(this.f19482h, aVar.f19482h);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a) && this.f19482h == ((a) obj).f19482h;
    }

    public final int hashCode() {
        return k(this.f19482h);
    }

    public final String toString() {
        return q(this.f19482h);
    }
}
