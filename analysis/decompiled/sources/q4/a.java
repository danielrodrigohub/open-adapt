package q4;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Arrays;
import m5.g0;
import n3.h;
import n3.p;
import y0.e;

/* JADX INFO: compiled from: AdPlaybackState.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final a f13606n = new a(null, new C0241a[0], 0, -9223372036854775807L, 0);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final C0241a f13607o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final h.a<a> f13608p;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f13609h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f13610i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f13611j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f13612k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f13613l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0241a[] f13614m;

    /* JADX INFO: renamed from: q4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdPlaybackState.java */
    public static final class C0241a implements h {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final h.a<C0241a> f13615o = e.f18183e;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f13616h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final int f13617i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final Uri[] f13618j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int[] f13619k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final long[] f13620l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final long f13621m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public final boolean f13622n;

        public C0241a(long j10, int i10, int[] iArr, Uri[] uriArr, long[] jArr, long j11, boolean z10) {
            m5.a.a(iArr.length == uriArr.length);
            this.f13616h = j10;
            this.f13617i = i10;
            this.f13619k = iArr;
            this.f13618j = uriArr;
            this.f13620l = jArr;
            this.f13621m = j11;
            this.f13622n = z10;
        }

        public static String d(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putLong(d(0), this.f13616h);
            bundle.putInt(d(1), this.f13617i);
            bundle.putParcelableArrayList(d(2), new ArrayList<>(Arrays.asList(this.f13618j)));
            bundle.putIntArray(d(3), this.f13619k);
            bundle.putLongArray(d(4), this.f13620l);
            bundle.putLong(d(5), this.f13621m);
            bundle.putBoolean(d(6), this.f13622n);
            return bundle;
        }

        public final int b(int i10) {
            int i11 = i10 + 1;
            while (true) {
                int[] iArr = this.f13619k;
                if (i11 >= iArr.length || this.f13622n || iArr[i11] == 0 || iArr[i11] == 1) {
                    break;
                }
                i11++;
            }
            return i11;
        }

        public final boolean c() {
            if (this.f13617i == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.f13617i; i10++) {
                int[] iArr = this.f13619k;
                if (iArr[i10] == 0 || iArr[i10] == 1) {
                    return true;
                }
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || C0241a.class != obj.getClass()) {
                return false;
            }
            C0241a c0241a = (C0241a) obj;
            return this.f13616h == c0241a.f13616h && this.f13617i == c0241a.f13617i && Arrays.equals(this.f13618j, c0241a.f13618j) && Arrays.equals(this.f13619k, c0241a.f13619k) && Arrays.equals(this.f13620l, c0241a.f13620l) && this.f13621m == c0241a.f13621m && this.f13622n == c0241a.f13622n;
        }

        public final int hashCode() {
            int i10 = this.f13617i * 31;
            long j10 = this.f13616h;
            int iHashCode = (Arrays.hashCode(this.f13620l) + ((Arrays.hashCode(this.f13619k) + ((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + Arrays.hashCode(this.f13618j)) * 31)) * 31)) * 31;
            long j11 = this.f13621m;
            return ((iHashCode + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.f13622n ? 1 : 0);
        }
    }

    static {
        C0241a c0241a = new C0241a(0L, -1, new int[0], new Uri[0], new long[0], 0L, false);
        int[] iArr = c0241a.f13619k;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = c0241a.f13620l;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        f13607o = new C0241a(c0241a.f13616h, 0, iArrCopyOf, (Uri[]) Arrays.copyOf(c0241a.f13618j, 0), jArrCopyOf, c0241a.f13621m, c0241a.f13622n);
        f13608p = p.f11616f;
    }

    public a(Object obj, C0241a[] c0241aArr, long j10, long j11, int i10) {
        this.f13609h = obj;
        this.f13611j = j10;
        this.f13612k = j11;
        this.f13610i = c0241aArr.length + i10;
        this.f13614m = c0241aArr;
        this.f13613l = i10;
    }

    public static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (C0241a c0241a : this.f13614m) {
            arrayList.add(c0241a.a());
        }
        bundle.putParcelableArrayList(c(1), arrayList);
        bundle.putLong(c(2), this.f13611j);
        bundle.putLong(c(3), this.f13612k);
        bundle.putInt(c(4), this.f13613l);
        return bundle;
    }

    public final C0241a b(int i10) {
        int i11 = this.f13613l;
        return i10 < i11 ? f13607o : this.f13614m[i10 - i11];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return g0.a(this.f13609h, aVar.f13609h) && this.f13610i == aVar.f13610i && this.f13611j == aVar.f13611j && this.f13612k == aVar.f13612k && this.f13613l == aVar.f13613l && Arrays.equals(this.f13614m, aVar.f13614m);
    }

    public final int hashCode() {
        int i10 = this.f13610i * 31;
        Object obj = this.f13609h;
        return ((((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.f13611j)) * 31) + ((int) this.f13612k)) * 31) + this.f13613l) * 31) + Arrays.hashCode(this.f13614m);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("AdPlaybackState(adsId=");
        sbC.append(this.f13609h);
        sbC.append(", adResumePositionUs=");
        sbC.append(this.f13611j);
        sbC.append(", adGroups=[");
        for (int i10 = 0; i10 < this.f13614m.length; i10++) {
            sbC.append("adGroup(timeUs=");
            sbC.append(this.f13614m[i10].f13616h);
            sbC.append(", ads=[");
            for (int i11 = 0; i11 < this.f13614m[i10].f13619k.length; i11++) {
                sbC.append("ad(state=");
                int i12 = this.f13614m[i10].f13619k[i11];
                if (i12 == 0) {
                    sbC.append('_');
                } else if (i12 == 1) {
                    sbC.append('R');
                } else if (i12 == 2) {
                    sbC.append('S');
                } else if (i12 == 3) {
                    sbC.append('P');
                } else if (i12 != 4) {
                    sbC.append('?');
                } else {
                    sbC.append('!');
                }
                sbC.append(", durationUs=");
                sbC.append(this.f13614m[i10].f13620l[i11]);
                sbC.append(')');
                if (i11 < this.f13614m[i10].f13619k.length - 1) {
                    sbC.append(", ");
                }
            }
            sbC.append("])");
            if (i10 < this.f13614m.length - 1) {
                sbC.append(", ");
            }
        }
        sbC.append("])");
        return sbC.toString();
    }
}
