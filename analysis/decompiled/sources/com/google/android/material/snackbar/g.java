package com.google.android.material.snackbar;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* JADX INFO: compiled from: SnackbarManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static g f5401e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f5402a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f5403b = new Handler(Looper.getMainLooper(), new a());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f5404c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f5405d;

    /* JADX INFO: compiled from: SnackbarManager.java */
    public class a implements Handler.Callback {
        public a() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            g gVar = g.this;
            c cVar = (c) message.obj;
            synchronized (gVar.f5402a) {
                if (gVar.f5404c == cVar || gVar.f5405d == cVar) {
                    gVar.a(cVar, 2);
                }
            }
            return true;
        }
    }

    /* JADX INFO: compiled from: SnackbarManager.java */
    public interface b {
        void a();

        void b(int i10);
    }

    /* JADX INFO: compiled from: SnackbarManager.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final WeakReference<b> f5407a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f5408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f5409c;

        public c(int i10, b bVar) {
            this.f5407a = new WeakReference<>(bVar);
            this.f5408b = i10;
        }
    }

    public static g b() {
        if (f5401e == null) {
            f5401e = new g();
        }
        return f5401e;
    }

    public final boolean a(c cVar, int i10) {
        b bVar = cVar.f5407a.get();
        if (bVar == null) {
            return false;
        }
        this.f5403b.removeCallbacksAndMessages(cVar);
        bVar.b(i10);
        return true;
    }

    public final boolean c(b bVar) {
        c cVar = this.f5404c;
        if (cVar != null) {
            Objects.requireNonNull(cVar);
            if (bVar != null && cVar.f5407a.get() == bVar) {
                return true;
            }
        }
        return false;
    }

    public final boolean d(b bVar) {
        c cVar = this.f5405d;
        if (cVar != null) {
            Objects.requireNonNull(cVar);
            if (bVar != null && cVar.f5407a.get() == bVar) {
                return true;
            }
        }
        return false;
    }

    public final void e(b bVar) {
        synchronized (this.f5402a) {
            if (c(bVar)) {
                c cVar = this.f5404c;
                if (!cVar.f5409c) {
                    cVar.f5409c = true;
                    this.f5403b.removeCallbacksAndMessages(cVar);
                }
            }
        }
    }

    public final void f(b bVar) {
        synchronized (this.f5402a) {
            if (c(bVar)) {
                c cVar = this.f5404c;
                if (cVar.f5409c) {
                    cVar.f5409c = false;
                    g(cVar);
                }
            }
        }
    }

    public final void g(c cVar) {
        int i10 = cVar.f5408b;
        if (i10 == -2) {
            return;
        }
        if (i10 <= 0) {
            i10 = i10 == -1 ? 1500 : 2750;
        }
        this.f5403b.removeCallbacksAndMessages(cVar);
        Handler handler = this.f5403b;
        handler.sendMessageDelayed(Message.obtain(handler, 0, cVar), i10);
    }

    public final void h() {
        c cVar = this.f5405d;
        if (cVar != null) {
            this.f5404c = cVar;
            this.f5405d = null;
            b bVar = cVar.f5407a.get();
            if (bVar != null) {
                bVar.a();
            } else {
                this.f5404c = null;
            }
        }
    }
}
