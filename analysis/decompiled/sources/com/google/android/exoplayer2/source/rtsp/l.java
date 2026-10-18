package com.google.android.exoplayer2.source.rtsp;

import java.io.IOException;

/* JADX INFO: compiled from: UdpDataSourceRtpDataChannelFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements a.InterfaceC0082a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f4772a;

    public l(long j10) {
        this.f4772a = j10;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a
    public final a a(int i10) throws IOException {
        k kVar = new k(this.f4772a);
        k kVar2 = new k(this.f4772a);
        try {
            kVar.f4770a.l(p4.h.r(0));
            int iF = kVar.f();
            boolean z10 = iF % 2 == 0;
            kVar2.f4770a.l(p4.h.r(z10 ? iF + 1 : iF - 1));
            if (z10) {
                kVar.f4771b = kVar2;
                return kVar;
            }
            kVar2.f4771b = kVar;
            return kVar2;
        } catch (IOException e10) {
            c3.d.i(kVar);
            c3.d.i(kVar2);
            throw e10;
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a.InterfaceC0082a
    public final a.InterfaceC0082a b() {
        return new j(this.f4772a);
    }
}
