package b4;

import java.util.Arrays;
import java.util.List;
import m5.w;
import n3.i1;
import n3.s0;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import s3.z;
import u6.v;

/* JADX INFO: compiled from: OpusReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends h {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final byte[] f3263o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final byte[] f3264p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f3265n;

    public static boolean f(w wVar, byte[] bArr) {
        int i10 = wVar.f10477c;
        int i11 = wVar.f10476b;
        if (i10 - i11 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        wVar.d(bArr2, 0, bArr.length);
        wVar.D(i11);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // b4.h
    public final long c(w wVar) {
        int i10;
        byte[] bArr = wVar.f10475a;
        int i11 = bArr[0] & 255;
        int i12 = i11 & 3;
        int i13 = 2;
        if (i12 == 0) {
            i13 = 1;
        } else if (i12 != 1 && i12 != 2) {
            i13 = bArr[1] & 63;
        }
        int i14 = i11 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i10 = 2500 << i15;
        } else if (i14 >= 12) {
            i10 = 10000 << (i15 & 1);
        } else {
            i10 = i15 == 3 ? 60000 : 10000 << i15;
        }
        return a(((long) i13) * ((long) i10));
    }

    @Override // b4.h
    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public final boolean d(w wVar, long j10, h.a aVar) throws i1 {
        if (f(wVar, f3263o)) {
            byte[] bArrCopyOf = Arrays.copyOf(wVar.f10475a, wVar.f10477c);
            int i10 = bArrCopyOf[9] & 255;
            List<byte[]> listD = p4.h.d(bArrCopyOf);
            if (aVar.f3279a != null) {
                return true;
            }
            s0.a aVar2 = new s0.a();
            aVar2.f11705k = "audio/opus";
            aVar2.f11718x = i10;
            aVar2.f11719y = 48000;
            aVar2.f11707m = listD;
            aVar.f3279a = new s0(aVar2);
            return true;
        }
        if (!f(wVar, f3264p)) {
            m5.a.f(aVar.f3279a);
            return false;
        }
        m5.a.f(aVar.f3279a);
        if (this.f3265n) {
            return true;
        }
        this.f3265n = true;
        wVar.E(8);
        f4.a aVarB = z.b(v.t(z.c(wVar, false, false).f15099a));
        if (aVarB == null) {
            return true;
        }
        s0.a aVar3 = new s0.a(aVar.f3279a);
        aVar3.f11703i = aVarB.b(aVar.f3279a.f11685q);
        aVar.f3279a = new s0(aVar3);
        return true;
    }

    @Override // b4.h
    public final void e(boolean z10) {
        super.e(z10);
        if (z10) {
            this.f3265n = false;
        }
    }
}
