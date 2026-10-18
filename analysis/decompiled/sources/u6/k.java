package u6;

import java.util.Map;

/* JADX INFO: compiled from: CompactHashMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class k extends m<Object, Object>.b<Map.Entry<Object, Object>> {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ m f15938l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(m mVar) {
        super();
        this.f15938l = mVar;
    }

    @Override // u6.m.b
    public final Map.Entry<Object, Object> a(int i10) {
        return new m.d(i10);
    }
}
