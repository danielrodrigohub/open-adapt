package com.google.android.exoplayer2.source.rtsp;

import android.os.Handler;
import java.io.IOException;
import l5.d0;
import m5.g0;
import p4.y;
import s3.t;

/* JADX INFO: compiled from: RtpDataLoadable.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4661a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w4.g f4662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f4663c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s3.j f4664d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a f4666f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public w4.b f4667g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile boolean f4668h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile long f4670j;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f4665e = g0.l(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile long f4669i = -9223372036854775807L;

    /* JADX INFO: compiled from: RtpDataLoadable.java */
    public interface a {
    }

    public b(int i10, w4.g gVar, a aVar, s3.j jVar, com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a interfaceC0082a) {
        this.f4661a = i10;
        this.f4662b = gVar;
        this.f4663c = aVar;
        this.f4664d = jVar;
        this.f4666f = interfaceC0082a;
    }

    @Override // l5.d0.d
    public final void a() throws IOException {
        com.google.android.exoplayer2.source.rtsp.a aVarA = null;
        try {
            aVarA = this.f4666f.a(this.f4661a);
            this.f4665e.post(new y(this, aVarA.c(), aVarA, 1));
            s3.e eVar = new s3.e(aVarA, 0L, -1L);
            w4.b bVar = new w4.b(this.f4662b.f17178a, this.f4661a);
            this.f4667g = bVar;
            bVar.g(this.f4664d);
            while (!this.f4668h) {
                if (this.f4669i != -9223372036854775807L) {
                    this.f4667g.b(this.f4670j, this.f4669i);
                    this.f4669i = -9223372036854775807L;
                }
                if (this.f4667g.e(eVar, new t()) == -1) {
                    break;
                }
            }
        } finally {
            c3.d.i(aVarA);
        }
    }

    @Override // l5.d0.d
    public final void b() {
        this.f4668h = true;
    }
}
