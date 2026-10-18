package ee;

import de.a0;
import de.h0;
import de.j0;
import gd.n;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: ResourceFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d extends de.k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f6752b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public static final a0 f6753c = a0.f6189i.a("/", false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final fd.h f6754a;

    /* JADX INFO: compiled from: ResourceFileSystem.kt */
    public static final class a {
        public static final boolean a(a0 a0Var) {
            de.g gVarY;
            a aVar = d.f6752b;
            int iA = l.a(a0Var);
            if (iA != -1) {
                gVarY = de.g.y(a0Var.f6191h, iA + 1, 0, 2, null);
            } else {
                gVarY = (a0Var.m() == null || a0Var.f6191h.j() != 2) ? a0Var.f6191h : de.g.f6228l;
            }
            return !o.Y(gVarY.A(), ".class", true);
        }

        public final a0 b(a0 a0Var, a0 a0Var2) {
            p4.h.j(a0Var, "<this>");
            return d.f6753c.j(o.e0(s.w0(a0Var.toString(), a0Var2.toString()), '\\', '/'));
        }
    }

    public d(ClassLoader classLoader) {
        this.f6754a = (fd.h) androidx.lifecycle.o.x(new e(classLoader));
    }

    public final List<fd.e<de.k, a0>> a() {
        return (List) this.f6754a.getValue();
    }

    @Override // de.k
    public final h0 appendingSink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // de.k
    public final void atomicMove(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        throw new IOException(this + " is read-only");
    }

    public final String b(a0 a0Var) throws EOFException {
        a0 a0VarE;
        a0 a0Var2 = f6753c;
        Objects.requireNonNull(a0Var2);
        p4.h.j(a0Var, "child");
        a0 a0VarC = l.c(a0Var2, a0Var, true);
        p4.h.j(a0Var2, "other");
        if (!p4.h.c(a0VarC.b(), a0Var2.b())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + a0VarC + " and " + a0Var2).toString());
        }
        ArrayList arrayList = (ArrayList) a0VarC.g();
        ArrayList arrayList2 = (ArrayList) a0Var2.g();
        int iMin = Math.min(arrayList.size(), arrayList2.size());
        int i10 = 0;
        while (i10 < iMin && p4.h.c(arrayList.get(i10), arrayList2.get(i10))) {
            i10++;
        }
        if (i10 == iMin && a0VarC.f6191h.j() == a0Var2.f6191h.j()) {
            a0VarE = a0.f6189i.a(".", false);
        } else {
            if (!(arrayList2.subList(i10, arrayList2.size()).indexOf(l.f6799e) == -1)) {
                throw new IllegalArgumentException(("Impossible relative path to resolve: " + a0VarC + " and " + a0Var2).toString());
            }
            de.c cVar = new de.c();
            de.g gVarD = l.d(a0Var2);
            if (gVarD == null && (gVarD = l.d(a0VarC)) == null) {
                gVarD = l.g(a0.f6190j);
            }
            int size = arrayList2.size();
            for (int i11 = i10; i11 < size; i11++) {
                cVar.u0(l.f6799e);
                cVar.u0(gVarD);
            }
            int size2 = arrayList.size();
            while (i10 < size2) {
                cVar.u0((de.g) arrayList.get(i10));
                cVar.u0(gVarD);
                i10++;
            }
            a0VarE = l.e(cVar, false);
        }
        return a0VarE.toString();
    }

    @Override // de.k
    public final a0 canonicalize(a0 a0Var) {
        p4.h.j(a0Var, "path");
        a0 a0Var2 = f6753c;
        Objects.requireNonNull(a0Var2);
        return l.c(a0Var2, a0Var, true);
    }

    @Override // de.k
    public final void createDirectory(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // de.k
    public final void createSymlink(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // de.k
    public final void delete(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // de.k
    public final List<a0> list(a0 a0Var) throws EOFException, FileNotFoundException {
        p4.h.j(a0Var, "dir");
        String strB = b(a0Var);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z10 = false;
        for (fd.e<de.k, a0> eVar : a()) {
            de.k kVar = eVar.f7388h;
            a0 a0Var2 = eVar.f7389i;
            try {
                List<a0> list = kVar.list(a0Var2.j(strB));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (a.a((a0) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(gd.j.T(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(f6752b.b((a0) it.next(), a0Var2));
                }
                gd.l.X(linkedHashSet, arrayList2);
                z10 = true;
            } catch (IOException unused) {
            }
        }
        if (z10) {
            return n.l0(linkedHashSet);
        }
        throw new FileNotFoundException("file not found: " + a0Var);
    }

    @Override // de.k
    public final List<a0> listOrNull(a0 a0Var) throws EOFException {
        p4.h.j(a0Var, "dir");
        String strB = b(a0Var);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<fd.e<de.k, a0>> it = a().iterator();
        boolean z10 = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            fd.e<de.k, a0> next = it.next();
            de.k kVar = next.f7388h;
            a0 a0Var2 = next.f7389i;
            List<a0> listListOrNull = kVar.listOrNull(a0Var2.j(strB));
            if (listListOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listListOrNull) {
                    if (a.a((a0) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(gd.j.T(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(f6752b.b((a0) it2.next(), a0Var2));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                gd.l.X(linkedHashSet, arrayList);
                z10 = true;
            }
        }
        if (z10) {
            return n.l0(linkedHashSet);
        }
        return null;
    }

    @Override // de.k
    public final de.j metadataOrNull(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        if (!a.a(a0Var)) {
            return null;
        }
        String strB = b(a0Var);
        for (fd.e<de.k, a0> eVar : a()) {
            de.j jVarMetadataOrNull = eVar.f7388h.metadataOrNull(eVar.f7389i.j(strB));
            if (jVarMetadataOrNull != null) {
                return jVarMetadataOrNull;
            }
        }
        return null;
    }

    @Override // de.k
    public final de.i openReadOnly(a0 a0Var) throws EOFException, FileNotFoundException {
        p4.h.j(a0Var, "file");
        if (!a.a(a0Var)) {
            throw new FileNotFoundException("file not found: " + a0Var);
        }
        String strB = b(a0Var);
        for (fd.e<de.k, a0> eVar : a()) {
            try {
                return eVar.f7388h.openReadOnly(eVar.f7389i.j(strB));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + a0Var);
    }

    @Override // de.k
    public final de.i openReadWrite(a0 a0Var, boolean z10, boolean z11) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException("resources are not writable");
    }

    @Override // de.k
    public final h0 sink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // de.k
    public final j0 source(a0 a0Var) throws EOFException, FileNotFoundException {
        p4.h.j(a0Var, "file");
        if (!a.a(a0Var)) {
            throw new FileNotFoundException("file not found: " + a0Var);
        }
        String strB = b(a0Var);
        for (fd.e<de.k, a0> eVar : a()) {
            try {
                return eVar.f7388h.source(eVar.f7389i.j(strB));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + a0Var);
    }
}
