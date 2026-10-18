package androidx.fragment.app;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import java.util.Objects;

/* JADX INFO: compiled from: FragmentPagerAdapter.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class c0 extends j1.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final x f1848b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1852f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public a f1850d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f1851e = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1849c = 1;

    public c0(x xVar) {
        this.f1848b = xVar;
    }

    public static String j(int i10, long j10) {
        return "android:switcher:" + i10 + ":" + j10;
    }

    @Override // j1.a
    public final void a(Object obj) {
        m mVar = (m) obj;
        if (this.f1850d == null) {
            this.f1850d = new a(this.f1848b);
        }
        a aVar = this.f1850d;
        Objects.requireNonNull(aVar);
        x xVar = mVar.f1983z;
        if (xVar != null && xVar != aVar.f1813q) {
            StringBuilder sbC = a0.b.c("Cannot detach Fragment attached to a different FragmentManager. Fragment ");
            sbC.append(mVar.toString());
            sbC.append(" is already attached to a FragmentManager.");
            throw new IllegalStateException(sbC.toString());
        }
        aVar.b(new g0.a(6, mVar));
        if (mVar.equals(this.f1851e)) {
            this.f1851e = null;
        }
    }

    @Override // j1.a
    public final void b() {
        a aVar = this.f1850d;
        if (aVar != null) {
            if (!this.f1852f) {
                try {
                    this.f1852f = true;
                    aVar.d();
                    this.f1852f = false;
                } catch (Throwable th) {
                    this.f1852f = false;
                    throw th;
                }
            }
            this.f1850d = null;
        }
    }

    @Override // j1.a
    public final Object d(ViewGroup viewGroup, int i10) {
        y8.d dVar;
        if (this.f1850d == null) {
            this.f1850d = new a(this.f1848b);
        }
        long j10 = i10;
        m mVarF = this.f1848b.F(j(viewGroup.getId(), j10));
        if (mVarF != null) {
            a aVar = this.f1850d;
            Objects.requireNonNull(aVar);
            aVar.b(new g0.a(7, mVarF));
        } else {
            y8.c cVar = (y8.c) this;
            if (i10 == 0) {
                y8.d.a aVar2 = y8.d.f18689e0;
                dVar = new y8.d();
                Bundle bundle = new Bundle();
                bundle.putInt("param_position", i10);
                dVar.j0(bundle);
                cVar.f18687g = dVar;
            } else {
                y8.d.a aVar3 = y8.d.f18689e0;
                dVar = new y8.d();
                Bundle bundle2 = new Bundle();
                bundle2.putInt("param_position", i10);
                dVar.j0(bundle2);
                cVar.f18688h = dVar;
            }
            mVarF = dVar;
            this.f1850d.e(viewGroup.getId(), mVarF, j(viewGroup.getId(), j10), 1);
        }
        if (mVarF != this.f1851e) {
            mVarF.l0(false);
            if (this.f1849c == 1) {
                this.f1850d.o(mVarF, androidx.lifecycle.i.c.STARTED);
            } else {
                mVarF.o0(false);
            }
        }
        return mVarF;
    }

    @Override // j1.a
    public final boolean e(View view, Object obj) {
        return ((m) obj).M == view;
    }

    @Override // j1.a
    public final void f() {
    }

    @Override // j1.a
    public final void g() {
    }

    @Override // j1.a
    public final void h(Object obj) {
        m mVar = (m) obj;
        m mVar2 = this.f1851e;
        if (mVar != mVar2) {
            if (mVar2 != null) {
                mVar2.l0(false);
                if (this.f1849c == 1) {
                    if (this.f1850d == null) {
                        this.f1850d = new a(this.f1848b);
                    }
                    this.f1850d.o(this.f1851e, androidx.lifecycle.i.c.STARTED);
                } else {
                    this.f1851e.o0(false);
                }
            }
            mVar.l0(true);
            if (this.f1849c == 1) {
                if (this.f1850d == null) {
                    this.f1850d = new a(this.f1848b);
                }
                this.f1850d.o(mVar, androidx.lifecycle.i.c.RESUMED);
            } else {
                mVar.o0(true);
            }
            this.f1851e = mVar;
        }
    }

    @Override // j1.a
    public final void i(ViewGroup viewGroup) {
        if (viewGroup.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }
}
