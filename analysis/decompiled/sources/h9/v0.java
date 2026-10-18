package h9;

import android.content.Intent;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class v0 extends a<ShoeControllerActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8364d;

    public v0() {
        this(false, 1, null);
    }

    public v0(boolean z10) {
        super(ShoeControllerActivity.class);
        this.f8363c = true;
        this.f8364d = true;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("extra_unlace_gesture_on", this.f8363c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof v0) && this.f8363c == ((v0) obj).f8363c;
    }

    @Override // h9.a
    public final boolean g() {
        return this.f8364d;
    }

    public final int hashCode() {
        boolean z10 = this.f8363c;
        if (z10) {
            return 1;
        }
        return z10 ? 1 : 0;
    }

    public final String toString() {
        return "ShoeControllerDoNavigate(unlaceGestureOn=" + this.f8363c + ")";
    }

    public v0(boolean z10, int i10, rd.h hVar) {
        super(ShoeControllerActivity.class);
        this.f8363c = false;
        this.f8364d = true;
    }
}
