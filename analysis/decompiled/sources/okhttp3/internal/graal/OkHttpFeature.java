package okhttp3.internal.graal;

import com.oracle.svm.core.annotate.AutomaticFeature;
import com.oracle.svm.core.configure.ResourcesRegistry;
import org.graalvm.nativeimage.ImageSingletons;
import org.graalvm.nativeimage.hosted.Feature;

/* JADX INFO: compiled from: OkHttpFeature.kt */
/* JADX INFO: loaded from: classes2.dex */
@AutomaticFeature
public final class OkHttpFeature implements Feature {
    public void beforeAnalysis(Feature.BeforeAnalysisAccess beforeAnalysisAccess) {
        ((ResourcesRegistry) ImageSingletons.lookup(ResourcesRegistry.class)).addResources("\\Qokhttp3/internal/publicsuffix/PublicSuffixDatabase.gz\\E");
    }
}
