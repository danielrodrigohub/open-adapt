package p3;

import android.os.Handler;
import n3.s0;

/* JADX INFO: compiled from: AudioRendererEventListener.java */
/* JADX INFO: loaded from: classes.dex */
public interface p {

    /* JADX INFO: compiled from: AudioRendererEventListener.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Handler f12789a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final p f12790b;

        public a(Handler handler, p pVar) {
            this.f12789a = handler;
            this.f12790b = pVar;
        }

        public final void a(q3.e eVar) {
            synchronized (eVar) {
            }
            Handler handler = this.f12789a;
            if (handler != null) {
                handler.post(new androidx.lifecycle.c(this, eVar, 1));
            }
        }
    }

    default void A(int i10, long j10, long j11) {
    }

    @Deprecated
    default void a() {
    }

    default void h(s0 s0Var, q3.i iVar) {
    }

    default void l(boolean z10) {
    }

    default void m(Exception exc) {
    }

    default void p(long j10) {
    }

    default void s(Exception exc) {
    }

    default void v(String str) {
    }

    default void w(String str, long j10, long j11) {
    }

    default void x(q3.e eVar) {
    }

    default void y(q3.e eVar) {
    }
}
