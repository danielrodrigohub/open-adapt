package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramSocket;
import l5.j0;
import l5.k0;
import l5.m;
import m5.g0;

/* JADX INFO: compiled from: UdpDataSourceRtpDataChannel.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k0 f4770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public k f4771b;

    public k(long j10) {
        this.f4770a = new k0(w6.a.a(j10));
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        try {
            return this.f4770a.b(bArr, i10, i11);
        } catch (k0.a e10) {
            if (e10.f10056h == 2002) {
                return -1;
            }
            throw e10;
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final String c() {
        int iF = f();
        m5.a.e(iF != -1);
        return g0.m("RTP/AVP;unicast;client_port=%d-%d", Integer.valueOf(iF), Integer.valueOf(iF + 1));
    }

    @Override // l5.j
    public final void close() {
        this.f4770a.close();
        k kVar = this.f4771b;
        if (kVar != null) {
            kVar.close();
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final int f() {
        DatagramSocket datagramSocket = this.f4770a.f10061i;
        int localPort = datagramSocket == null ? -1 : datagramSocket.getLocalPort();
        if (localPort == -1) {
            return -1;
        }
        return localPort;
    }

    @Override // l5.j
    public final void j(j0 j0Var) {
        this.f4770a.j(j0Var);
    }

    @Override // l5.j
    public final long l(m mVar) throws IOException {
        this.f4770a.l(mVar);
        return -1L;
    }

    @Override // l5.j
    public final Uri o() {
        return this.f4770a.f10060h;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final g.a r() {
        return null;
    }
}
