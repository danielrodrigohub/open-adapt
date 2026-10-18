package de;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ForwardingFileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class l extends k {
    private final k delegate;

    /* JADX INFO: compiled from: ForwardingFileSystem.kt */
    public static final class a extends rd.o implements qd.l<a0, a0> {
        public a() {
            super(1);
        }

        @Override // qd.l
        public final a0 invoke(a0 a0Var) {
            a0 a0Var2 = a0Var;
            p4.h.j(a0Var2, "it");
            return l.this.onPathResult(a0Var2, "listRecursively");
        }
    }

    public l(k kVar) {
        p4.h.j(kVar, "delegate");
        this.delegate = kVar;
    }

    @Override // de.k
    public h0 appendingSink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        return this.delegate.appendingSink(onPathParameter(a0Var, "appendingSink", "file"), z10);
    }

    @Override // de.k
    public void atomicMove(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        this.delegate.atomicMove(onPathParameter(a0Var, "atomicMove", "source"), onPathParameter(a0Var2, "atomicMove", "target"));
    }

    @Override // de.k
    public a0 canonicalize(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(a0Var, "canonicalize", "path")), "canonicalize");
    }

    @Override // de.k
    public void createDirectory(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "dir");
        this.delegate.createDirectory(onPathParameter(a0Var, "createDirectory", "dir"), z10);
    }

    @Override // de.k
    public void createSymlink(a0 a0Var, a0 a0Var2) throws IOException {
        p4.h.j(a0Var, "source");
        p4.h.j(a0Var2, "target");
        this.delegate.createSymlink(onPathParameter(a0Var, "createSymlink", "source"), onPathParameter(a0Var2, "createSymlink", "target"));
    }

    public final k delegate() {
        return this.delegate;
    }

    @Override // de.k
    public void delete(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "path");
        this.delegate.delete(onPathParameter(a0Var, "delete", "path"), z10);
    }

    @Override // de.k
    public List<a0> list(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "dir");
        List<a0> list = this.delegate.list(onPathParameter(a0Var, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((a0) it.next(), "list"));
        }
        gd.k.U(arrayList);
        return arrayList;
    }

    @Override // de.k
    public List<a0> listOrNull(a0 a0Var) {
        p4.h.j(a0Var, "dir");
        List<a0> listListOrNull = this.delegate.listOrNull(onPathParameter(a0Var, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((a0) it.next(), "listOrNull"));
        }
        gd.k.U(arrayList);
        return arrayList;
    }

    @Override // de.k
    public xd.d<a0> listRecursively(a0 a0Var, boolean z10) {
        p4.h.j(a0Var, "dir");
        return xd.g.m(this.delegate.listRecursively(onPathParameter(a0Var, "listRecursively", "dir"), z10), new a());
    }

    @Override // de.k
    public j metadataOrNull(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "path");
        j jVarMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(a0Var, "metadataOrNull", "path"));
        if (jVarMetadataOrNull == null) {
            return null;
        }
        a0 a0Var2 = jVarMetadataOrNull.f6245c;
        if (a0Var2 == null) {
            return jVarMetadataOrNull;
        }
        a0 a0VarOnPathResult = onPathResult(a0Var2, "metadataOrNull");
        boolean z10 = jVarMetadataOrNull.f6243a;
        boolean z11 = jVarMetadataOrNull.f6244b;
        Long l10 = jVarMetadataOrNull.f6246d;
        Long l11 = jVarMetadataOrNull.f6247e;
        Long l12 = jVarMetadataOrNull.f6248f;
        Long l13 = jVarMetadataOrNull.f6249g;
        Map<wd.b<?>, Object> map = jVarMetadataOrNull.f6250h;
        p4.h.j(map, "extras");
        return new j(z10, z11, a0VarOnPathResult, l10, l11, l12, l13, map);
    }

    public a0 onPathParameter(a0 a0Var, String str, String str2) {
        p4.h.j(a0Var, "path");
        p4.h.j(str, "functionName");
        p4.h.j(str2, "parameterName");
        return a0Var;
    }

    public a0 onPathResult(a0 a0Var, String str) {
        p4.h.j(a0Var, "path");
        p4.h.j(str, "functionName");
        return a0Var;
    }

    @Override // de.k
    public i openReadOnly(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "file");
        return this.delegate.openReadOnly(onPathParameter(a0Var, "openReadOnly", "file"));
    }

    @Override // de.k
    public i openReadWrite(a0 a0Var, boolean z10, boolean z11) throws IOException {
        p4.h.j(a0Var, "file");
        return this.delegate.openReadWrite(onPathParameter(a0Var, "openReadWrite", "file"), z10, z11);
    }

    @Override // de.k
    public h0 sink(a0 a0Var, boolean z10) throws IOException {
        p4.h.j(a0Var, "file");
        return this.delegate.sink(onPathParameter(a0Var, "sink", "file"), z10);
    }

    @Override // de.k
    public j0 source(a0 a0Var) throws IOException {
        p4.h.j(a0Var, "file");
        return this.delegate.source(onPathParameter(a0Var, "source", "file"));
    }

    public String toString() {
        return ((rd.g) rd.x.a(getClass())).a() + '(' + this.delegate + ')';
    }
}
