package u7;

import com.nike.adapt.migration.oldbigfoot.BigfootPairedDevices;
import java.util.Comparator;

/* JADX INFO: compiled from: Comparisons.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c<T> implements Comparator {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(T t10, T t11) {
        return hd.a.b(Boolean.valueOf(((BigfootPairedDevices) t10).isDefault()), Boolean.valueOf(((BigfootPairedDevices) t11).isDefault()));
    }
}
