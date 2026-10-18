package h9;

import android.content.Intent;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class s0 extends a<ShoeControllerActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Shoe f8357c;

    public s0(Shoe shoe) {
        super(ShoeControllerActivity.class);
        this.f8357c = shoe;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("deep_link_action", r7.a.f14654m);
        Shoe shoe = this.f8357c;
        if (shoe != null) {
            intent.putExtra("deep_link_unlace_shoe_side", shoe);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof s0) && this.f8357c == ((s0) obj).f8357c;
    }

    @Override // h9.a
    public final boolean g() {
        return true;
    }

    public final int hashCode() {
        Shoe shoe = this.f8357c;
        if (shoe == null) {
            return 0;
        }
        return shoe.hashCode();
    }

    public final String toString() {
        return "ShoeControllerActivityLoosen(shoe=" + this.f8357c + ")";
    }
}
