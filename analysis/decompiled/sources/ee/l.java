package ee;

import androidx.appcompat.widget.e0;
import androidx.lifecycle.o;
import de.a0;
import gd.n;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: -Path.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final de.g f6795a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final de.g f6796b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final de.g f6797c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final de.g f6798d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final de.g f6799e;

    static {
        de.g.a aVar = de.g.f6227k;
        f6795a = aVar.c("/");
        f6796b = aVar.c("\\");
        f6797c = aVar.c("/\\");
        f6798d = aVar.c(".");
        f6799e = aVar.c("..");
    }

    public static final int a(a0 a0Var) {
        int iQ = de.g.q(a0Var.f6191h, f6795a, 0, 2, null);
        return iQ != -1 ? iQ : de.g.q(a0Var.f6191h, f6796b, 0, 2, null);
    }

    public static final int b(a0 a0Var) {
        if (a0Var.f6191h.j() == 0) {
            return -1;
        }
        boolean z10 = false;
        if (a0Var.f6191h.o(0) != ((byte) 47)) {
            byte b10 = (byte) 92;
            if (a0Var.f6191h.o(0) != b10) {
                if (a0Var.f6191h.j() <= 2 || a0Var.f6191h.o(1) != ((byte) 58) || a0Var.f6191h.o(2) != b10) {
                    return -1;
                }
                char cO = (char) a0Var.f6191h.o(0);
                if (!('a' <= cO && cO < '{')) {
                    if ('A' <= cO && cO < '[') {
                        z10 = true;
                    }
                    if (!z10) {
                        return -1;
                    }
                }
                return 3;
            }
            if (a0Var.f6191h.j() > 2 && a0Var.f6191h.o(1) == b10) {
                de.g gVar = a0Var.f6191h;
                de.g gVar2 = f6796b;
                Objects.requireNonNull(gVar);
                p4.h.j(gVar2, "other");
                int iL = gVar.l(gVar2.n(), 2);
                return iL == -1 ? a0Var.f6191h.j() : iL;
            }
        }
        return 1;
    }

    public static final a0 c(a0 a0Var, a0 a0Var2, boolean z10) {
        p4.h.j(a0Var, "<this>");
        p4.h.j(a0Var2, "child");
        if ((b(a0Var2) != -1) || a0Var2.m() != null) {
            return a0Var2;
        }
        de.g gVarD = d(a0Var);
        if (gVarD == null && (gVarD = d(a0Var2)) == null) {
            gVarD = g(a0.f6190j);
        }
        de.c cVar = new de.c();
        cVar.u0(a0Var.f6191h);
        if (cVar.f6199i > 0) {
            cVar.u0(gVarD);
        }
        cVar.u0(a0Var2.f6191h);
        return e(cVar, z10);
    }

    public static final de.g d(a0 a0Var) {
        de.g gVar = a0Var.f6191h;
        de.g gVar2 = f6795a;
        if (de.g.m(gVar, gVar2, 0, 2, null) != -1) {
            return gVar2;
        }
        de.g gVar3 = a0Var.f6191h;
        de.g gVar4 = f6796b;
        if (de.g.m(gVar3, gVar4, 0, 2, null) != -1) {
            return gVar4;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    public static final a0 e(de.c cVar, boolean z10) throws EOFException {
        de.g gVar;
        boolean z11;
        de.g gVarJ;
        de.c cVar2 = new de.c();
        de.g gVarF = null;
        int i10 = 0;
        while (true) {
            if (!cVar.a0(0L, f6795a)) {
                gVar = f6796b;
                if (!cVar.a0(0L, gVar)) {
                    break;
                }
            }
            byte b10 = cVar.readByte();
            if (gVarF == null) {
                gVarF = f(b10);
            }
            i10++;
        }
        boolean z12 = i10 >= 2 && p4.h.c(gVarF, gVar);
        if (z12) {
            p4.h.g(gVarF);
            cVar2.u0(gVarF);
            cVar2.u0(gVarF);
        } else if (i10 > 0) {
            p4.h.g(gVarF);
            cVar2.u0(gVarF);
        } else {
            long jS = cVar.S(f6797c);
            if (gVarF == null) {
                gVarF = jS == -1 ? g(a0.f6190j) : f(cVar.h0(jS));
            }
            if (p4.h.c(gVarF, gVar) && cVar.f6199i >= 2 && cVar.h0(1L) == ((byte) 58)) {
                char cH0 = (char) cVar.h0(0L);
                if (!('a' <= cH0 && cH0 < '{')) {
                    if (!('A' <= cH0 && cH0 < '[')) {
                        z11 = false;
                    }
                }
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                if (jS == 2) {
                    cVar2.write(cVar, 3L);
                } else {
                    cVar2.write(cVar, 2L);
                }
            }
        }
        boolean z13 = cVar2.f6199i > 0;
        ArrayList arrayList = new ArrayList();
        while (!cVar.z()) {
            long jS2 = cVar.S(f6797c);
            if (jS2 == -1) {
                gVarJ = cVar.i();
            } else {
                gVarJ = cVar.j(jS2);
                cVar.readByte();
            }
            de.g gVar2 = f6799e;
            if (p4.h.c(gVarJ, gVar2)) {
                if (!z13 || !arrayList.isEmpty()) {
                    if (!z10 || (!z13 && (arrayList.isEmpty() || p4.h.c(n.e0(arrayList), gVar2)))) {
                        arrayList.add(gVarJ);
                    } else if (!z12 || arrayList.size() != 1) {
                        if (!arrayList.isEmpty()) {
                            arrayList.remove(o.p(arrayList));
                        }
                    }
                }
            } else if (!p4.h.c(gVarJ, f6798d) && !p4.h.c(gVarJ, de.g.f6228l)) {
                arrayList.add(gVarJ);
            }
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 > 0) {
                cVar2.u0(gVarF);
            }
            cVar2.u0((de.g) arrayList.get(i11));
        }
        if (cVar2.f6199i == 0) {
            cVar2.u0(f6798d);
        }
        return new a0(cVar2.i());
    }

    public static final de.g f(byte b10) {
        if (b10 == 47) {
            return f6795a;
        }
        if (b10 == 92) {
            return f6796b;
        }
        throw new IllegalArgumentException(e0.d("not a directory separator: ", b10));
    }

    public static final de.g g(String str) {
        if (p4.h.c(str, "/")) {
            return f6795a;
        }
        if (p4.h.c(str, "\\")) {
            return f6796b;
        }
        throw new IllegalArgumentException(androidx.recyclerview.widget.d.c("not a directory separator: ", str));
    }
}
