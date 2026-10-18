package com.google.android.exoplayer2.ui;

/* JADX INFO: compiled from: TimeBar.java */
/* JADX INFO: loaded from: classes.dex */
public interface f {

    /* JADX INFO: compiled from: TimeBar.java */
    public interface a {
        void E(long j10);

        void H(long j10, boolean z10);

        void J(long j10);
    }

    void a(long[] jArr, boolean[] zArr, int i10);

    void b(a aVar);

    long getPreferredUpdateDelay();

    void setBufferedPosition(long j10);

    void setDuration(long j10);

    void setEnabled(boolean z10);

    void setPosition(long j10);
}
