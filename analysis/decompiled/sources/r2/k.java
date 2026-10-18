package r2;

import android.util.Log;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: DecodePath.java */
/* JADX INFO: loaded from: classes.dex */
public final class k<DataType, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<DataType> f14297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<? extends p2.j<DataType, ResourceType>> f14298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d3.c<ResourceType, Transcode> f14299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final i0.e<List<Throwable>> f14300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f14301e;

    /* JADX INFO: compiled from: DecodePath.java */
    public interface a<ResourceType> {
    }

    public k(Class<DataType> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<? extends p2.j<DataType, ResourceType>> list, d3.c<ResourceType, Transcode> cVar, i0.e<List<Throwable>> eVar) {
        this.f14297a = cls;
        this.f14298b = list;
        this.f14299c = cVar;
        this.f14300d = eVar;
        StringBuilder sbC = a0.b.c("Failed DecodePath{");
        sbC.append(cls.getSimpleName());
        sbC.append("->");
        sbC.append(cls2.getSimpleName());
        sbC.append("->");
        sbC.append(cls3.getSimpleName());
        sbC.append("}");
        this.f14301e = sbC.toString();
    }

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
    public final w<Transcode> a(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, p2.h hVar, a<ResourceType> aVar) throws r {
        w<ResourceType> wVarB;
        p2.l lVar;
        p2.c cVarD;
        p2.f fVar;
        List<Throwable> listB = this.f14300d.b();
        Objects.requireNonNull(listB, "Argument must not be null");
        List<Throwable> list = listB;
        try {
            w<ResourceType> wVarB2 = b(eVar, i10, i11, hVar, list);
            this.f14300d.a(list);
            j.b bVar = (j.b) aVar;
            j jVar = j.this;
            p2.a aVar2 = bVar.f14289a;
            Objects.requireNonNull(jVar);
            Class<?> cls = wVarB2.get().getClass();
            p2.k kVarA = null;
            if (aVar2 != p2.a.RESOURCE_DISK_CACHE) {
                p2.l lVarG = jVar.f14270h.g(cls);
                lVar = lVarG;
                wVarB = lVarG.b(jVar.f14277o, wVarB2, jVar.f14281s, jVar.f14282t);
            } else {
                wVarB = wVarB2;
                lVar = null;
            }
            if (!wVarB2.equals(wVarB)) {
                wVarB2.c();
            }
            boolean z10 = false;
            if (jVar.f14270h.f14254c.f4446b.f4465d.a(wVarB.b()) != null) {
                kVarA = jVar.f14270h.f14254c.f4446b.f4465d.a(wVarB.b());
                if (kVarA == null) {
                    throw new com.bumptech.glide.h.d(wVarB.b());
                }
                cVarD = kVarA.d(jVar.f14284v);
            } else {
                cVarD = p2.c.NONE;
            }
            p2.k kVar = kVarA;
            i<R> iVar = jVar.f14270h;
            p2.f fVar2 = jVar.E;
            ArrayList arrayList = (ArrayList) iVar.c();
            int size = arrayList.size();
            for (int i12 = 0; i12 < size; i12++) {
                if (((v2.n.a) arrayList.get(i12)).f16174a.equals(fVar2)) {
                    z10 = true;
                    break;
                }
            }
            Object obj = wVarB;
            if (jVar.f14283u.d(!z10, aVar2, cVarD)) {
                if (kVar == null) {
                    throw new com.bumptech.glide.h.d(wVarB.get().getClass());
                }
                int iOrdinal = cVarD.ordinal();
                if (iOrdinal == 0) {
                    fVar = new f(jVar.E, jVar.f14278p);
                } else {
                    if (iOrdinal != 1) {
                        throw new IllegalArgumentException("Unknown strategy: " + cVarD);
                    }
                    fVar = new y(jVar.f14270h.f14254c.f4445a, jVar.E, jVar.f14278p, jVar.f14281s, jVar.f14282t, lVar, cls, jVar.f14284v);
                }
                v<Z> vVarD = v.d(wVarB);
                j.c<?> cVar = jVar.f14275m;
                cVar.f14291a = fVar;
                cVar.f14292b = kVar;
                cVar.f14293c = vVarD;
                obj = vVarD;
            }
            return this.f14299c.b(obj, hVar);
        } catch (Throwable th) {
            this.f14300d.a(list);
            throw th;
        }
    }

    public final w<ResourceType> b(com.bumptech.glide.load.data.e<DataType> eVar, int i10, int i11, p2.h hVar, List<Throwable> list) throws r {
        int size = this.f14298b.size();
        w<ResourceType> wVarB = null;
        for (int i12 = 0; i12 < size; i12++) {
            p2.j<DataType, ResourceType> jVar = this.f14298b.get(i12);
            try {
                if (jVar.a(eVar.a(), hVar)) {
                    wVarB = jVar.b(eVar.a(), i10, i11, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e10) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + jVar, e10);
                }
                list.add(e10);
            }
            if (wVarB != null) {
                break;
            }
        }
        if (wVarB != null) {
            return wVarB;
        }
        throw new r(this.f14301e, new ArrayList(list));
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("DecodePath{ dataClass=");
        sbC.append(this.f14297a);
        sbC.append(", decoders=");
        sbC.append(this.f14298b);
        sbC.append(", transcoder=");
        sbC.append(this.f14299c);
        sbC.append('}');
        return sbC.toString();
    }
}
