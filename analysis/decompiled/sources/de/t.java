package de;

import java.io.RandomAccessFile;

/* JADX INFO: compiled from: JvmFileHandle.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class t extends i {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final RandomAccessFile f6277j;

    public t(boolean z10, RandomAccessFile randomAccessFile) {
        this.f6277j = randomAccessFile;
    }

    @Override // de.i
    public final synchronized int Y(long j10, byte[] bArr, int i10, int i11) {
        p4.h.j(bArr, "array");
        this.f6277j.seek(j10);
        int i12 = 0;
        while (i12 < i11) {
            int i13 = this.f6277j.read(bArr, i10, i11 - i12);
            if (i13 == -1) {
                if (i12 != 0) {
                    break;
                }
                return -1;
            }
            i12 += i13;
        }
        return i12;
    }

    @Override // de.i
    public final synchronized long f0() {
        return this.f6277j.length();
    }

    @Override // de.i
    public final synchronized void x() {
        this.f6277j.close();
    }
}
