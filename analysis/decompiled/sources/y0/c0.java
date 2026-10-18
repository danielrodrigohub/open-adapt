package y0;

import android.view.Display;
import java.util.Objects;
import n3.k0;
import n3.l1;
import n3.o1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c0 implements m5.o.a, s3.a.d, com.google.android.exoplayer2.source.rtsp.b.a, n5.l.b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f18151c;

    public /* synthetic */ c0(Object obj, int i10) {
        this.f18150b = i10;
        this.f18151c = obj;
    }

    @Override // s3.a.d
    public final long a(long j10) {
        return ((s3.p) this.f18151c).f(j10);
    }

    public final void b(Display display) {
        n5.l lVar = (n5.l) this.f18151c;
        Objects.requireNonNull(lVar);
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            lVar.f11949k = refreshRate;
            lVar.f11950l = (refreshRate * 80) / 100;
        } else {
            m5.p.g("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            lVar.f11949k = -9223372036854775807L;
            lVar.f11950l = -9223372036854775807L;
        }
    }

    @Override // m5.o.a
    public final void invoke(Object obj) {
        switch (this.f18150b) {
            case 1:
                l1 l1Var = (l1) this.f18151c;
                int i10 = k0.f11461m0;
                ((o1.c) obj).i(l1Var.f11521f);
                break;
            default:
                ((o1.c) obj).C((f4.a) this.f18151c);
                break;
        }
    }
}
