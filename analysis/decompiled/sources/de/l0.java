package de;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: ZipFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class l0 extends k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    public static final a0 f6252d = a0.f6189i.a("/", false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a0 f6253a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f6254b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<a0, ee.f> f6255c;

    public l0(a0 a0Var, k kVar, Map map) {
        this.f6253a = a0Var;
        this.f6254b = kVar;
        this.f6255c = map;
    }

    public final a0 a(a0 a0Var) {
        a0 a0Var2 = f6252d;
        Objects.requireNonNull(a0Var2);
        p4.h.j(a0Var, "child");
        return ee.l.c(a0Var2, a0Var, true);
    }

    @Override // de.k
    public final h0 appendingSink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // de.k
    public final void atomicMove(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        throw new IOException("zip file systems are read-only");
    }

    public final List<a0> b(a0 a0Var, boolean z10) throws IOException {
        ee.f fVar = this.f6255c.get(a(a0Var));
        if (fVar != null) {
            return gd.n.l0(fVar.f6763h);
        }
        if (!z10) {
            return null;
        }
        throw new IOException("not a directory: " + a0Var);
    }

    @Override // de.k
    public final a0 canonicalize(a0 a0Var) throws FileNotFoundException {
        p4.h.j(a0Var, "path");
        a0 a0VarA = a(a0Var);
        if (this.f6255c.containsKey(a0VarA)) {
            return a0VarA;
        }
        throw new FileNotFoundException(String.valueOf(a0Var));
    }

    @Override // de.k
    public final void createDirectory(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // de.k
    public final void createSymlink(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // de.k
    public final void delete(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // de.k
    public final List<a0> list(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "dir");
        List<a0> listB = b(a0Var, true);
        p4.h.g(listB);
        return listB;
    }

    @Override // de.k
    public final List<a0> listOrNull(a0 a0Var) {
        p4.h.j(a0Var, "dir");
        return b(a0Var, false);
    }

    @Override // de.k
    public final j metadataOrNull(a0 a0Var) throws Throwable {
        f fVarB;
        p4.h.j(a0Var, "path");
        ee.f fVar = this.f6255c.get(a(a0Var));
        Throwable th = null;
        if (fVar == null) {
            return null;
        }
        boolean z10 = fVar.f6757b;
        j jVar = new j(!z10, z10, null, z10 ? null : Long.valueOf(fVar.f6759d), null, fVar.f6761f, null);
        if (fVar.f6762g == -1) {
            return jVar;
        }
        i iVarOpenReadOnly = this.f6254b.openReadOnly(this.f6253a);
        try {
            fVarB = w.b(iVarOpenReadOnly.h0(fVar.f6762g));
        } catch (Throwable th2) {
            th = th2;
            fVarB = null;
        }
        if (iVarOpenReadOnly != null) {
            try {
                iVarOpenReadOnly.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    p4.h.b(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(fVarB);
        j jVarE = ee.g.e(fVarB, jVar);
        p4.h.g(jVarE);
        return jVarE;
    }

    @Override // de.k
    public final i openReadOnly(a0 a0Var) {
        p4.h.j(a0Var, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // de.k
    public final i openReadWrite(a0 a0Var, boolean z10, boolean z11) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // de.k
    public final h0 sink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // de.k
    public final j0 source(a0 a0Var) throws Throwable {
        f fVarB;
        p4.h.j(a0Var, "file");
        ee.f fVar = this.f6255c.get(a(a0Var));
        if (fVar == null) {
            throw new FileNotFoundException("no such file: " + a0Var);
        }
        i iVarOpenReadOnly = this.f6254b.openReadOnly(this.f6253a);
        try {
            fVarB = w.b(iVarOpenReadOnly.h0(fVar.f6762g));
            th = null;
        } catch (Throwable th) {
            th = th;
            fVarB = null;
        }
        if (iVarOpenReadOnly != null) {
            try {
                iVarOpenReadOnly.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                } else {
                    p4.h.b(th, th2);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(fVarB);
        ee.g.e(fVarB, null);
        return fVar.f6760e == 0 ? new ee.b(fVarB, fVar.f6759d, true) : new ee.b(new r(new ee.b(fVarB, fVar.f6758c, true), new Inflater(true)), fVar.f6759d, false);
    }
}
