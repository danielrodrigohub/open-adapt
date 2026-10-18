package androidx.lifecycle;

import android.widget.LinearLayout;
import androidx.appcompat.widget.g1;
import com.nike.adapt.adk.InMemoryCache;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f2168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f2169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f2170j;

    public /* synthetic */ c(Object obj, Object obj2, int i10) {
        this.f2168h = i10;
        this.f2169i = obj;
        this.f2170j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2168h) {
            case 0:
                d dVar = (d) this.f2169i;
                Runnable runnable = (Runnable) this.f2170j;
                p4.h.j(dVar, "this$0");
                p4.h.j(runnable, "$runnable");
                dVar.d(runnable);
                return;
            case 1:
                p3.p.a aVar = (p3.p.a) this.f2169i;
                q3.e eVar = (q3.e) this.f2170j;
                Objects.requireNonNull(aVar);
                synchronized (eVar) {
                }
                p3.p pVar = aVar.f12790b;
                int i10 = m5.g0.f10384a;
                pVar.x(eVar);
                return;
            case 2:
                p4.i0 i0Var = (p4.i0) this.f2169i;
                s3.u uVar = (s3.u) this.f2170j;
                i0Var.F = i0Var.f13034y == null ? uVar : new s3.u.b(-9223372036854775807L);
                i0Var.G = uVar.i();
                boolean z10 = !i0Var.M && uVar.i() == -9223372036854775807L;
                i0Var.H = z10;
                i0Var.I = z10 ? 7 : 1;
                ((p4.j0) i0Var.f13023n).z(i0Var.G, uVar.f(), i0Var.H);
                if (i0Var.C) {
                    return;
                }
                i0Var.z();
                return;
            case 3:
                ((m5.u.b) this.f2170j).a(((m5.u) this.f2169i).c());
                return;
            case 4:
                n5.s.a aVar2 = (n5.s.a) this.f2169i;
                q3.e eVar2 = (q3.e) this.f2170j;
                Objects.requireNonNull(aVar2);
                synchronized (eVar2) {
                }
                n5.s sVar = aVar2.f11984b;
                int i11 = m5.g0.f10384a;
                sVar.c(eVar2);
                return;
            default:
                i9.g gVar = (i9.g) this.f2169i;
                fd.d dVar2 = (fd.d) this.f2170j;
                i9.g.a aVar3 = i9.g.K0;
                p4.h.j(gVar, "this$0");
                p4.h.j(dVar2, "$rightIndicators$delegate");
                x8.o0 o0Var = gVar.f8898q0;
                if (o0Var == null) {
                    p4.h.C("rightShoeScaleControllerUiHelper");
                    throw null;
                }
                o0Var.d(InMemoryCache.INSTANCE.getRightDevice().getMaxTightness());
                ((LinearLayout) dVar2.getValue()).setGravity(8388613);
                q7.o0 o0Var2 = gVar.f8890i0;
                if (o0Var2 != null) {
                    o0Var2.f13953g.f13928b.f13919b.post(new g1(gVar, 4));
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
        }
    }
}
