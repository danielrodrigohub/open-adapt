package h9;

import android.content.Intent;
import com.nike.adapt.ui.modes.ModeRenameActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class z extends a<ModeRenameActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f8371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f8372d;

    public z(String str, String str2) {
        super(ModeRenameActivity.class, true, null);
        this.f8371c = str;
        this.f8372d = str2;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("rename_device_preset_id", this.f8371c);
        intent.putExtra("rename_device_preset_name", this.f8372d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return p4.h.c(this.f8371c, zVar.f8371c) && p4.h.c(this.f8372d, zVar.f8372d);
    }

    public final int hashCode() {
        String str = this.f8371c;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f8372d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return a0.b.a("ModeRenameDoNavigate(modeId=", this.f8371c, ", modeName=", this.f8372d, ")");
    }
}
