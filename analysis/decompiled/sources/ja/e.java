package ja;

import android.os.Build;

/* JADX INFO: compiled from: AdaptKitRequirements.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends android.support.v4.media.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9487a = 31;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && this.f9487a == ((e) obj).f9487a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9487a);
    }

    public final String toString() {
        return d1.c.a("RequirementIsNotAvailable currentAndroidApi: ", Build.VERSION.SDK_INT, " minAndroidApi: ", this.f9487a);
    }
}
