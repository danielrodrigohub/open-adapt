package h9;

import android.content.Intent;
import com.nike.adapt.ui.PairingActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends a<PairingActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8317c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8318d;

    public c0() {
        this(false, false, 3, null);
    }

    public c0(boolean z10, boolean z11) {
        super(PairingActivity.class, true, null);
        this.f8317c = true;
        this.f8318d = true;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("extra_is_deep_link", this.f8317c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c0)) {
            return false;
        }
        c0 c0Var = (c0) obj;
        return this.f8317c == c0Var.f8317c && this.f8318d == c0Var.f8318d;
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
        boolean z10 = this.f8317c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        boolean z11 = this.f8318d;
        return i10 + (z11 ? 1 : z11);
    }

    public final String toString() {
        return "PairingActivityDoNavigate(isDeepLink=" + this.f8317c + ", startWithResults=" + this.f8318d + ")";
    }

    public c0(boolean z10, boolean z11, int i10, rd.h hVar) {
        super(PairingActivity.class, false, null);
        this.f8317c = false;
        this.f8318d = false;
    }
}
