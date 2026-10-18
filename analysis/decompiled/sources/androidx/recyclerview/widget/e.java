package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ChildHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f2617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f2618b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<View> f2619c = new ArrayList();

    /* JADX INFO: compiled from: ChildHelper.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f2620a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public a f2621b;

        public final void a(int i10) {
            if (i10 < 64) {
                this.f2620a &= ~(1 << i10);
                return;
            }
            a aVar = this.f2621b;
            if (aVar != null) {
                aVar.a(i10 - 64);
            }
        }

        public final int b(int i10) {
            a aVar = this.f2621b;
            if (aVar == null) {
                return i10 >= 64 ? Long.bitCount(this.f2620a) : Long.bitCount(this.f2620a & ((1 << i10) - 1));
            }
            if (i10 < 64) {
                return Long.bitCount(this.f2620a & ((1 << i10) - 1));
            }
            return Long.bitCount(this.f2620a) + aVar.b(i10 - 64);
        }

        public final void c() {
            if (this.f2621b == null) {
                this.f2621b = new a();
            }
        }

        public final boolean d(int i10) {
            if (i10 < 64) {
                return (this.f2620a & (1 << i10)) != 0;
            }
            c();
            return this.f2621b.d(i10 - 64);
        }

        public final void e(int i10, boolean z10) {
            if (i10 >= 64) {
                c();
                this.f2621b.e(i10 - 64, z10);
                return;
            }
            long j10 = this.f2620a;
            boolean z11 = (Long.MIN_VALUE & j10) != 0;
            long j11 = (1 << i10) - 1;
            this.f2620a = ((j10 & (~j11)) << 1) | (j10 & j11);
            if (z10) {
                h(i10);
            } else {
                a(i10);
            }
            if (z11 || this.f2621b != null) {
                c();
                this.f2621b.e(0, z11);
            }
        }

        public final boolean f(int i10) {
            if (i10 >= 64) {
                c();
                return this.f2621b.f(i10 - 64);
            }
            long j10 = 1 << i10;
            long j11 = this.f2620a;
            boolean z10 = (j11 & j10) != 0;
            long j12 = j11 & (~j10);
            this.f2620a = j12;
            long j13 = j10 - 1;
            this.f2620a = (j12 & j13) | Long.rotateRight((~j13) & j12, 1);
            a aVar = this.f2621b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f2621b.f(0);
            }
            return z10;
        }

        public final void g() {
            this.f2620a = 0L;
            a aVar = this.f2621b;
            if (aVar != null) {
                aVar.g();
            }
        }

        public final void h(int i10) {
            if (i10 < 64) {
                this.f2620a |= 1 << i10;
            } else {
                c();
                this.f2621b.h(i10 - 64);
            }
        }

        public final String toString() {
            if (this.f2621b == null) {
                return Long.toBinaryString(this.f2620a);
            }
            return this.f2621b.toString() + "xx" + Long.toBinaryString(this.f2620a);
        }
    }

    /* JADX INFO: compiled from: ChildHelper.java */
    public interface b {
    }

    public e(b bVar) {
        this.f2617a = bVar;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$o>] */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.util.ArrayList, java.util.List<androidx.recyclerview.widget.RecyclerView$o>] */
    public final void a(View view, int i10, boolean z10) {
        int iB = i10 < 0 ? ((f0) this.f2617a).b() : f(i10);
        this.f2618b.e(iB, z10);
        if (z10) {
            i(view);
        }
        f0 f0Var = (f0) this.f2617a;
        f0Var.f2626a.addView(view, iB);
        RecyclerView recyclerView = f0Var.f2626a;
        Objects.requireNonNull(recyclerView);
        RecyclerView.K(view);
        ?? r10 = recyclerView.J;
        if (r10 == 0) {
            return;
        }
        int size = r10.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                ((RecyclerView.o) recyclerView.J.get(size)).b();
            }
        }
    }

    public final void b(View view, int i10, ViewGroup.LayoutParams layoutParams, boolean z10) {
        int iB = i10 < 0 ? ((f0) this.f2617a).b() : f(i10);
        this.f2618b.e(iB, z10);
        if (z10) {
            i(view);
        }
        f0 f0Var = (f0) this.f2617a;
        Objects.requireNonNull(f0Var);
        RecyclerView.b0 b0VarK = RecyclerView.K(view);
        if (b0VarK != null) {
            if (!b0VarK.r() && !b0VarK.x()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Called attach on a child which is not detached: ");
                sb2.append(b0VarK);
                throw new IllegalArgumentException(d.b(f0Var.f2626a, sb2));
            }
            b0VarK.f2462j &= -257;
        }
        f0Var.f2626a.attachViewToParent(view, iB, layoutParams);
    }

    public final void c(int i10) {
        RecyclerView.b0 b0VarK;
        int iF = f(i10);
        this.f2618b.f(iF);
        f0 f0Var = (f0) this.f2617a;
        View viewA = f0Var.a(iF);
        if (viewA != null && (b0VarK = RecyclerView.K(viewA)) != null) {
            if (b0VarK.r() && !b0VarK.x()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("called detach on an already detached child ");
                sb2.append(b0VarK);
                throw new IllegalArgumentException(d.b(f0Var.f2626a, sb2));
            }
            b0VarK.d(256);
        }
        f0Var.f2626a.detachViewFromParent(iF);
    }

    public final View d(int i10) {
        return ((f0) this.f2617a).a(f(i10));
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final int e() {
        return ((f0) this.f2617a).b() - this.f2619c.size();
    }

    public final int f(int i10) {
        if (i10 < 0) {
            return -1;
        }
        int iB = ((f0) this.f2617a).b();
        int i11 = i10;
        while (i11 < iB) {
            int iB2 = i10 - (i11 - this.f2618b.b(i11));
            if (iB2 == 0) {
                while (this.f2618b.d(i11)) {
                    i11++;
                }
                return i11;
            }
            i11 += iB2;
        }
        return -1;
    }

    public final View g(int i10) {
        return ((f0) this.f2617a).a(i10);
    }

    public final int h() {
        return ((f0) this.f2617a).b();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final void i(View view) {
        this.f2619c.add(view);
        f0 f0Var = (f0) this.f2617a;
        Objects.requireNonNull(f0Var);
        RecyclerView.b0 b0VarK = RecyclerView.K(view);
        if (b0VarK != null) {
            RecyclerView recyclerView = f0Var.f2626a;
            int i10 = b0VarK.f2469q;
            if (i10 != -1) {
                b0VarK.f2468p = i10;
            } else {
                View view2 = b0VarK.f2453a;
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                b0VarK.f2468p = j0.a0.d.c(view2);
            }
            recyclerView.i0(b0VarK, 4);
        }
    }

    public final int j(View view) {
        int iC = ((f0) this.f2617a).c(view);
        if (iC == -1 || this.f2618b.d(iC)) {
            return -1;
        }
        return iC - this.f2618b.b(iC);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final boolean k(View view) {
        return this.f2619c.contains(view);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final boolean l(View view) {
        if (!this.f2619c.remove(view)) {
            return false;
        }
        f0 f0Var = (f0) this.f2617a;
        Objects.requireNonNull(f0Var);
        RecyclerView.b0 b0VarK = RecyclerView.K(view);
        if (b0VarK == null) {
            return true;
        }
        f0Var.f2626a.i0(b0VarK, b0VarK.f2468p);
        b0VarK.f2468p = 0;
        return true;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList, java.util.List<android.view.View>] */
    public final String toString() {
        return this.f2618b.toString() + ", hidden list:" + this.f2619c.size();
    }
}
