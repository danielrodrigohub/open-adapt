package h9;

import android.content.Intent;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends a<GesturesTutorialActivity> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f8350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f8351d;

    public q() {
        this(false, 3);
    }

    public q(boolean z10) {
        super(GesturesTutorialActivity.class, true, null);
        this.f8350c = true;
        this.f8351d = z10;
    }

    @Override // f8.b
    public final void a(Intent intent) {
        intent.putExtra("extra_gesture_tutorial_accessed_from_intro", this.f8350c);
        intent.putExtra("PREVIOUS_GESTURE_DOUBLE_TAP_STATE", this.f8351d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        return this.f8350c == qVar.f8350c && this.f8351d == qVar.f8351d;
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
        boolean z10 = this.f8350c;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int i10 = r10 * 31;
        boolean z11 = this.f8351d;
        return i10 + (z11 ? 1 : z11);
    }

    public final String toString() {
        return "GesturesTutorialDoNavigate(accessedFromIntro=" + this.f8350c + ", isDoubleTabGestureEnabled=" + this.f8351d + ")";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(boolean z10, int i10) {
        super(GesturesTutorialActivity.class, true, null);
        z10 = (i10 & 2) != 0 ? true : z10;
        this.f8350c = false;
        this.f8351d = z10;
    }
}
