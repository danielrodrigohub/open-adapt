package androidx.recyclerview.widget;

import android.view.View;

/* JADX INFO: compiled from: ViewBoundsCheck.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f2659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f2660b = new a();

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2661a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2662b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2663c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2664d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2665e;

        public final void a(int i10) {
            this.f2661a = i10 | this.f2661a;
        }

        public final boolean b() {
            int i10 = this.f2661a;
            if ((i10 & 7) != 0 && (i10 & (c(this.f2664d, this.f2662b) << 0)) == 0) {
                return false;
            }
            int i11 = this.f2661a;
            if ((i11 & 112) != 0 && (i11 & (c(this.f2664d, this.f2663c) << 4)) == 0) {
                return false;
            }
            int i12 = this.f2661a;
            if ((i12 & 1792) != 0 && (i12 & (c(this.f2665e, this.f2662b) << 8)) == 0) {
                return false;
            }
            int i13 = this.f2661a;
            return (i13 & 28672) == 0 || (i13 & (c(this.f2665e, this.f2663c) << 12)) != 0;
        }

        public final int c(int i10, int i11) {
            if (i10 > i11) {
                return 1;
            }
            return i10 == i11 ? 2 : 4;
        }
    }

    /* JADX INFO: compiled from: ViewBoundsCheck.java */
    public interface b {
        int a();

        int b(View view);

        View c(int i10);

        int d();

        int e(View view);
    }

    public l0(b bVar) {
        this.f2659a = bVar;
    }

    public final View a(int i10, int i11, int i12, int i13) {
        int iD = this.f2659a.d();
        int iA = this.f2659a.a();
        int i14 = i11 > i10 ? 1 : -1;
        View view = null;
        while (i10 != i11) {
            View viewC = this.f2659a.c(i10);
            int iB = this.f2659a.b(viewC);
            int iE = this.f2659a.e(viewC);
            a aVar = this.f2660b;
            aVar.f2662b = iD;
            aVar.f2663c = iA;
            aVar.f2664d = iB;
            aVar.f2665e = iE;
            if (i12 != 0) {
                aVar.f2661a = 0;
                aVar.a(i12);
                if (this.f2660b.b()) {
                    return viewC;
                }
            }
            if (i13 != 0) {
                a aVar2 = this.f2660b;
                aVar2.f2661a = 0;
                aVar2.a(i13);
                if (this.f2660b.b()) {
                    view = viewC;
                }
            }
            i10 += i14;
        }
        return view;
    }

    public final boolean b(View view) {
        a aVar = this.f2660b;
        int iD = this.f2659a.d();
        int iA = this.f2659a.a();
        int iB = this.f2659a.b(view);
        int iE = this.f2659a.e(view);
        aVar.f2662b = iD;
        aVar.f2663c = iA;
        aVar.f2664d = iB;
        aVar.f2665e = iE;
        a aVar2 = this.f2660b;
        aVar2.f2661a = 0;
        aVar2.a(24579);
        return this.f2660b.b();
    }
}
