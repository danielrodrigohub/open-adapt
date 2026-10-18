package r2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: LoadPath.java */
/* JADX INFO: loaded from: classes.dex */
public final class u<Data, ResourceType, Transcode> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i0.e<List<Throwable>> f14382a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<? extends k<Data, ResourceType, Transcode>> f14383b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f14384c;

    public u(Class<Data> cls, Class<ResourceType> cls2, Class<Transcode> cls3, List<k<Data, ResourceType, Transcode>> list, i0.e<List<Throwable>> eVar) {
        this.f14382a = eVar;
        if (list.isEmpty()) {
            throw new IllegalArgumentException("Must not be empty.");
        }
        this.f14383b = list;
        StringBuilder sbC = a0.b.c("Failed LoadPath{");
        sbC.append(cls.getSimpleName());
        sbC.append("->");
        sbC.append(cls2.getSimpleName());
        sbC.append("->");
        sbC.append(cls3.getSimpleName());
        sbC.append("}");
        this.f14384c = sbC.toString();
    }

    public final w<Transcode> a(com.bumptech.glide.load.data.e<Data> eVar, p2.h hVar, int i10, int i11, k.a<ResourceType> aVar) throws r {
        List<Throwable> listB = this.f14382a.b();
        Objects.requireNonNull(listB, "Argument must not be null");
        List<Throwable> list = listB;
        try {
            int size = this.f14383b.size();
            w<Transcode> wVarA = null;
            for (int i12 = 0; i12 < size; i12++) {
                try {
                    wVarA = this.f14383b.get(i12).a(eVar, i10, i11, hVar, aVar);
                } catch (r e10) {
                    list.add(e10);
                }
                if (wVarA != null) {
                    break;
                }
            }
            if (wVarA == null) {
                throw new r(this.f14384c, new ArrayList(list));
            }
            this.f14382a.a(list);
            return wVarA;
        } catch (Throwable th) {
            this.f14382a.a(list);
            throw th;
        }
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("LoadPath{decodePaths=");
        sbC.append(Arrays.toString(this.f14383b.toArray()));
        sbC.append('}');
        return sbC.toString();
    }
}
