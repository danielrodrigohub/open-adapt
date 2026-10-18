package n5;

import android.os.Bundle;
import java.util.Arrays;
import org.checkerframework.dataflow.qual.Pure;

/* JADX INFO: compiled from: ColorInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements n3.h {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final n3.h.a<b> f11863m = y0.m.f18254i;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f11864h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11865i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f11866j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final byte[] f11867k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f11868l;

    public b(int i10, int i11, int i12, byte[] bArr) {
        this.f11864h = i10;
        this.f11865i = i11;
        this.f11866j = i12;
        this.f11867k = bArr;
    }

    @Pure
    public static int b(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    @Pure
    public static int c(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    public static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.f11864h);
        bundle.putInt(d(1), this.f11865i);
        bundle.putInt(d(2), this.f11866j);
        bundle.putByteArray(d(3), this.f11867k);
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.f11864h == bVar.f11864h && this.f11865i == bVar.f11865i && this.f11866j == bVar.f11866j && Arrays.equals(this.f11867k, bVar.f11867k);
    }

    public final int hashCode() {
        if (this.f11868l == 0) {
            this.f11868l = Arrays.hashCode(this.f11867k) + ((((((527 + this.f11864h) * 31) + this.f11865i) * 31) + this.f11866j) * 31);
        }
        return this.f11868l;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("ColorInfo(");
        sbC.append(this.f11864h);
        sbC.append(", ");
        sbC.append(this.f11865i);
        sbC.append(", ");
        sbC.append(this.f11866j);
        sbC.append(", ");
        sbC.append(this.f11867k != null);
        sbC.append(")");
        return sbC.toString();
    }
}
