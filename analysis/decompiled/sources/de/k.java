package de;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: FileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k {
    public static final a Companion = new a();
    public static final k RESOURCES;
    public static final k SYSTEM;
    public static final a0 SYSTEM_TEMPORARY_DIRECTORY;

    /* JADX INFO: compiled from: FileSystem.kt */
    public static final class a {
    }

    /* JADX INFO: renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m5write$default(k kVar, a0 a0Var, boolean z10, qd.l lVar, int i10, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        p4.h.j(a0Var, "file");
        p4.h.j(lVar, "writerAction");
        e eVarA = w.a(kVar.sink(a0Var, z10));
        Throwable th = null;
        try {
            objInvoke = lVar.invoke(eVarA);
        } catch (Throwable th2) {
            objInvoke = null;
            th = th2;
        }
        try {
            eVarA.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            } else {
                p4.h.b(th, th3);
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(objInvoke);
        return objInvoke;
    }

    static {
        k uVar;
        try {
            Class.forName("java.nio.file.Files");
            uVar = new v();
        } catch (ClassNotFoundException unused) {
            uVar = new u();
        }
        SYSTEM = uVar;
        a0.a aVar = a0.f6189i;
        String property = System.getProperty("java.io.tmpdir");
        p4.h.i(property, "getProperty(\"java.io.tmpdir\")");
        SYSTEM_TEMPORARY_DIRECTORY = aVar.a(property, false);
        ClassLoader classLoader = ee.d.class.getClassLoader();
        p4.h.i(classLoader, "ResourceFileSystem::class.java.classLoader");
        RESOURCES = new ee.d(classLoader);
    }

    public static /* synthetic */ h0 appendingSink$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return kVar.appendingSink(a0Var, z10);
    }

    public static /* synthetic */ void createDirectories$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        kVar.createDirectories(a0Var, z10);
    }

    public static /* synthetic */ void createDirectory$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        kVar.createDirectory(a0Var, z10);
    }

    public static /* synthetic */ void delete$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        kVar.delete(a0Var, z10);
    }

    public static /* synthetic */ void deleteRecursively$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        kVar.deleteRecursively(a0Var, z10);
    }

    public static /* synthetic */ xd.d listRecursively$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return kVar.listRecursively(a0Var, z10);
    }

    public static /* synthetic */ i openReadWrite$default(k kVar, a0 a0Var, boolean z10, boolean z11, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        return kVar.openReadWrite(a0Var, z10, z11);
    }

    public static /* synthetic */ h0 sink$default(k kVar, a0 a0Var, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return kVar.sink(a0Var, z10);
    }

    /* JADX INFO: renamed from: -read, reason: not valid java name */
    public final <T> T m6read(a0 a0Var, qd.l<? super f, ? extends T> lVar) throws Throwable {
        T tInvoke;
        p4.h.j(a0Var, "file");
        p4.h.j(lVar, "readerAction");
        f fVarB = w.b(source(a0Var));
        Throwable th = null;
        try {
            tInvoke = lVar.invoke(fVarB);
        } catch (Throwable th2) {
            th = th2;
            tInvoke = null;
        }
        try {
            fVarB.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            } else {
                p4.h.b(th, th3);
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(tInvoke);
        return tInvoke;
    }

    /* JADX INFO: renamed from: -write, reason: not valid java name */
    public final <T> T m7write(a0 a0Var, boolean z10, qd.l<? super e, ? extends T> lVar) throws Throwable {
        T tInvoke;
        p4.h.j(a0Var, "file");
        p4.h.j(lVar, "writerAction");
        e eVarA = w.a(sink(a0Var, z10));
        Throwable th = null;
        try {
            tInvoke = lVar.invoke(eVarA);
        } catch (Throwable th2) {
            tInvoke = null;
            th = th2;
        }
        try {
            eVarA.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            } else {
                p4.h.b(th, th3);
            }
        }
        if (th != null) {
            throw th;
        }
        p4.h.g(tInvoke);
        return tInvoke;
    }

    public final h0 appendingSink(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "file");
        return appendingSink(a0Var, false);
    }

    public abstract h0 appendingSink(a0 a0Var, boolean z10) throws IOException;

    public abstract void atomicMove(a0 a0Var, a0 a0Var2) throws IOException;

    public abstract a0 canonicalize(a0 a0Var) throws IOException;

    public void copy(a0 a0Var, a0 a0Var2) throws Throwable {
        Long lValueOf;
        Long lValueOf2;
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        j0 j0VarSource = source(a0Var);
        Throwable th = null;
        try {
            e eVarA = w.a(sink(a0Var2));
            try {
                lValueOf2 = Long.valueOf(((c0) eVarA).s(j0VarSource));
                th = null;
            } catch (Throwable th2) {
                th = th2;
                lValueOf2 = null;
            }
            try {
                ((c0) eVarA).close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    p4.h.b(th, th3);
                }
            }
            if (th != null) {
                throw th;
            }
            p4.h.g(lValueOf2);
            lValueOf = Long.valueOf(lValueOf2.longValue());
            if (j0VarSource != null) {
                try {
                    j0VarSource.close();
                } catch (Throwable th4) {
                    if (th == null) {
                        th = th4;
                    } else {
                        p4.h.b(th, th4);
                    }
                }
            }
            if (th != null) {
                throw th;
            }
            p4.h.g(lValueOf);
        } catch (Throwable th5) {
            th = th5;
            lValueOf = null;
        }
    }

    public final void createDirectories(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "dir");
        gd.f fVar = new gd.f();
        for (a0 a0VarI = a0Var; a0VarI != null && !exists(a0VarI); a0VarI = a0VarI.i()) {
            fVar.m(a0VarI);
        }
        if (z10 && fVar.isEmpty()) {
            throw new IOException(a0Var + " already exist.");
        }
        Iterator<E> it = fVar.iterator();
        while (it.hasNext()) {
            createDirectory((a0) it.next());
        }
    }

    public final void createDirectory(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "dir");
        createDirectory(a0Var, false);
    }

    public abstract void createDirectory(a0 a0Var, boolean z10) throws IOException;

    public abstract void createSymlink(a0 a0Var, a0 a0Var2) throws IOException;

    public final void delete(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        delete(a0Var, false);
    }

    public abstract void delete(a0 a0Var, boolean z10) throws IOException;

    public void deleteRecursively(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "fileOrDirectory");
        Iterator<Object> it = ((xd.h) g7.b.j(new ee.j(this, a0Var, null))).iterator();
        while (true) {
            xd.e eVar = (xd.e) it;
            if (!eVar.hasNext()) {
                return;
            } else {
                delete((a0) eVar.next(), z10 && !eVar.hasNext());
            }
        }
    }

    public final boolean exists(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        return metadataOrNull(a0Var) != null;
    }

    public abstract List<a0> list(a0 a0Var) throws IOException;

    public abstract List<a0> listOrNull(a0 a0Var);

    public final xd.d<a0> listRecursively(a0 a0Var) {
        p4.h.j(a0Var, "dir");
        return listRecursively(a0Var, false);
    }

    public final j metadata(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        j jVarMetadataOrNull = metadataOrNull(a0Var);
        if (jVarMetadataOrNull != null) {
            return jVarMetadataOrNull;
        }
        throw new FileNotFoundException("no such file: " + a0Var);
    }

    public abstract j metadataOrNull(a0 a0Var) throws IOException;

    public abstract i openReadOnly(a0 a0Var) throws IOException;

    public final i openReadWrite(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "file");
        return openReadWrite(a0Var, false, false);
    }

    public abstract i openReadWrite(a0 a0Var, boolean z10, boolean z11) throws IOException;

    public final h0 sink(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "file");
        return sink(a0Var, false);
    }

    public abstract h0 sink(a0 a0Var, boolean z10) throws IOException;

    public abstract j0 source(a0 a0Var) throws IOException;

    public xd.d<a0> listRecursively(a0 a0Var, boolean z10) {
        p4.h.j(a0Var, "dir");
        return g7.b.j(new ee.k(a0Var, this, z10, null));
    }

    public final void deleteRecursively(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "fileOrDirectory");
        deleteRecursively(a0Var, false);
    }

    public final void createDirectories(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "dir");
        createDirectories(a0Var, false);
    }
}
