package com.google.android.exoplayer2.source.rtsp;

/* JADX INFO: compiled from: TransferRtpDataChannelFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements a.InterfaceC0082a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4769a;

    public j(long j10) {
        this.f4769a = j10;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a
    public final a a(int i10) {
        i iVar = new i(this.f4769a);
        iVar.l(p4.h.r(i10 * 2));
        return iVar;
    }
}
