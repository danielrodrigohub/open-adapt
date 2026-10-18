package com.google.android.exoplayer2.source.rtsp;

import java.io.IOException;

/* JADX INFO: compiled from: RtpDataChannel.java */
/* JADX INFO: loaded from: classes.dex */
public interface a extends l5.j {

    /* JADX INFO: renamed from: com.google.android.exoplayer2.source.rtsp.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RtpDataChannel.java */
    public interface InterfaceC0082a {
        a a(int i10) throws IOException;

        default InterfaceC0082a b() {
            return null;
        }
    }

    String c();

    int f();

    g.a r();
}
