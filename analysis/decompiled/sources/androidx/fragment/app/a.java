package androidx.fragment.app;

import android.util.Log;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: compiled from: BackStackRecord.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends g0 implements x.l {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final x f1813q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f1814r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1815s;

    public a(x xVar) {
        xVar.H();
        u<?> uVar = xVar.f2061q;
        if (uVar != null) {
            uVar.f2037i.getClassLoader();
        }
        this.f1815s = -1;
        this.f1813q = xVar;
    }

    @Override // androidx.fragment.app.x.l
    public final boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (x.L(2)) {
            Log.v("FragmentManager", "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f1894g) {
            return true;
        }
        x xVar = this.f1813q;
        if (xVar.f2048d == null) {
            xVar.f2048d = new ArrayList<>();
        }
        xVar.f2048d.add(this);
        return true;
    }

    @Override // androidx.fragment.app.g0
    public final void c() {
        if (this.f1894g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f1895h = false;
        this.f1813q.A(this, false);
    }

    @Override // androidx.fragment.app.g0
    public final void d() {
        if (this.f1894g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f1895h = false;
        this.f1813q.A(this, true);
    }

    @Override // androidx.fragment.app.g0
    public final void e(int i10, m mVar, String str, int i11) {
        Class<?> cls = mVar.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            StringBuilder sbC = a0.b.c("Fragment ");
            sbC.append(cls.getCanonicalName());
            sbC.append(" must be a public static class to be  properly recreated from instance state.");
            throw new IllegalStateException(sbC.toString());
        }
        if (str != null) {
            String str2 = mVar.F;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + mVar + ": was " + mVar.F + " now " + str);
            }
            mVar.F = str;
        }
        if (i10 != 0) {
            if (i10 == -1) {
                throw new IllegalArgumentException("Can't add fragment " + mVar + " with tag " + str + " to container view with no id");
            }
            int i12 = mVar.D;
            if (i12 != 0 && i12 != i10) {
                throw new IllegalStateException("Can't change container ID of fragment " + mVar + ": was " + mVar.D + " now " + i10);
            }
            mVar.D = i10;
            mVar.E = i10;
        }
        b(new g0.a(i11, mVar));
        mVar.f1983z = this.f1813q;
    }

    public final void h(int i10) {
        if (this.f1894g) {
            if (x.L(2)) {
                Log.v("FragmentManager", "Bump nesting in " + this + " by " + i10);
            }
            int size = this.f1888a.size();
            for (int i11 = 0; i11 < size; i11++) {
                g0.a aVar = this.f1888a.get(i11);
                m mVar = aVar.f1905b;
                if (mVar != null) {
                    mVar.f1982y += i10;
                    if (x.L(2)) {
                        StringBuilder sbC = a0.b.c("Bump nesting of ");
                        sbC.append(aVar.f1905b);
                        sbC.append(" to ");
                        sbC.append(aVar.f1905b.f1982y);
                        Log.v("FragmentManager", sbC.toString());
                    }
                }
            }
        }
    }

    public final int i() {
        return j(false);
    }

    public final int j(boolean z10) {
        if (this.f1814r) {
            throw new IllegalStateException("commit already called");
        }
        if (x.L(2)) {
            Log.v("FragmentManager", "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new m0());
            k("  ", printWriter, true);
            printWriter.close();
        }
        this.f1814r = true;
        if (this.f1894g) {
            this.f1815s = this.f1813q.f2053i.getAndIncrement();
        } else {
            this.f1815s = -1;
        }
        this.f1813q.x(this, z10);
        return this.f1815s;
    }

    public final void k(String str, PrintWriter printWriter, boolean z10) {
        String string;
        if (z10) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f1896i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f1815s);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f1814r);
            if (this.f1893f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f1893f));
            }
            if (this.f1889b != 0 || this.f1890c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1889b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1890c));
            }
            if (this.f1891d != 0 || this.f1892e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f1891d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f1892e));
            }
            if (this.f1897j != 0 || this.f1898k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1897j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f1898k);
            }
            if (this.f1899l != 0 || this.f1900m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f1899l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f1900m);
            }
        }
        if (this.f1888a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f1888a.size();
        for (int i10 = 0; i10 < size; i10++) {
            g0.a aVar = this.f1888a.get(i10);
            switch (aVar.f1904a) {
                case 0:
                    string = "NULL";
                    break;
                case 1:
                    string = "ADD";
                    break;
                case 2:
                    string = "REPLACE";
                    break;
                case 3:
                    string = "REMOVE";
                    break;
                case 4:
                    string = "HIDE";
                    break;
                case 5:
                    string = "SHOW";
                    break;
                case 6:
                    string = "DETACH";
                    break;
                case 7:
                    string = "ATTACH";
                    break;
                case 8:
                    string = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    string = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    string = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    StringBuilder sbC = a0.b.c("cmd=");
                    sbC.append(aVar.f1904a);
                    string = sbC.toString();
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i10);
            printWriter.print(": ");
            printWriter.print(string);
            printWriter.print(" ");
            printWriter.println(aVar.f1905b);
            if (z10) {
                if (aVar.f1906c != 0 || aVar.f1907d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f1906c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f1907d));
                }
                if (aVar.f1908e != 0 || aVar.f1909f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f1908e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f1909f));
                }
            }
        }
    }

    public final void l() {
        int size = this.f1888a.size();
        for (int i10 = 0; i10 < size; i10++) {
            g0.a aVar = this.f1888a.get(i10);
            m mVar = aVar.f1905b;
            if (mVar != null) {
                mVar.m0(false);
                int i11 = this.f1893f;
                if (mVar.P != null || i11 != 0) {
                    mVar.h();
                    mVar.P.f1991g = i11;
                }
                ArrayList<String> arrayList = this.f1901n;
                ArrayList<String> arrayList2 = this.f1902o;
                mVar.h();
                m.b bVar = mVar.P;
                bVar.f1992h = arrayList;
                bVar.f1993i = arrayList2;
            }
            switch (aVar.f1904a) {
                case 1:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, false);
                    this.f1813q.a(mVar);
                    break;
                case 2:
                default:
                    StringBuilder sbC = a0.b.c("Unknown cmd: ");
                    sbC.append(aVar.f1904a);
                    throw new IllegalArgumentException(sbC.toString());
                case 3:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.V(mVar);
                    break;
                case 4:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.K(mVar);
                    break;
                case 5:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, false);
                    this.f1813q.e0(mVar);
                    break;
                case 6:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.g(mVar);
                    break;
                case 7:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, false);
                    this.f1813q.c(mVar);
                    break;
                case 8:
                    this.f1813q.c0(mVar);
                    break;
                case 9:
                    this.f1813q.c0(null);
                    break;
                case 10:
                    this.f1813q.b0(mVar, aVar.f1911h);
                    break;
            }
            if (!this.f1903p) {
                int i12 = aVar.f1904a;
            }
        }
    }

    public final void m() {
        for (int size = this.f1888a.size() - 1; size >= 0; size--) {
            g0.a aVar = this.f1888a.get(size);
            m mVar = aVar.f1905b;
            if (mVar != null) {
                mVar.m0(true);
                int i10 = this.f1893f;
                int i11 = 8194;
                if (i10 != 4097) {
                    i11 = i10 != 4099 ? i10 != 8194 ? 0 : 4097 : 4099;
                }
                if (mVar.P != null || i11 != 0) {
                    mVar.h();
                    mVar.P.f1991g = i11;
                }
                ArrayList<String> arrayList = this.f1902o;
                ArrayList<String> arrayList2 = this.f1901n;
                mVar.h();
                m.b bVar = mVar.P;
                bVar.f1992h = arrayList;
                bVar.f1993i = arrayList2;
            }
            switch (aVar.f1904a) {
                case 1:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, true);
                    this.f1813q.V(mVar);
                    break;
                case 2:
                default:
                    StringBuilder sbC = a0.b.c("Unknown cmd: ");
                    sbC.append(aVar.f1904a);
                    throw new IllegalArgumentException(sbC.toString());
                case 3:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a(mVar);
                    break;
                case 4:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.e0(mVar);
                    break;
                case 5:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, true);
                    this.f1813q.K(mVar);
                    break;
                case 6:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.c(mVar);
                    break;
                case 7:
                    mVar.i0(aVar.f1906c, aVar.f1907d, aVar.f1908e, aVar.f1909f);
                    this.f1813q.a0(mVar, true);
                    this.f1813q.g(mVar);
                    break;
                case 8:
                    this.f1813q.c0(null);
                    break;
                case 9:
                    this.f1813q.c0(mVar);
                    break;
                case 10:
                    this.f1813q.b0(mVar, aVar.f1910g);
                    break;
            }
        }
    }

    public final g0 n(m mVar) {
        x xVar = mVar.f1983z;
        if (xVar == null || xVar == this.f1813q) {
            b(new g0.a(3, mVar));
            return this;
        }
        StringBuilder sbC = a0.b.c("Cannot remove Fragment attached to a different FragmentManager. Fragment ");
        sbC.append(mVar.toString());
        sbC.append(" is already attached to a FragmentManager.");
        throw new IllegalStateException(sbC.toString());
    }

    public final g0 o(m mVar, androidx.lifecycle.i.c cVar) {
        if (mVar.f1983z != this.f1813q) {
            StringBuilder sbC = a0.b.c("Cannot setMaxLifecycle for Fragment not attached to FragmentManager ");
            sbC.append(this.f1813q);
            throw new IllegalArgumentException(sbC.toString());
        }
        if (cVar == androidx.lifecycle.i.c.INITIALIZED && mVar.f1965h > -1) {
            throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cVar + " after the Fragment has been created");
        }
        if (cVar != androidx.lifecycle.i.c.DESTROYED) {
            b(new g0.a(mVar, cVar));
            return this;
        }
        throw new IllegalArgumentException("Cannot set maximum Lifecycle to " + cVar + ". Use remove() to remove the fragment from the FragmentManager and trigger its destruction.");
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("BackStackEntry{");
        sb2.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f1815s >= 0) {
            sb2.append(" #");
            sb2.append(this.f1815s);
        }
        if (this.f1896i != null) {
            sb2.append(" ");
            sb2.append(this.f1896i);
        }
        sb2.append("}");
        return sb2.toString();
    }
}
