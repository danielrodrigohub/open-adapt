package u7;

import com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices;
import java.util.Comparator;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d<T> implements Comparator {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Comparator f16026h;

    public d(Comparator comparator) {
        this.f16026h = comparator;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t10, T t11) {
        int iCompare = this.f16026h.compare(t10, t11);
        return iCompare != 0 ? iCompare : hd.a.b(Long.valueOf(((BigfootPairedDevices) t10).getLocalUpdatedMillis()), Long.valueOf(((BigfootPairedDevices) t11).getLocalUpdatedMillis()));
    }
}
