package p8;

import com.nike.adapt.adk.AdaptConnectionStatusResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptPairFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends r {

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final t9.a f13309e0 = new t9.a();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final List<u8.g> f13310f0 = new ArrayList();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final qd.l<String[], fd.o> f13311g0 = new a();

    /* JADX INFO: compiled from: AdaptPairFragment.kt */
    public static final class a extends rd.o implements qd.l<String[], fd.o> {
        public a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(String[] strArr) {
            p4.h.j(strArr, "it");
            androidx.fragment.app.p pVarI = b.this.i();
            if (b.this.U.f2231c.b(androidx.lifecycle.i.c.STARTED) && pVarI != null) {
                h9.c.f8316c.e(pVarI);
            }
            return fd.o.f7408a;
        }
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public void S() {
        super.S();
        m6.e.d(t0());
    }

    @Override // p8.h, androidx.fragment.app.m
    public void T() {
        List<u8.g> listT0 = t0();
        p4.h.j(listT0, "errorDisplays");
        Iterator<T> it = listT0.iterator();
        while (it.hasNext()) {
            ((u8.g) it.next()).a();
        }
        super.T();
    }

    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        m6.e.c(t0(), adaptConnectionStatusResult);
    }

    public List<u8.g> t0() {
        return this.f13310f0;
    }
}
