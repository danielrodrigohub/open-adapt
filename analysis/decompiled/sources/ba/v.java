package ba;

import android.os.Parcelable;

/* JADX INFO: compiled from: FitCalibrateState.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class v implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f3740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f3741i;

    public v(int i10) {
        this.f3740h = i10;
        this.f3741i = (this instanceof l0) || (this instanceof y) || (this instanceof p) || (this instanceof q);
    }

    public int a() {
        return this.f3740h;
    }

    public abstract String b();
}
