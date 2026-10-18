package de;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: JvmSystemFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public class u extends k {
    public final List<a0> a(a0 a0Var, boolean z10) throws IOException {
        File fileK = a0Var.k();
        String[] list = fileK.list();
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                p4.h.i(str, "it");
                arrayList.add(a0Var.j(str));
            }
            gd.k.U(arrayList);
            return arrayList;
        }
        if (!z10) {
            return null;
        }
        if (fileK.exists()) {
            throw new IOException("failed to list " + a0Var);
        }
        throw new FileNotFoundException("no such file: " + a0Var);
    }

    @Override // de.k
    public final h0 appendingSink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        if (z10) {
            c(a0Var);
        }
        return w.d(a0Var.k(), true);
    }

    @Override // de.k
    public void atomicMove(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        if (a0Var.k().renameTo(a0Var2.k())) {
            return;
        }
        throw new IOException("failed to move " + a0Var + " to " + a0Var2);
    }

    public final void b(a0 a0Var) throws IOException {
        if (exists(a0Var)) {
            throw new IOException(a0Var + " already exists.");
        }
    }

    public final void c(a0 a0Var) throws IOException {
        if (exists(a0Var)) {
            return;
        }
        throw new IOException(a0Var + " doesn't exist.");
    }

    @Override // de.k
    public final a0 canonicalize(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        File canonicalFile = a0Var.k().getCanonicalFile();
        if (!canonicalFile.exists()) {
            throw new FileNotFoundException("no such file");
        }
        a0.a aVar = a0.f6189i;
        return a0.a.b(canonicalFile);
    }

    @Override // de.k
    public final void createDirectory(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "dir");
        if (a0Var.k().mkdir()) {
            return;
        }
        j jVarMetadataOrNull = metadataOrNull(a0Var);
        if (!(jVarMetadataOrNull != null && jVarMetadataOrNull.f6244b)) {
            throw new IOException("failed to create directory: " + a0Var);
        }
        if (z10) {
            throw new IOException(a0Var + " already exist.");
        }
    }

    @Override // de.k
    public void createSymlink(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        throw new IOException("unsupported");
    }

    @Override // de.k
    public final void delete(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "path");
        File fileK = a0Var.k();
        if (fileK.delete()) {
            return;
        }
        if (fileK.exists()) {
            throw new IOException("failed to delete " + a0Var);
        }
        if (z10) {
            throw new FileNotFoundException("no such file: " + a0Var);
        }
    }

    @Override // de.k
    public final List<a0> list(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "dir");
        List<a0> listA = a(a0Var, true);
        p4.h.g(listA);
        return listA;
    }

    @Override // de.k
    public final List<a0> listOrNull(a0 a0Var) {
        p4.h.j(a0Var, "dir");
        return a(a0Var, false);
    }

    @Override // de.k
    public j metadataOrNull(a0 a0Var) {
        p4.h.j(a0Var, "path");
        File fileK = a0Var.k();
        boolean zIsFile = fileK.isFile();
        boolean zIsDirectory = fileK.isDirectory();
        long jLastModified = fileK.lastModified();
        long length = fileK.length();
        if (zIsFile || zIsDirectory || jLastModified != 0 || length != 0 || fileK.exists()) {
            return new j(zIsFile, zIsDirectory, null, Long.valueOf(length), null, Long.valueOf(jLastModified), null);
        }
        return null;
    }

    @Override // de.k
    public final i openReadOnly(a0 a0Var) {
        p4.h.j(a0Var, "file");
        return new t(false, new RandomAccessFile(a0Var.k(), "r"));
    }

    @Override // de.k
    public final i openReadWrite(a0 a0Var, boolean z10, boolean z11) throws IOException {
        p4.h.j(a0Var, "file");
        if (!((z10 && z11) ? false : true)) {
            throw new IllegalArgumentException("Cannot require mustCreate and mustExist at the same time.".toString());
        }
        if (z10) {
            b(a0Var);
        }
        if (z11) {
            c(a0Var);
        }
        return new t(true, new RandomAccessFile(a0Var.k(), "rw"));
    }

    @Override // de.k
    public final h0 sink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        if (z10) {
            b(a0Var);
        }
        File fileK = a0Var.k();
        Logger logger = x.f6278a;
        return w.d(fileK, false);
    }

    @Override // de.k
    public final j0 source(a0 a0Var) {
        p4.h.j(a0Var, "file");
        File fileK = a0Var.k();
        Logger logger = x.f6278a;
        return new s(new FileInputStream(fileK), k0.NONE);
    }

    public String toString() {
        return "JvmSystemFileSystem";
    }
}
