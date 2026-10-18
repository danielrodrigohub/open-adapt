package h9;

import com.nike.adapt.R;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n extends a<FirmwareUpdateActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8343c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8344d;

    /* JADX WARN: Illegal instructions before constructor call */
    public n() {
        boolean z10 = false;
        this(z10, z10, 3, null);
    }

    public n(boolean z10, boolean z11) {
        super(FirmwareUpdateActivity.class);
        this.f8343c = z10;
        this.f8344d = z11;
    }

    @Override // f8.b
    public final int b() {
        return this.f8344d ? R.anim.fade_in : R.anim.enter_top_right_to_left;
    }

    @Override // f8.b
    public final int c() {
        return this.f8344d ? R.anim.fade_in : R.anim.exit_bottom_parallax_right_to_left;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f8343c == nVar.f8343c && this.f8344d == nVar.f8344d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v2 */
    public final int hashCode() {
        boolean z10 = this.f8343c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        boolean z11 = this.f8344d;
        return i10 + (z11 ? 1 : z11);
    }

    public final String toString() {
        return "FirmwareUpdateDoNavigate(isUserInitiated=" + this.f8343c + ", animate=" + this.f8344d + ")";
    }

    public /* synthetic */ n(boolean z10, boolean z11, int i10, rd.h hVar) {
        this(false, false);
    }
}
