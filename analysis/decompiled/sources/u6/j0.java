package u6;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: MultimapBuilder.java */
/* JADX INFO: loaded from: classes.dex */
public final class j0<V> implements t6.o<List<V>>, Serializable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15937h;

    public j0(int i10) {
        h.b(i10, "expectedValuesPerKey");
        this.f15937h = i10;
    }

    @Override // t6.o
    public final Object get() {
        return new ArrayList(this.f15937h);
    }
}
