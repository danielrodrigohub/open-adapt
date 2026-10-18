package g7;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumSet;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements q<Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Type f7803h;

    public g(Type type) {
        this.f7803h = type;
    }

    @Override // g7.q
    public final Object construct() {
        Type type = this.f7803h;
        if (!(type instanceof ParameterizedType)) {
            StringBuilder sbC = a0.b.c("Invalid EnumSet type: ");
            sbC.append(this.f7803h.toString());
            throw new e7.m(sbC.toString());
        }
        Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
        if (type2 instanceof Class) {
            return EnumSet.noneOf((Class) type2);
        }
        StringBuilder sbC2 = a0.b.c("Invalid EnumSet type: ");
        sbC2.append(this.f7803h.toString());
        throw new e7.m(sbC2.toString());
    }
}
