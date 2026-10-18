package c3;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import p2.l;

/* JADX INFO: compiled from: GifFrameLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final n2.a f3847a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f3848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<b> f3849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.bumptech.glide.j f3850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final s2.d f3851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f3852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f3853g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.i<Bitmap> f3854h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public a f3855i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3856j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public a f3857k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Bitmap f3858l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public l<Bitmap> f3859m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f3860n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f3861o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3862p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f3863q;

    /* JADX INFO: compiled from: GifFrameLoader.java */
    public static class a extends i3.c<Bitmap> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Handler f3864k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final int f3865l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public final long f3866m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public Bitmap f3867n;

        public a(Handler handler, int i10, long j10) {
            super(Integer.MIN_VALUE, Integer.MIN_VALUE);
            this.f3864k = handler;
            this.f3865l = i10;
            this.f3866m = j10;
        }

        @Override // i3.i
        public final void f(Drawable drawable) {
            this.f3867n = null;
        }

        @Override // i3.i
        public final void j(Object obj) {
            this.f3867n = (Bitmap) obj;
            this.f3864k.sendMessageAtTime(this.f3864k.obtainMessage(1, this), this.f3866m);
        }
    }

    /* JADX INFO: compiled from: GifFrameLoader.java */
    public interface b {
        void a();
    }

    /* JADX INFO: compiled from: GifFrameLoader.java */
    public class c implements Handler.Callback {
        public c() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 1) {
                g.this.b((a) message.obj);
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            g.this.f3850d.o((a) message.obj);
            return false;
        }
    }

    public g(com.bumptech.glide.c cVar, n2.a aVar, int i10, int i11, l<Bitmap> lVar, Bitmap bitmap) {
        s2.d dVar = cVar.f4420h;
        com.bumptech.glide.j jVarE = com.bumptech.glide.c.e(cVar.f4422j.getBaseContext());
        com.bumptech.glide.i<Bitmap> iVarD = com.bumptech.glide.c.e(cVar.f4422j.getBaseContext()).m().a(((h3.g) ((h3.g) new h3.g().e(r2.l.f14302a).B()).w()).r(i10, i11));
        this.f3849c = new ArrayList();
        this.f3850d = jVarE;
        Handler handler = new Handler(Looper.getMainLooper(), new c());
        this.f3851e = dVar;
        this.f3848b = handler;
        this.f3854h = iVarD;
        this.f3847a = aVar;
        c(lVar, bitmap);
    }

    public final void a() {
        if (!this.f3852f || this.f3853g) {
            return;
        }
        a aVar = this.f3860n;
        if (aVar != null) {
            this.f3860n = null;
            b(aVar);
            return;
        }
        this.f3853g = true;
        long jUptimeMillis = SystemClock.uptimeMillis() + ((long) this.f3847a.e());
        this.f3847a.c();
        this.f3857k = new a(this.f3848b, this.f3847a.a(), jUptimeMillis);
        com.bumptech.glide.i<Bitmap> iVarK = this.f3854h.a(new h3.g().v(new k3.d(Double.valueOf(Math.random())))).K(this.f3847a);
        iVarK.H(this.f3857k, iVarK);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<c3.g$b>] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.ArrayList, java.util.List<c3.g$b>] */
    public final void b(a aVar) {
        this.f3853g = false;
        if (this.f3856j) {
            this.f3848b.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (!this.f3852f) {
            this.f3860n = aVar;
            return;
        }
        if (aVar.f3867n != null) {
            Bitmap bitmap = this.f3858l;
            if (bitmap != null) {
                this.f3851e.e(bitmap);
                this.f3858l = null;
            }
            a aVar2 = this.f3855i;
            this.f3855i = aVar;
            int size = this.f3849c.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                } else {
                    ((b) this.f3849c.get(size)).a();
                }
            }
            if (aVar2 != null) {
                this.f3848b.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        a();
    }

    public final void c(l<Bitmap> lVar, Bitmap bitmap) {
        Objects.requireNonNull(lVar, "Argument must not be null");
        this.f3859m = lVar;
        Objects.requireNonNull(bitmap, "Argument must not be null");
        this.f3858l = bitmap;
        this.f3854h = this.f3854h.a(new h3.g().z(lVar, true));
        this.f3861o = l3.l.c(bitmap);
        this.f3862p = bitmap.getWidth();
        this.f3863q = bitmap.getHeight();
    }
}
