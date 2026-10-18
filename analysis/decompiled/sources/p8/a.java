package p8;

import com.nike.adapt.adk.AdaptConnectionStatusResult;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptPairActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends q {
    public final List<u8.g> E = new ArrayList();
    public final t9.a F = new t9.a();
    public final t9.b G = new t9.b();
    public final qd.l<String[], fd.o> H = new C0233a();

    /* JADX INFO: renamed from: p8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptPairActivity.kt */
    public static final class C0233a extends rd.o implements qd.l<String[], fd.o> {
        public C0233a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(String[] strArr) {
            p4.h.j(strArr, "it");
            if (a.this.f662k.f2231c.b(androidx.lifecycle.i.c.STARTED)) {
                h9.c.f8316c.e(a.this);
            }
            return fd.o.f7408a;
        }
    }

    public List<u8.g> o0() {
        return this.E;
    }

    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        m6.e.c(o0(), adaptConnectionStatusResult);
    }

    @Override // p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public void onStart() {
        super.onStart();
        m6.e.d(o0());
    }

    @Override // p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public void onStop() {
        List<u8.g> listO0 = o0();
        p4.h.j(listO0, "errorDisplays");
        Iterator<T> it = listO0.iterator();
        while (it.hasNext()) {
            ((u8.g) it.next()).a();
        }
        super.onStop();
    }
}
