package ja;

import android.os.Build;

/* JADX INFO: compiled from: AdaptKitRequirements.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends android.support.v4.media.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f9488a = 30;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && this.f9488a == ((f) obj).f9488a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f9488a);
    }

    public final String toString() {
        return d1.c.a("RequirementIsObsolete currentAndroidApi: ", Build.VERSION.SDK_INT, " maxAndroidApi: ", this.f9488a);
    }
}
