package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import java.util.Arrays;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import l5.m;
import m5.g0;

/* JADX INFO: compiled from: TransferRtpDataChannel.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends l5.f implements a, g.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedBlockingQueue<byte[]> f4765e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f4766f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f4767g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f4768h;

    public i(long j10) {
        super(true);
        this.f4766f = j10;
        this.f4765e = new LinkedBlockingQueue<>();
        this.f4767g = new byte[0];
        this.f4768h = -1;
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int iMin = Math.min(i11, this.f4767g.length);
        System.arraycopy(this.f4767g, 0, bArr, i10, iMin);
        int i12 = iMin + 0;
        byte[] bArr2 = this.f4767g;
        this.f4767g = Arrays.copyOfRange(bArr2, iMin, bArr2.length);
        if (i12 == i11) {
            return i12;
        }
        try {
            byte[] bArrPoll = this.f4765e.poll(this.f4766f, TimeUnit.MILLISECONDS);
            if (bArrPoll == null) {
                return -1;
            }
            int iMin2 = Math.min(i11 - i12, bArrPoll.length);
            System.arraycopy(bArrPoll, 0, bArr, i10 + i12, iMin2);
            if (iMin2 < bArrPoll.length) {
                this.f4767g = Arrays.copyOfRange(bArrPoll, iMin2, bArrPoll.length);
            }
            return i12 + iMin2;
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return -1;
        }
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final String c() {
        m5.a.e(this.f4768h != -1);
        return g0.m("RTP/AVP/TCP;unicast;interleaved=%d-%d", Integer.valueOf(this.f4768h), Integer.valueOf(this.f4768h + 1));
    }

    @Override // l5.j
    public final void close() {
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final int f() {
        return this.f4768h;
    }

    @Override // l5.j
    public final long l(m mVar) {
        this.f4768h = mVar.f10071a.getPort();
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.g.a
    public final void m(byte[] bArr) {
        this.f4765e.add(bArr);
    }

    @Override // l5.j
    public final Uri o() {
        return null;
    }

    @Override // com.google.android.exoplayer2.source.rtsp.a
    public final g.a r() {
        return this;
    }
}
