package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: GapWorker.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements Runnable {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final ThreadLocal<r> f2757l = new ThreadLocal<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static Comparator<c> f2758m = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f2760i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2761j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<RecyclerView> f2759h = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ArrayList<c> f2762k = new ArrayList<>();

    /* JADX INFO: compiled from: GapWorker.java */
    public class a implements Comparator<c> {
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
        
            if (r0 == null) goto L13;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0023, code lost:
        
            if (r0 != false) goto L14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
        
            return 1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:?, code lost:
        
            return -1;
         */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final int compare(c cVar, c cVar2) {
            c cVar3 = cVar;
            c cVar4 = cVar2;
            RecyclerView recyclerView = cVar3.f2770d;
            if ((recyclerView == null) == (cVar4.f2770d == null)) {
                boolean z10 = cVar3.f2767a;
                if (z10 == cVar4.f2767a) {
                    int i10 = cVar4.f2768b - cVar3.f2768b;
                    if (i10 != 0) {
                        return i10;
                    }
                    int i11 = cVar3.f2769c - cVar4.f2769c;
                    if (i11 != 0) {
                        return i11;
                    }
                    return 0;
                }
            }
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    @SuppressLint({"VisibleForTests"})
    public static class b implements RecyclerView.m.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2763a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2764b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int[] f2765c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2766d;

        public final void a(int i10, int i11) {
            if (i10 < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i11 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i12 = this.f2766d * 2;
            int[] iArr = this.f2765c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.f2765c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i12 >= iArr.length) {
                int[] iArr3 = new int[i12 * 2];
                this.f2765c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.f2765c;
            iArr4[i12] = i10;
            iArr4[i12 + 1] = i11;
            this.f2766d++;
        }

        public final void b(RecyclerView recyclerView, boolean z10) {
            this.f2766d = 0;
            int[] iArr = this.f2765c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.m mVar = recyclerView.f2429t;
            if (recyclerView.f2427s == null || mVar == null || !mVar.f2495k) {
                return;
            }
            if (z10) {
                if (!recyclerView.f2411k.g()) {
                    mVar.l(recyclerView.f2427s.a(), this);
                }
            } else if (!recyclerView.N()) {
                mVar.k(this.f2763a, this.f2764b, recyclerView.f2420o0, this);
            }
            int i10 = this.f2766d;
            if (i10 > mVar.f2496l) {
                mVar.f2496l = i10;
                mVar.f2497m = z10;
                recyclerView.f2407i.l();
            }
        }

        public final boolean c(int i10) {
            if (this.f2765c != null) {
                int i11 = this.f2766d * 2;
                for (int i12 = 0; i12 < i11; i12 += 2) {
                    if (this.f2765c[i12] == i10) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    /* JADX INFO: compiled from: GapWorker.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f2767a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2768b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2769c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public RecyclerView f2770d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2771e;
    }

    public final void a(RecyclerView recyclerView, int i10, int i11) {
        if (recyclerView.isAttachedToWindow() && this.f2760i == 0) {
            this.f2760i = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        b bVar = recyclerView.f2418n0;
        bVar.f2763a = i10;
        bVar.f2764b = i11;
    }

    public final void b(long j10) {
        c cVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        c cVar2;
        int size = this.f2759h.size();
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            RecyclerView recyclerView3 = this.f2759h.get(i11);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.f2418n0.b(recyclerView3, false);
                i10 += recyclerView3.f2418n0.f2766d;
            }
        }
        this.f2762k.ensureCapacity(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < size; i13++) {
            RecyclerView recyclerView4 = this.f2759h.get(i13);
            if (recyclerView4.getWindowVisibility() == 0) {
                b bVar = recyclerView4.f2418n0;
                int iAbs = Math.abs(bVar.f2764b) + Math.abs(bVar.f2763a);
                for (int i14 = 0; i14 < bVar.f2766d * 2; i14 += 2) {
                    if (i12 >= this.f2762k.size()) {
                        cVar2 = new c();
                        this.f2762k.add(cVar2);
                    } else {
                        cVar2 = this.f2762k.get(i12);
                    }
                    int[] iArr = bVar.f2765c;
                    int i15 = iArr[i14 + 1];
                    cVar2.f2767a = i15 <= iAbs;
                    cVar2.f2768b = iAbs;
                    cVar2.f2769c = i15;
                    cVar2.f2770d = recyclerView4;
                    cVar2.f2771e = iArr[i14];
                    i12++;
                }
            }
        }
        Collections.sort(this.f2762k, f2758m);
        for (int i16 = 0; i16 < this.f2762k.size() && (recyclerView = (cVar = this.f2762k.get(i16)).f2770d) != null; i16++) {
            RecyclerView.b0 b0VarC = c(recyclerView, cVar.f2771e, cVar.f2767a ? Long.MAX_VALUE : j10);
            if (b0VarC != null && b0VarC.f2454b != null && b0VarC.m() && !b0VarC.n() && (recyclerView2 = b0VarC.f2454b.get()) != null) {
                if (recyclerView2.K && recyclerView2.f2413l.h() != 0) {
                    recyclerView2.b0();
                }
                b bVar2 = recyclerView2.f2418n0;
                bVar2.b(recyclerView2, true);
                if (bVar2.f2766d != 0) {
                    try {
                        int i17 = f0.f.f6959a;
                        f0.f.a.a("RV Nested Prefetch");
                        RecyclerView.y yVar = recyclerView2.f2420o0;
                        RecyclerView.e eVar = recyclerView2.f2427s;
                        yVar.f2546d = 1;
                        yVar.f2547e = eVar.a();
                        yVar.f2549g = false;
                        yVar.f2550h = false;
                        yVar.f2551i = false;
                        for (int i18 = 0; i18 < bVar2.f2766d * 2; i18 += 2) {
                            c(recyclerView2, bVar2.f2765c[i18], j10);
                        }
                        f0.f.a.b();
                    } catch (Throwable th) {
                        int i19 = f0.f.f6959a;
                        f0.f.a.b();
                        throw th;
                    }
                } else {
                    continue;
                }
            }
            cVar.f2767a = false;
            cVar.f2768b = 0;
            cVar.f2769c = 0;
            cVar.f2770d = null;
            cVar.f2771e = 0;
        }
    }

    public final RecyclerView.b0 c(RecyclerView recyclerView, int i10, long j10) {
        boolean z10;
        int iH = recyclerView.f2413l.h();
        int i11 = 0;
        while (true) {
            if (i11 >= iH) {
                z10 = false;
                break;
            }
            RecyclerView.b0 b0VarK = RecyclerView.K(recyclerView.f2413l.g(i11));
            if (b0VarK.f2455c == i10 && !b0VarK.n()) {
                z10 = true;
                break;
            }
            i11++;
        }
        if (z10) {
            return null;
        }
        RecyclerView.t tVar = recyclerView.f2407i;
        try {
            recyclerView.U();
            RecyclerView.b0 b0VarJ = tVar.j(i10, j10);
            if (b0VarJ != null) {
                if (!b0VarJ.m() || b0VarJ.n()) {
                    tVar.a(b0VarJ, false);
                } else {
                    tVar.g(b0VarJ.f2453a);
                }
            }
            return b0VarJ;
        } finally {
            recyclerView.V(false);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            int i10 = f0.f.f6959a;
            f0.f.a.a("RV Prefetch");
            if (this.f2759h.isEmpty()) {
                this.f2760i = 0L;
                return;
            }
            int size = this.f2759h.size();
            long jMax = 0;
            for (int i11 = 0; i11 < size; i11++) {
                RecyclerView recyclerView = this.f2759h.get(i11);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.f2760i = 0L;
            } else {
                b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.f2761j);
                this.f2760i = 0L;
            }
        } finally {
            this.f2760i = 0L;
            int i12 = f0.f.f6959a;
            f0.f.a.b();
        }
    }
}
