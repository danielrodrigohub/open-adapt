package n3;

import android.os.Bundle;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: Tracks.java */
/* JADX INFO: loaded from: classes.dex */
public final class c2 implements h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c2 f11337i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final u6.v<a> f11338h;

    /* JADX INFO: compiled from: Tracks.java */
    public static final class a implements h {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final h.a<a> f11339m = y0.l.f18243f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int f11340h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final p4.t0 f11341i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final boolean f11342j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final int[] f11343k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final boolean[] f11344l;

        public a(p4.t0 t0Var, boolean z10, int[] iArr, boolean[] zArr) {
            int i10 = t0Var.f13221h;
            this.f11340h = i10;
            boolean z11 = false;
            m5.a.a(i10 == iArr.length && i10 == zArr.length);
            this.f11341i = t0Var;
            if (z10 && i10 > 1) {
                z11 = true;
            }
            this.f11342j = z11;
            this.f11343k = (int[]) iArr.clone();
            this.f11344l = (boolean[]) zArr.clone();
        }

        public static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        @Override // n3.h
        public final Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putBundle(b(0), this.f11341i.a());
            bundle.putIntArray(b(1), this.f11343k);
            bundle.putBooleanArray(b(3), this.f11344l);
            bundle.putBoolean(b(4), this.f11342j);
            return bundle;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f11342j == aVar.f11342j && this.f11341i.equals(aVar.f11341i) && Arrays.equals(this.f11343k, aVar.f11343k) && Arrays.equals(this.f11344l, aVar.f11344l);
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f11344l) + ((Arrays.hashCode(this.f11343k) + (((this.f11341i.hashCode() * 31) + (this.f11342j ? 1 : 0)) * 31)) * 31);
        }
    }

    static {
        u6.a aVar = u6.v.f16002i;
        f11337i = new c2(u6.p0.f15967l);
    }

    public c2(List<a> list) {
        this.f11338h = u6.v.s(list);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(Integer.toString(0, 36), m5.b.b(this.f11338h));
        return bundle;
    }

    public final boolean b(int i10) {
        boolean z10;
        for (int i11 = 0; i11 < this.f11338h.size(); i11++) {
            a aVar = this.f11338h.get(i11);
            boolean[] zArr = aVar.f11344l;
            int length = zArr.length;
            int i12 = 0;
            while (true) {
                if (i12 >= length) {
                    z10 = false;
                    break;
                }
                if (zArr[i12]) {
                    z10 = true;
                    break;
                }
                i12++;
            }
            if (z10 && aVar.f11341i.f13223j == i10) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c2.class != obj.getClass()) {
            return false;
        }
        return this.f11338h.equals(((c2) obj).f11338h);
    }

    public final int hashCode() {
        return this.f11338h.hashCode();
    }
}
