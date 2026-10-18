package t2;

import android.util.Log;
import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: DiskLruCacheWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final File f15391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15392c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m2.a f15394e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final c f15393d = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final j f15390a = new j();

    @Deprecated
    public e(File file, long j10) {
        this.f15391b = file;
        this.f15392c = j10;
    }

    @Override // t2.a
    public final File a(p2.f fVar) {
        String strA = this.f15390a.a(fVar);
        if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
            Log.v("DiskLruCacheWrapper", "Get: Obtained: " + strA + " for for Key: " + fVar);
        }
        try {
            m2.a.e eVarJ0 = c().j0(strA);
            if (eVarJ0 != null) {
                return eVarJ0.f10310a[0];
            }
            return null;
        } catch (IOException e10) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e10);
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.HashMap, java.util.Map<java.lang.String, t2.c$a>] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.util.ArrayDeque, java.util.Queue<t2.c$a>] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.HashMap, java.util.Map<java.lang.String, t2.c$a>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // t2.a
    public final void b(p2.f fVar, a.b bVar) {
        c.a aVar;
        String strA = this.f15390a.a(fVar);
        c cVar = this.f15393d;
        synchronized (cVar) {
            aVar = (c.a) cVar.f15383a.get(strA);
            if (aVar == null) {
                c.b bVar2 = cVar.f15384b;
                synchronized (bVar2.f15387a) {
                    aVar = (c.a) bVar2.f15387a.poll();
                }
                if (aVar == null) {
                    aVar = new c.a();
                }
                cVar.f15383a.put(strA, aVar);
            }
            aVar.f15386b++;
        }
        aVar.f15385a.lock();
        try {
            if (Log.isLoggable("DiskLruCacheWrapper", 2)) {
                Log.v("DiskLruCacheWrapper", "Put: Obtained: " + strA + " for for Key: " + fVar);
            }
            try {
                m2.a aVarC = c();
                if (aVarC.j0(strA) == null) {
                    m2.a.c cVarH0 = aVarC.h0(strA);
                    if (cVarH0 == null) {
                        throw new IllegalStateException("Had two simultaneous puts for: " + strA);
                    }
                    try {
                        r2.g gVar = (r2.g) bVar;
                        if (gVar.f14249a.c(gVar.f14250b, cVarH0.b(), gVar.f14251c)) {
                            m2.a.x(m2.a.this, cVarH0, true);
                            cVarH0.f10300c = true;
                        }
                        if (!cVarH0.f10300c) {
                            try {
                                cVarH0.a();
                            } catch (IOException unused) {
                            }
                        }
                    } catch (Throwable th) {
                        if (!cVarH0.f10300c) {
                            try {
                                cVarH0.a();
                            } catch (IOException unused2) {
                            }
                        }
                        throw th;
                    }
                }
            } catch (IOException e10) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e10);
                }
            }
            this.f15393d.a(strA);
        } catch (Throwable th2) {
            this.f15393d.a(strA);
            throw th2;
        }
    }

    public final synchronized m2.a c() throws IOException {
        if (this.f15394e == null) {
            this.f15394e = m2.a.l0(this.f15391b, this.f15392c);
        }
        return this.f15394e;
    }
}
