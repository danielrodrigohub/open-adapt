package h9;

import android.content.Intent;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.ui.lighting.LightingActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q0 extends a<LightingActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AdaptMarshaller.AdaptPreset f8352c;

    public q0(AdaptMarshaller.AdaptPreset adaptPreset) {
        super(LightingActivity.class);
        this.f8352c = adaptPreset;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        AdaptShoeColor adaptShoeColorCreate$default;
        AdaptMarshaller.AdaptPreset adaptPreset = this.f8352c;
        if (adaptPreset != null) {
            adaptShoeColorCreate$default = new AdaptShoeColor(adaptPreset, adaptPreset, null, 4, null);
        } else {
            adaptShoeColorCreate$default = AdaptShoeColor.Companion.create$default(AdaptShoeColor.Companion, ShoeColor.Companion.valueOf(h8.c.f8298b.S()).getNext(s9.g.f15195a.d()), null, 2, null);
        }
        intent.putExtra("deep_link_unlace_shoe_side", Shoe.BOTH);
        intent.putExtra("deep_link_change_lights_color", adaptShoeColorCreate$default);
        intent.putExtra("deep_link_action", r7.a.f14653l);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof q0) && this.f8352c == ((q0) obj).f8352c;
    }

    @Override // h9.a
    public final boolean g() {
        return true;
    }

    public final int hashCode() {
        AdaptMarshaller.AdaptPreset adaptPreset = this.f8352c;
        if (adaptPreset == null) {
            return 0;
        }
        return adaptPreset.hashCode();
    }

    public final String toString() {
        return "ShoeControllerActivityChangeLights(color=" + this.f8352c + ")";
    }
}
