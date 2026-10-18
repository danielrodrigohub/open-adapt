package okhttp3.internal.graal;

import com.oracle.svm.core.annotate.Substitute;
import com.oracle.svm.core.annotate.TargetClass;
import okhttp3.internal.platform.Jdk9Platform;
import okhttp3.internal.platform.Platform;
import p4.h;

/* JADX INFO: compiled from: svm.kt */
/* JADX INFO: loaded from: classes2.dex */
@TargetClass(Platform.Companion.class)
public final class TargetPlatform {
    @Substitute
    public final Platform findPlatform() {
        Jdk9Platform jdk9PlatformBuildIfSupported = Jdk9Platform.Companion.buildIfSupported();
        h.g(jdk9PlatformBuildIfSupported);
        return jdk9PlatformBuildIfSupported;
    }
}
