package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.View;
import e3.m;
import e3.n;
import e3.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import l3.l;

/* JADX INFO: compiled from: RequestManager.java */
/* JADX INFO: loaded from: classes.dex */
public class j implements ComponentCallbacks2, e3.i {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final h3.g f4477r = new h3.g().d(Bitmap.class).m();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.bumptech.glide.c f4478h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f4479i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final e3.h f4480j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final n f4481k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final m f4482l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final r f4483m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final a f4484n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final e3.b f4485o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final CopyOnWriteArrayList<h3.f<Object>> f4486p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public h3.g f4487q;

    /* JADX INFO: compiled from: RequestManager.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            j jVar = j.this;
            jVar.f4480j.b(jVar);
        }
    }

    /* JADX INFO: compiled from: RequestManager.java */
    public static class b extends i3.d<View, Object> {
        public b(View view) {
            super(view);
        }

        @Override // i3.i
        public final void a(Drawable drawable) {
        }

        @Override // i3.i
        public final void j(Object obj) {
        }
    }

    /* JADX INFO: compiled from: RequestManager.java */
    public class c implements e3.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final n f4489a;

        public c(n nVar) {
            this.f4489a = nVar;
        }

        @Override // e3.b.a
        public final void a(boolean z10) {
            if (z10) {
                synchronized (j.this) {
                    this.f4489a.b();
                }
            }
        }
    }

    static {
        new h3.g().d(c3.c.class).m();
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    public j(com.bumptech.glide.c cVar, e3.h hVar, m mVar, Context context) {
        h3.g gVar;
        n nVar = new n();
        e3.c cVar2 = cVar.f4426n;
        this.f4483m = new r();
        a aVar = new a();
        this.f4484n = aVar;
        this.f4478h = cVar;
        this.f4480j = hVar;
        this.f4482l = mVar;
        this.f4481k = nVar;
        this.f4479i = context;
        Context applicationContext = context.getApplicationContext();
        c cVar3 = new c(nVar);
        Objects.requireNonNull((e3.e) cVar2);
        boolean z10 = y.a.a(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z10 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        e3.b dVar = z10 ? new e3.d(applicationContext, cVar3) : new e3.j();
        this.f4485o = dVar;
        if (l.h()) {
            l.k(aVar);
        } else {
            hVar.b(this);
        }
        hVar.b(dVar);
        this.f4486p = new CopyOnWriteArrayList<>(cVar.f4422j.f4449e);
        e eVar = cVar.f4422j;
        synchronized (eVar) {
            if (eVar.f4454j == null) {
                Objects.requireNonNull((d.a) eVar.f4448d);
                h3.g gVar2 = new h3.g();
                gVar2.A = true;
                eVar.f4454j = gVar2;
            }
            gVar = eVar.f4454j;
        }
        s(gVar);
        synchronized (cVar.f4427o) {
            if (cVar.f4427o.contains(this)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            cVar.f4427o.add(this);
        }
    }

    @Override // e3.i
    public final synchronized void g() {
        r();
        this.f4483m.g();
    }

    @Override // e3.i
    public final synchronized void h() {
        q();
        this.f4483m.h();
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.HashSet, java.util.Set<h3.d>] */
    @Override // e3.i
    public final synchronized void k() {
        this.f4483m.k();
        Iterator it = ((ArrayList) l.e(this.f4483m.f6357h)).iterator();
        while (it.hasNext()) {
            o((i3.i) it.next());
        }
        this.f4483m.f6357h.clear();
        n nVar = this.f4481k;
        Iterator it2 = ((ArrayList) l.e(nVar.f6335a)).iterator();
        while (it2.hasNext()) {
            nVar.a((h3.d) it2.next());
        }
        nVar.f6336b.clear();
        this.f4480j.c(this);
        this.f4480j.c(this.f4485o);
        l.f().removeCallbacks(this.f4484n);
        this.f4478h.d(this);
    }

    public <ResourceType> i<ResourceType> l(Class<ResourceType> cls) {
        return new i<>(this.f4478h, this, cls, this.f4479i);
    }

    public i<Bitmap> m() {
        return l(Bitmap.class).a(f4477r);
    }

    public i<Drawable> n() {
        return l(Drawable.class);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<com.bumptech.glide.j>] */
    public final void o(i3.i<?> iVar) {
        boolean z10;
        if (iVar == null) {
            return;
        }
        boolean zT = t(iVar);
        h3.d dVarE = iVar.e();
        if (zT) {
            return;
        }
        com.bumptech.glide.c cVar = this.f4478h;
        synchronized (cVar.f4427o) {
            Iterator it = cVar.f4427o.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else if (((j) it.next()).t(iVar)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10 || dVarE == null) {
            return;
        }
        iVar.i(null);
        dVarE.clear();
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
    }

    public i<Drawable> p(Integer num) {
        return n().J(num);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.HashSet, java.util.Set<h3.d>] */
    public final synchronized void q() {
        n nVar = this.f4481k;
        nVar.f6337c = true;
        for (h3.d dVar : (ArrayList) l.e(nVar.f6335a)) {
            if (dVar.isRunning()) {
                dVar.c();
                nVar.f6336b.add(dVar);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashSet, java.util.Set<h3.d>] */
    public final synchronized void r() {
        n nVar = this.f4481k;
        nVar.f6337c = false;
        for (h3.d dVar : (ArrayList) l.e(nVar.f6335a)) {
            if (!dVar.i() && !dVar.isRunning()) {
                dVar.f();
            }
        }
        nVar.f6336b.clear();
    }

    public synchronized void s(h3.g gVar) {
        this.f4487q = gVar.clone().b();
    }

    public final synchronized boolean t(i3.i<?> iVar) {
        h3.d dVarE = iVar.e();
        if (dVarE == null) {
            return true;
        }
        if (!this.f4481k.a(dVarE)) {
            return false;
        }
        this.f4483m.f6357h.remove(iVar);
        iVar.i(null);
        return true;
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f4481k + ", treeNode=" + this.f4482l + "}";
    }
}
