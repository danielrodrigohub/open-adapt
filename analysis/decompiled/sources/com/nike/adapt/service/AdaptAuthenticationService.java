package com.nike.adapt.service;

import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import androidx.lifecycle.o;
import androidx.lifecycle.t;
import com.nike.adapt.BigfootApplication;
import de.n0;
import fd.d;
import h8.e;
import java.util.Objects;
import o7.x;
import p4.h;
import v9.i0;

/* JADX INFO: compiled from: AdaptAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptAuthenticationService extends t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public i0 f5683j;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f5682i = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final d f5684k = o.w(3, b.f5687h);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a f5685l = new a();

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public final class a extends Binder {
        public a() {
        }
    }

    /* JADX INFO: compiled from: AdaptAuthenticationService.kt */
    public static final class b extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5687h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return e.f8306b;
        }
    }

    public static final void b(AdaptAuthenticationService adaptAuthenticationService) {
        if (adaptAuthenticationService.f5682i == 4) {
            x.f12420a.a("Pairing - Both Shoes Paired");
        } else {
            x.f12420a.a("Pairing - First Shoe Paired");
        }
    }

    public static final void c(AdaptAuthenticationService adaptAuthenticationService, i8.b bVar) {
        Objects.requireNonNull(adaptAuthenticationService);
        n0.b(bVar);
        s7.b.f15149a.a(bVar);
    }

    public final void d(boolean z10) {
        x.f12420a.a("STOP PAIRING");
        i0 i0Var = this.f5683j;
        if (i0Var != null) {
            i0Var.g(z10);
        } else {
            h.C("pairing");
            throw null;
        }
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final IBinder onBind(Intent intent) {
        h.j(intent, "intent");
        super.onBind(intent);
        return this.f5685l;
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final void onDestroy() {
        stopSelf();
        super.onDestroy();
    }

    @Override // androidx.lifecycle.t, android.app.Service
    public final int onStartCommand(Intent intent, int i10, int i11) {
        if (!h.c(intent != null ? intent.getPackage() : null, BigfootApplication.f5638p.a().getPackageName())) {
            stopSelf();
        }
        return super.onStartCommand(intent, i10, i11);
    }
}
