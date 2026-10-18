package r2;

import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: SourceGenerator.java */
/* JADX INFO: loaded from: classes.dex */
public final class b0 implements h, h.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i<?> f14224h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h.a f14225i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile int f14226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile e f14227k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public volatile Object f14228l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile v2.n.a<?> f14229m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile f f14230n;

    public b0(i<?> iVar, h.a aVar) {
        this.f14224h = iVar;
        this.f14225i = aVar;
    }

    @Override // r2.h
    public final boolean a() {
        if (this.f14228l != null) {
            Object obj = this.f14228l;
            this.f14228l = null;
            try {
                if (!c(obj)) {
                    return true;
                }
            } catch (IOException e10) {
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Failed to properly rewind or write data to cache", e10);
                }
            }
        }
        if (this.f14227k != null && this.f14227k.a()) {
            return true;
        }
        this.f14227k = null;
        this.f14229m = null;
        boolean z10 = false;
        while (!z10) {
            if (!(this.f14226j < ((ArrayList) this.f14224h.c()).size())) {
                break;
            }
            List<v2.n.a<?>> listC = this.f14224h.c();
            int i10 = this.f14226j;
            this.f14226j = i10 + 1;
            this.f14229m = (v2.n.a) ((ArrayList) listC).get(i10);
            if (this.f14229m != null && (this.f14224h.f14267p.c(this.f14229m.f16176c.e()) || this.f14224h.h(this.f14229m.f16176c.a()))) {
                this.f14229m.f16176c.f(this.f14224h.f14266o, new a0(this, this.f14229m));
                z10 = true;
            }
        }
        return z10;
    }

    @Override // r2.h.a
    public final void b() {
        throw new UnsupportedOperationException();
    }

    public final boolean c(Object obj) throws Throwable {
        int i10 = l3.h.f9935b;
        long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z10 = true;
        try {
            com.bumptech.glide.load.data.e eVarG = this.f14224h.f14254c.f4446b.g(obj);
            Object objA = eVarG.a();
            p2.d<X> dVarF = this.f14224h.f(objA);
            g gVar = new g(dVarF, objA, this.f14224h.f14260i);
            p2.f fVar = this.f14229m.f16174a;
            i<?> iVar = this.f14224h;
            f fVar2 = new f(fVar, iVar.f14265n);
            t2.a aVarB = iVar.b();
            aVarB.b(fVar2, gVar);
            if (Log.isLoggable("SourceGenerator", 2)) {
                Log.v("SourceGenerator", "Finished encoding source to cache, key: " + fVar2 + ", data: " + obj + ", encoder: " + dVarF + ", duration: " + l3.h.a(jElapsedRealtimeNanos));
            }
            if (aVarB.a(fVar2) != null) {
                this.f14230n = fVar2;
                this.f14227k = new e(Collections.singletonList(this.f14229m.f16174a), this.f14224h, this);
                this.f14229m.f16176c.b();
                return true;
            }
            if (Log.isLoggable("SourceGenerator", 3)) {
                Log.d("SourceGenerator", "Attempt to write: " + this.f14230n + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
            }
            try {
                this.f14225i.i(this.f14229m.f16174a, eVarG.a(), this.f14229m.f16176c, this.f14229m.f16176c.e(), this.f14229m.f16174a);
                return false;
            } catch (Throwable th) {
                th = th;
                if (!z10) {
                    this.f14229m.f16176c.b();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
            z10 = false;
        }
    }

    @Override // r2.h
    public final void cancel() {
        v2.n.a<?> aVar = this.f14229m;
        if (aVar != null) {
            aVar.f16176c.cancel();
        }
    }

    @Override // r2.h.a
    public final void g(p2.f fVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, p2.a aVar) {
        this.f14225i.g(fVar, exc, dVar, this.f14229m.f16176c.e());
    }

    @Override // r2.h.a
    public final void i(p2.f fVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, p2.a aVar, p2.f fVar2) {
        this.f14225i.i(fVar, obj, dVar, this.f14229m.f16176c.e(), fVar);
    }
}
