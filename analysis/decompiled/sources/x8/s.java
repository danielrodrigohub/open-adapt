package x8;

import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptShoeColor;

/* JADX INFO: compiled from: EffectsHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f18000a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f18001b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public AdaptShoeColor f18002c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18003d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Long f18004e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f18005f;

    /* JADX INFO: compiled from: EffectsHelper.kt */
    public interface a {
        void d(boolean z10);
    }

    /* JADX INFO: compiled from: EffectsHelper.kt */
    public /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18006a;

        static {
            int[] iArr = new int[AdaptCurrentAnimation.AdaptRunningState.values().length];
            iArr[AdaptCurrentAnimation.AdaptRunningState.RUNNING.ordinal()] = 1;
            iArr[AdaptCurrentAnimation.AdaptRunningState.QUEUED.ordinal()] = 2;
            iArr[AdaptCurrentAnimation.AdaptRunningState.INTERRUPTED.ordinal()] = 3;
            f18006a = iArr;
        }
    }

    public s(a aVar) {
        p4.h.j(aVar, "handler");
        this.f18000a = aVar;
        this.f18001b = 1;
    }

    public final void a(AdaptShoeColor adaptShoeColor) {
        p4.h.j(adaptShoeColor, "color");
        if (!b() || p4.h.c(adaptShoeColor, this.f18002c)) {
            d(adaptShoeColor);
            return;
        }
        this.f18002c = adaptShoeColor;
        if (adaptShoeColor.isOff()) {
            this.f18001b = 2;
            g(0);
        }
        this.f18000a.d(b());
    }

    public final boolean b() {
        return this.f18001b == 3;
    }

    public final int c(int i10) {
        int iCurrentTimeMillis;
        if (this.f18003d == 0) {
            g(i10);
        }
        Long l10 = this.f18004e;
        if (l10 != null) {
            iCurrentTimeMillis = ((int) (System.currentTimeMillis() - l10.longValue())) / 1000;
        } else {
            iCurrentTimeMillis = 0;
        }
        return this.f18003d - iCurrentTimeMillis;
    }

    public final void d(AdaptShoeColor adaptShoeColor) {
        p4.h.j(adaptShoeColor, "color");
        if (p4.h.c(adaptShoeColor, this.f18002c)) {
            return;
        }
        this.f18002c = adaptShoeColor;
        this.f18001b = (!b() || adaptShoeColor.isOff()) ? 2 : 3;
    }

    public final void e(int i10) {
        androidx.appcompat.widget.o.d(i10, "effectsState");
        if (this.f18005f) {
            if (i10 == 2) {
                return;
            } else {
                this.f18005f = false;
            }
        }
        this.f18001b = i10;
    }

    public final void f(AdaptCurrentAnimation adaptCurrentAnimation) {
        p4.h.j(adaptCurrentAnimation, "animation");
        int i10 = b.f18006a[adaptCurrentAnimation.getRunningState().ordinal()];
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            g(adaptCurrentAnimation.getSecondsRemaining());
            e(3);
        } else {
            g(0);
            e(2);
        }
    }

    public final void g(int i10) {
        this.f18003d = i10;
        this.f18004e = i10 == 0 ? null : Long.valueOf(System.currentTimeMillis());
    }
}
