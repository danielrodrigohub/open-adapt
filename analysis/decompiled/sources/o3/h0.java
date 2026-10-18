package o3;

import java.util.Arrays;
import java.util.List;
import n3.k1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h0 implements m5.o.a, j5.i.g.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f12121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f12122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f12123d;

    public /* synthetic */ h0(Object obj, Object obj2, int i10) {
        this.f12121b = i10;
        this.f12122c = obj;
        this.f12123d = obj2;
    }

    @Override // j5.i.g.a
    public final List a(int i10, p4.t0 t0Var, int[] iArr) {
        j5.i.c cVar = (j5.i.c) this.f12122c;
        String str = (String) this.f12123d;
        u6.o0<Integer> o0Var = j5.i.f9315i;
        u6.a aVar = u6.v.f16002i;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i11 = 0;
        int i12 = 0;
        while (i11 < t0Var.f13221h) {
            j5.i.f fVar = new j5.i.f(i10, t0Var, i11, cVar, iArr[i11], str);
            int i13 = i12 + 1;
            if (objArrCopyOf.length < i13) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i13));
            }
            objArrCopyOf[i12] = fVar;
            i11++;
            i12 = i13;
        }
        return u6.v.q(objArrCopyOf, i12);
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f12121b) {
            case 0:
                ((b) obj).i((k1) this.f12123d);
                break;
            default:
                b bVar = (b) obj;
                bVar.H();
                bVar.P();
                break;
        }
    }
}
