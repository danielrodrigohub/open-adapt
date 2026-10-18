package ea;

import android.os.Parcelable;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitPairedDevicesResult.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class p implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v9.a f6682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<m> f6683i;

    public p(v9.a aVar, List list, rd.h hVar) {
        this.f6682h = aVar;
        this.f6683i = list;
    }

    public v9.a a() {
        return this.f6682h;
    }

    public List<m> b() {
        return this.f6683i;
    }
}
