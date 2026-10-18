package de;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: Path.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a0 implements Comparable<a0> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final a f6189i = new a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f6190j;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g f6191h;

    /* JADX INFO: compiled from: Path.kt */
    public static final class a {
        public static a0 b(File file) {
            a aVar = a0.f6189i;
            p4.h.j(file, "<this>");
            String string = file.toString();
            p4.h.i(string, "toString()");
            return aVar.a(string, false);
        }

        public final a0 a(String str, boolean z10) {
            p4.h.j(str, "<this>");
            g gVar = ee.l.f6795a;
            c cVar = new c();
            cVar.F0(str);
            return ee.l.e(cVar, z10);
        }
    }

    static {
        String str = File.separator;
        p4.h.i(str, "separator");
        f6190j = str;
    }

    public a0(g gVar) {
        p4.h.j(gVar, "bytes");
        this.f6191h = gVar;
    }

    public final a0 b() {
        int iB = ee.l.b(this);
        if (iB == -1) {
            return null;
        }
        return new a0(this.f6191h.x(0, iB));
    }

    @Override // java.lang.Comparable
    public final int compareTo(a0 a0Var) {
        a0 a0Var2 = a0Var;
        p4.h.j(a0Var2, "other");
        return this.f6191h.compareTo(a0Var2.f6191h);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof a0) && p4.h.c(((a0) obj).f6191h, this.f6191h);
    }

    public final List<g> g() {
        ArrayList arrayList = new ArrayList();
        int iB = ee.l.b(this);
        if (iB == -1) {
            iB = 0;
        } else if (iB < this.f6191h.j() && this.f6191h.o(iB) == ((byte) 92)) {
            iB++;
        }
        int iJ = this.f6191h.j();
        int i10 = iB;
        while (iB < iJ) {
            if (this.f6191h.o(iB) == ((byte) 47) || this.f6191h.o(iB) == ((byte) 92)) {
                arrayList.add(this.f6191h.x(i10, iB));
                i10 = iB + 1;
            }
            iB++;
        }
        if (i10 < this.f6191h.j()) {
            g gVar = this.f6191h;
            arrayList.add(gVar.x(i10, gVar.j()));
        }
        return arrayList;
    }

    public final int hashCode() {
        return this.f6191h.hashCode();
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0065  */
    public final a0 i() {
        boolean z10;
        a0 a0Var;
        g gVar = this.f6191h;
        g gVar2 = ee.l.f6798d;
        if (p4.h.c(gVar, gVar2)) {
            return null;
        }
        g gVar3 = this.f6191h;
        g gVar4 = ee.l.f6795a;
        if (p4.h.c(gVar3, gVar4)) {
            return null;
        }
        g gVar5 = this.f6191h;
        g gVar6 = ee.l.f6796b;
        if (p4.h.c(gVar5, gVar6)) {
            return null;
        }
        g gVar7 = this.f6191h;
        g gVar8 = ee.l.f6799e;
        Objects.requireNonNull(gVar7);
        p4.h.j(gVar8, "suffix");
        int iJ = gVar7.j();
        byte[] bArr = gVar8.f6229h;
        if (gVar7.s(iJ - bArr.length, gVar8, bArr.length)) {
            if (this.f6191h.j() != 2) {
                g gVar9 = this.f6191h;
                if (!gVar9.s(gVar9.j() - 3, gVar4, 1)) {
                    g gVar10 = this.f6191h;
                    if (!gVar10.s(gVar10.j() - 3, gVar6, 1)) {
                        z10 = false;
                    }
                }
            }
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return null;
        }
        int iA = ee.l.a(this);
        if (iA != 2 || m() == null) {
            if (iA == 1 && this.f6191h.w(gVar6)) {
                return null;
            }
            if (iA != -1 || m() == null) {
                if (iA == -1) {
                    return new a0(gVar2);
                }
                if (iA != 0) {
                    return new a0(g.y(this.f6191h, 0, iA, 1, null));
                }
                a0Var = new a0(g.y(this.f6191h, 0, 1, 1, null));
            } else {
                if (this.f6191h.j() == 2) {
                    return null;
                }
                a0Var = new a0(g.y(this.f6191h, 0, 2, 1, null));
            }
        } else {
            if (this.f6191h.j() == 3) {
                return null;
            }
            a0Var = new a0(g.y(this.f6191h, 0, 3, 1, null));
        }
        return a0Var;
    }

    public final a0 j(String str) {
        p4.h.j(str, "child");
        c cVar = new c();
        cVar.F0(str);
        return ee.l.c(this, ee.l.e(cVar, false), false);
    }

    public final File k() {
        return new File(toString());
    }

    @IgnoreJRERequirement
    public final Path l() {
        Path path = Paths.get(toString(), new String[0]);
        p4.h.i(path, "get(toString())");
        return path;
    }

    public final Character m() {
        boolean z10 = false;
        if (g.m(this.f6191h, ee.l.f6795a, 0, 2, null) != -1 || this.f6191h.j() < 2 || this.f6191h.o(1) != ((byte) 58)) {
            return null;
        }
        char cO = (char) this.f6191h.o(0);
        if (!('a' <= cO && cO < '{')) {
            if ('A' <= cO && cO < '[') {
                z10 = true;
            }
            if (!z10) {
                return null;
            }
        }
        return Character.valueOf(cO);
    }

    public final String toString() {
        return this.f6191h.A();
    }
}
