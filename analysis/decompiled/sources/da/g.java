package da;

import android.os.Parcelable;
import yd.s;

/* JADX INFO: compiled from: AdaptKitDeviceType.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class g implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f6154h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f6155i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f6156j;

    public g(String str, v9.a aVar) {
        p4.h.j(str, "deviceId");
        p4.h.j(aVar, "adaptIdentifier");
        this.f6154h = str;
        boolean zJ0 = s.j0(str, 'L', true);
        this.f6155i = zJ0;
        this.f6156j = !zJ0;
    }
}
