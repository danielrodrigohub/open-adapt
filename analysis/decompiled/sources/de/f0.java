package de;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: SegmentPool.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0 f6223a = new f0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e0 f6224b = new e0(new byte[0], 0, 0, false, false);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f6225c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final AtomicReference<e0>[] f6226d;

    static {
        int iHighestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f6225c = iHighestOneBit;
        AtomicReference<e0>[] atomicReferenceArr = new AtomicReference[iHighestOneBit];
        for (int i10 = 0; i10 < iHighestOneBit; i10++) {
            atomicReferenceArr[i10] = new AtomicReference<>();
        }
        f6226d = atomicReferenceArr;
    }

    public static final void b(e0 e0Var) {
        AtomicReference<e0> atomicReferenceA;
        e0 e0Var2;
        if (!(e0Var.f6221f == null && e0Var.f6222g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (e0Var.f6219d || (e0Var2 = (atomicReferenceA = f6223a.a()).get()) == f6224b) {
            return;
        }
        int i10 = e0Var2 != null ? e0Var2.f6218c : 0;
        if (i10 >= 65536) {
            return;
        }
        e0Var.f6221f = e0Var2;
        e0Var.f6217b = 0;
        e0Var.f6218c = i10 + 8192;
        if (atomicReferenceA.compareAndSet(e0Var2, e0Var)) {
            return;
        }
        e0Var.f6221f = null;
    }

    public static final e0 c() {
        AtomicReference<e0> atomicReferenceA = f6223a.a();
        e0 e0Var = f6224b;
        e0 andSet = atomicReferenceA.getAndSet(e0Var);
        if (andSet == e0Var) {
            return new e0();
        }
        if (andSet == null) {
            atomicReferenceA.set(null);
            return new e0();
        }
        atomicReferenceA.set(andSet.f6221f);
        andSet.f6221f = null;
        andSet.f6218c = 0;
        return andSet;
    }

    public final AtomicReference<e0> a() {
        return f6226d[(int) (Thread.currentThread().getId() & (((long) f6225c) - 1))];
    }
}
