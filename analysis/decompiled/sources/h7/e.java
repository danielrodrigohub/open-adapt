package h7;

import e7.w;
import e7.x;
import e7.y;

/* JADX INFO: compiled from: JsonAdapterAnnotationTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements y {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final g7.e f8200h;

    public e(g7.e eVar) {
        this.f8200h = eVar;
    }

    @Override // e7.y
    public final <T> x<T> a(e7.h hVar, l7.a<T> aVar) {
        f7.a aVar2 = (f7.a) aVar.f10167a.getAnnotation(f7.a.class);
        if (aVar2 == null) {
            return null;
        }
        return (x<T>) b(this.f8200h, hVar, aVar, aVar2);
    }

    public final x<?> b(g7.e eVar, e7.h hVar, l7.a<?> aVar, f7.a aVar2) {
        x<?> oVar;
        Object objConstruct = eVar.a(new l7.a(aVar2.value())).construct();
        if (objConstruct instanceof x) {
            oVar = (x) objConstruct;
        } else if (objConstruct instanceof y) {
            oVar = ((y) objConstruct).a(hVar, aVar);
        } else {
            boolean z10 = objConstruct instanceof e7.r;
            if (!z10 && !(objConstruct instanceof e7.k)) {
                StringBuilder sbC = a0.b.c("Invalid attempt to bind an instance of ");
                sbC.append(objConstruct.getClass().getName());
                sbC.append(" as a @JsonAdapter for ");
                sbC.append(aVar.toString());
                sbC.append(". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer.");
                throw new IllegalArgumentException(sbC.toString());
            }
            oVar = new o<>(z10 ? (e7.r) objConstruct : null, objConstruct instanceof e7.k ? (e7.k) objConstruct : null, hVar, aVar);
        }
        return (oVar == null || !aVar2.nullSafe()) ? oVar : new w(oVar);
    }
}
