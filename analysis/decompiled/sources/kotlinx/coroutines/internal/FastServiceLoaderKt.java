package kotlinx.coroutines.internal;

import d3.e;
import fd.f;

/* JADX INFO: compiled from: FastServiceLoader.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FastServiceLoaderKt {
    private static final boolean ANDROID_DETECTED;

    static {
        Object objG;
        try {
            objG = Class.forName("android.os.Build");
        } catch (Throwable th) {
            objG = e.g(th);
        }
        ANDROID_DETECTED = !(objG instanceof f.a);
    }

    public static final boolean getANDROID_DETECTED() {
        return ANDROID_DETECTED;
    }
}
