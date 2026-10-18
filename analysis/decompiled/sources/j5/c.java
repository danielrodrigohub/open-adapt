package j5;

import android.os.SystemClock;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import m5.g0;
import n3.s0;
import p4.t0;

/* JADX INFO: compiled from: BaseTrackSelection.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final t0 f9293a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f9294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f9295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s0[] f9296d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f9297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f9298f;

    public c(t0 t0Var, int[] iArr) {
        int i10 = 0;
        m5.a.e(iArr.length > 0);
        Objects.requireNonNull(t0Var);
        this.f9293a = t0Var;
        int length = iArr.length;
        this.f9294b = length;
        this.f9296d = new s0[length];
        for (int i11 = 0; i11 < iArr.length; i11++) {
            this.f9296d[i11] = t0Var.f13224k[iArr[i11]];
        }
        Arrays.sort(this.f9296d, b.f9290i);
        this.f9295c = new int[this.f9294b];
        while (true) {
            int i12 = this.f9294b;
            if (i10 >= i12) {
                this.f9297e = new long[i12];
                return;
            } else {
                this.f9295c[i10] = t0Var.b(this.f9296d[i10]);
                i10++;
            }
        }
    }

    @Override // j5.o
    public final int a(s0 s0Var) {
        for (int i10 = 0; i10 < this.f9294b; i10++) {
            if (this.f9296d[i10] == s0Var) {
                return i10;
            }
        }
        return -1;
    }

    @Override // j5.l
    public final boolean b(int i10, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        boolean zC = c(i10, jElapsedRealtime);
        int i11 = 0;
        while (i11 < this.f9294b && !zC) {
            zC = (i11 == i10 || c(i11, jElapsedRealtime)) ? false : true;
            i11++;
        }
        if (!zC) {
            return false;
        }
        long[] jArr = this.f9297e;
        long j11 = jArr[i10];
        int i12 = g0.f10384a;
        long j12 = jElapsedRealtime + j10;
        jArr[i10] = Math.max(j11, ((j10 ^ j12) & (jElapsedRealtime ^ j12)) >= 0 ? j12 : Long.MAX_VALUE);
        return true;
    }

    @Override // j5.l
    public final boolean c(int i10, long j10) {
        return this.f9297e[i10] > j10;
    }

    @Override // j5.l
    public void disable() {
    }

    @Override // j5.o
    public final s0 e(int i10) {
        return this.f9296d[i10];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f9293a == cVar.f9293a && Arrays.equals(this.f9295c, cVar.f9295c);
    }

    @Override // j5.l
    public void f() {
    }

    public final int hashCode() {
        if (this.f9298f == 0) {
            this.f9298f = Arrays.hashCode(this.f9295c) + (System.identityHashCode(this.f9293a) * 31);
        }
        return this.f9298f;
    }

    @Override // j5.o
    public final int i(int i10) {
        return this.f9295c[i10];
    }

    @Override // j5.l
    public int j(long j10, List<? extends r4.m> list) {
        return list.size();
    }

    @Override // j5.l
    public final int k() {
        return this.f9295c[o()];
    }

    @Override // j5.o
    public final t0 l() {
        return this.f9293a;
    }

    @Override // j5.o
    public final int length() {
        return this.f9295c.length;
    }

    @Override // j5.l
    public final s0 m() {
        return this.f9296d[o()];
    }

    @Override // j5.l
    public void p(float f10) {
    }

    @Override // j5.o
    public final int t(int i10) {
        for (int i11 = 0; i11 < this.f9294b; i11++) {
            if (this.f9295c[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }
}
