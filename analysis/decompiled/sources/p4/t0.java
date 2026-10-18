package p4;

import android.os.Bundle;
import java.util.Arrays;
import okhttp3.internal.http2.Http2;

/* JADX INFO: compiled from: TrackGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class t0 implements n3.h {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final n3.h.a<t0> f13220m = y0.h.f18225h;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f13221h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f13222i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f13223j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final n3.s0[] f13224k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13225l;

    public t0(String str, n3.s0... s0VarArr) {
        int i10 = 1;
        m5.a.a(s0VarArr.length > 0);
        this.f13222i = str;
        this.f13224k = s0VarArr;
        this.f13221h = s0VarArr.length;
        int i11 = m5.s.i(s0VarArr[0].f11687s);
        this.f13223j = i11 == -1 ? m5.s.i(s0VarArr[0].f11686r) : i11;
        String str2 = s0VarArr[0].f11678j;
        str2 = (str2 == null || str2.equals("und")) ? "" : str2;
        int i12 = s0VarArr[0].f11680l | Http2.INITIAL_MAX_FRAME_SIZE;
        while (true) {
            n3.s0[] s0VarArr2 = this.f13224k;
            if (i10 >= s0VarArr2.length) {
                return;
            }
            String str3 = s0VarArr2[i10].f11678j;
            if (!str2.equals((str3 == null || str3.equals("und")) ? "" : str3)) {
                n3.s0[] s0VarArr3 = this.f13224k;
                d("languages", s0VarArr3[0].f11678j, s0VarArr3[i10].f11678j, i10);
                return;
            } else {
                n3.s0[] s0VarArr4 = this.f13224k;
                if (i12 != (s0VarArr4[i10].f11680l | Http2.INITIAL_MAX_FRAME_SIZE)) {
                    d("role flags", Integer.toBinaryString(s0VarArr4[0].f11680l), Integer.toBinaryString(this.f13224k[i10].f11680l), i10);
                    return;
                }
                i10++;
            }
        }
    }

    public static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static void d(String str, String str2, String str3, int i10) {
        StringBuilder sbA = k1.a.a("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        sbA.append(str3);
        sbA.append("' (track ");
        sbA.append(i10);
        sbA.append(")");
        m5.p.d("TrackGroup", "", new IllegalStateException(sbA.toString()));
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList(c(0), m5.b.b(u6.f0.b(this.f13224k)));
        bundle.putString(c(1), this.f13222i);
        return bundle;
    }

    public final int b(n3.s0 s0Var) {
        int i10 = 0;
        while (true) {
            n3.s0[] s0VarArr = this.f13224k;
            if (i10 >= s0VarArr.length) {
                return -1;
            }
            if (s0Var == s0VarArr[i10]) {
                return i10;
            }
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t0.class != obj.getClass()) {
            return false;
        }
        t0 t0Var = (t0) obj;
        return this.f13222i.equals(t0Var.f13222i) && Arrays.equals(this.f13224k, t0Var.f13224k);
    }

    public final int hashCode() {
        if (this.f13225l == 0) {
            this.f13225l = a1.f.c(this.f13222i, 527, 31) + Arrays.hashCode(this.f13224k);
        }
        return this.f13225l;
    }
}
