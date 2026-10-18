package b4;

import java.io.EOFException;
import java.io.IOException;
import m5.w;

/* JADX INFO: compiled from: OggPacket.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e f3251a = new e();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f3252b = new w(new byte[65025], 0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3253c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3254d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f3255e;

    public final int a(int i10) {
        int i11;
        int i12 = 0;
        this.f3254d = 0;
        do {
            int i13 = this.f3254d;
            int i14 = i10 + i13;
            e eVar = this.f3251a;
            if (i14 >= eVar.f3258c) {
                break;
            }
            int[] iArr = eVar.f3261f;
            this.f3254d = i13 + 1;
            i11 = iArr[i13 + i10];
            i12 += i11;
        } while (i11 == 255);
        return i12;
    }

    public final boolean b(s3.i iVar) throws IOException {
        boolean z10;
        int i10;
        boolean z11;
        m5.a.e(iVar != null);
        if (this.f3255e) {
            this.f3255e = false;
            this.f3252b.A(0);
        }
        while (!this.f3255e) {
            if (this.f3253c < 0) {
                if (!this.f3251a.c(iVar, -1L) || !this.f3251a.a(iVar, true)) {
                    return false;
                }
                e eVar = this.f3251a;
                int iA = eVar.f3259d;
                if ((eVar.f3256a & 1) == 1 && this.f3252b.f10477c == 0) {
                    iA += a(0);
                    i10 = this.f3254d + 0;
                } else {
                    i10 = 0;
                }
                try {
                    iVar.k(iA);
                    z11 = true;
                } catch (EOFException unused) {
                    z11 = false;
                }
                if (!z11) {
                    return false;
                }
                this.f3253c = i10;
            }
            int iA2 = a(this.f3253c);
            int i11 = this.f3253c + this.f3254d;
            if (iA2 > 0) {
                w wVar = this.f3252b;
                wVar.a(wVar.f10477c + iA2);
                w wVar2 = this.f3252b;
                try {
                    iVar.readFully(wVar2.f10475a, wVar2.f10477c, iA2);
                    z10 = true;
                } catch (EOFException unused2) {
                    z10 = false;
                }
                if (!z10) {
                    return false;
                }
                w wVar3 = this.f3252b;
                wVar3.C(wVar3.f10477c + iA2);
                this.f3255e = this.f3251a.f3261f[i11 + (-1)] != 255;
            }
            if (i11 == this.f3251a.f3258c) {
                i11 = -1;
            }
            this.f3253c = i11;
        }
        return true;
    }
}
