package h9;

import android.content.Intent;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class r0 extends a<ShoeControllerActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8354c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Shoe f8355d;

    public r0(int i10, Shoe shoe) {
        super(ShoeControllerActivity.class);
        this.f8354c = i10;
        this.f8355d = shoe;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("deep_link_action", r7.a.f14656o);
        intent.putExtra("deep_link_percent_position", this.f8354c);
        intent.putExtra("deep_link_unlace_shoe_side", this.f8355d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r0)) {
            return false;
        }
        r0 r0Var = (r0) obj;
        return this.f8354c == r0Var.f8354c && this.f8355d == r0Var.f8355d;
    }

    @Override // h9.a
    public final boolean g() {
        return true;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f8354c) * 31;
        Shoe shoe = this.f8355d;
        return iHashCode + (shoe == null ? 0 : shoe.hashCode());
    }

    public final String toString() {
        return "ShoeControllerActivityLaceTo(percent=" + this.f8354c + ", shoe=" + this.f8355d + ")";
    }
}
