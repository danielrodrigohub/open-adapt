package o3;

import android.graphics.Point;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class i0 implements m5.o.a, j5.i.g.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12128b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12129c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12130d;

    public /* synthetic */ i0(Object obj, Object obj2, int i10) {
        this.f12128b = i10;
        this.f12129c = obj;
        this.f12130d = obj2;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    @Override // j5.i.g.a
    public final List a(int i10, p4.t0 t0Var, int[] iArr) {
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        Point point;
        j5.i.c cVar = (j5.i.c) this.f12129c;
        int[] iArr2 = (int[]) this.f12130d;
        u6.o0<Integer> o0Var = j5.i.f9315i;
        int i16 = iArr2[i10];
        int i17 = cVar.f9398p;
        int i18 = cVar.f9399q;
        boolean z10 = cVar.f9400r;
        if (i17 == Integer.MAX_VALUE || i18 == Integer.MAX_VALUE) {
            i11 = Integer.MAX_VALUE;
        } else {
            int i19 = Integer.MAX_VALUE;
            for (int i20 = 0; i20 < t0Var.f13221h; i20++) {
                n3.s0 s0Var = t0Var.f13224k[i20];
                int i21 = s0Var.f11692x;
                if (i21 > 0 && (i13 = s0Var.f11693y) > 0) {
                    if (!z10) {
                        i14 = i17;
                        i15 = i18;
                    } else if ((i21 > i13) != (i17 > i18)) {
                        i15 = i17;
                        i14 = i18;
                    } else {
                        i14 = i17;
                        i15 = i18;
                    }
                    int i22 = i21 * i15;
                    int i23 = i13 * i14;
                    if (i22 >= i23) {
                        int i24 = m5.g0.f10384a;
                        point = new Point(i14, ((i23 + i21) - 1) / i21);
                    } else {
                        int i25 = m5.g0.f10384a;
                        point = new Point(((i22 + i13) - 1) / i13, i15);
                    }
                    int i26 = s0Var.f11692x;
                    int i27 = s0Var.f11693y;
                    int i28 = i26 * i27;
                    if (i26 >= ((int) (point.x * 0.98f)) && i27 >= ((int) (point.y * 0.98f)) && i28 < i19) {
                        i19 = i28;
                    }
                }
            }
            i11 = i19;
        }
        u6.a aVar = u6.v.f16002i;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i29 = 0;
        int i30 = 0;
        while (i29 < t0Var.f13221h) {
            n3.s0 s0Var2 = t0Var.f13224k[i29];
            int i31 = s0Var2.f11692x;
            int i32 = (i31 == -1 || (i12 = s0Var2.f11693y) == -1) ? -1 : i31 * i12;
            j5.i.h hVar = new j5.i.h(i10, t0Var, i29, cVar, iArr[i29], i16, i11 == Integer.MAX_VALUE || (i32 != -1 && i32 <= i11));
            int i33 = i30 + 1;
            if (objArrCopyOf.length < i33) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i33));
            }
            objArrCopyOf[i30] = hVar;
            i29++;
            i30 = i33;
        }
        return u6.v.q(objArrCopyOf, i30);
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12128b) {
            case 0:
                ((b) obj).p0();
                break;
            case 1:
                b bVar = (b) obj;
                bVar.Q();
                bVar.O0();
                break;
            default:
                ((b) obj).N();
                break;
        }
    }
}
