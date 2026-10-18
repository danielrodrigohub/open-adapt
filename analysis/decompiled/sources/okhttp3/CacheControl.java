package okhttp3;

import androidx.appcompat.widget.e0;
import java.util.concurrent.TimeUnit;
import okhttp3.internal._CacheControlCommonKt;
import p4.h;
import zd.c;

/* JADX INFO: compiled from: CacheControl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CacheControl {
    public static final Companion Companion;
    public static final CacheControl FORCE_CACHE;
    public static final CacheControl FORCE_NETWORK;
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    /* JADX INFO: compiled from: CacheControl.kt */
    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        public final CacheControl build() {
            return _CacheControlCommonKt.commonBuild(this);
        }

        public final boolean getImmutable$okhttp() {
            return this.immutable;
        }

        public final int getMaxAgeSeconds$okhttp() {
            return this.maxAgeSeconds;
        }

        public final int getMaxStaleSeconds$okhttp() {
            return this.maxStaleSeconds;
        }

        public final int getMinFreshSeconds$okhttp() {
            return this.minFreshSeconds;
        }

        public final boolean getNoCache$okhttp() {
            return this.noCache;
        }

        public final boolean getNoStore$okhttp() {
            return this.noStore;
        }

        public final boolean getNoTransform$okhttp() {
            return this.noTransform;
        }

        public final boolean getOnlyIfCached$okhttp() {
            return this.onlyIfCached;
        }

        public final Builder immutable() {
            return _CacheControlCommonKt.commonImmutable(this);
        }

        public final Builder maxAge(int i10, c cVar) {
            h.j(cVar, "timeUnit");
            return maxAge(i10, toJavaTimeUnit$okhttp(cVar));
        }

        public final Builder maxStale(int i10, c cVar) {
            h.j(cVar, "timeUnit");
            return maxStale(i10, toJavaTimeUnit$okhttp(cVar));
        }

        public final Builder minFresh(int i10, c cVar) {
            h.j(cVar, "timeUnit");
            return minFresh(i10, toJavaTimeUnit$okhttp(cVar));
        }

        public final Builder noCache() {
            return _CacheControlCommonKt.commonNoCache(this);
        }

        public final Builder noStore() {
            return _CacheControlCommonKt.commonNoStore(this);
        }

        public final Builder noTransform() {
            return _CacheControlCommonKt.commonNoTransform(this);
        }

        public final Builder onlyIfCached() {
            return _CacheControlCommonKt.commonOnlyIfCached(this);
        }

        public final void setImmutable$okhttp(boolean z10) {
            this.immutable = z10;
        }

        public final void setMaxAgeSeconds$okhttp(int i10) {
            this.maxAgeSeconds = i10;
        }

        public final void setMaxStaleSeconds$okhttp(int i10) {
            this.maxStaleSeconds = i10;
        }

        public final void setMinFreshSeconds$okhttp(int i10) {
            this.minFreshSeconds = i10;
        }

        public final void setNoCache$okhttp(boolean z10) {
            this.noCache = z10;
        }

        public final void setNoStore$okhttp(boolean z10) {
            this.noStore = z10;
        }

        public final void setNoTransform$okhttp(boolean z10) {
            this.noTransform = z10;
        }

        public final void setOnlyIfCached$okhttp(boolean z10) {
            this.onlyIfCached = z10;
        }

        public final TimeUnit toJavaTimeUnit$okhttp(c cVar) {
            h.j(cVar, "durationUnit");
            return TimeUnit.valueOf(cVar.name());
        }

        public final Builder maxAge(int i10, TimeUnit timeUnit) {
            h.j(timeUnit, "timeUnit");
            if (!(i10 >= 0)) {
                throw new IllegalArgumentException(e0.d("maxAge < 0: ", i10).toString());
            }
            this.maxAgeSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i10));
            return this;
        }

        public final Builder maxStale(int i10, TimeUnit timeUnit) {
            h.j(timeUnit, "timeUnit");
            if (!(i10 >= 0)) {
                throw new IllegalArgumentException(e0.d("maxStale < 0: ", i10).toString());
            }
            this.maxStaleSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i10));
            return this;
        }

        public final Builder minFresh(int i10, TimeUnit timeUnit) {
            h.j(timeUnit, "timeUnit");
            if (!(i10 >= 0)) {
                throw new IllegalArgumentException(e0.d("minFresh < 0: ", i10).toString());
            }
            this.minFreshSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i10));
            return this;
        }
    }

    /* JADX INFO: compiled from: CacheControl.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final CacheControl parse(Headers headers) {
            h.j(headers, "headers");
            return _CacheControlCommonKt.commonParse(this, headers);
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        FORCE_NETWORK = _CacheControlCommonKt.commonForceNetwork(companion);
        FORCE_CACHE = _CacheControlCommonKt.commonForceCache(companion);
    }

    public CacheControl(boolean z10, boolean z11, int i10, int i11, boolean z12, boolean z13, boolean z14, int i12, int i13, boolean z15, boolean z16, boolean z17, String str) {
        this.noCache = z10;
        this.noStore = z11;
        this.maxAgeSeconds = i10;
        this.sMaxAgeSeconds = i11;
        this.isPrivate = z12;
        this.isPublic = z13;
        this.mustRevalidate = z14;
        this.maxStaleSeconds = i12;
        this.minFreshSeconds = i13;
        this.onlyIfCached = z15;
        this.noTransform = z16;
        this.immutable = z17;
        this.headerValue = str;
    }

    public static final CacheControl parse(Headers headers) {
        return Companion.parse(headers);
    }

    /* JADX INFO: renamed from: -deprecated_immutable, reason: not valid java name */
    public final boolean m38deprecated_immutable() {
        return this.immutable;
    }

    /* JADX INFO: renamed from: -deprecated_maxAgeSeconds, reason: not valid java name */
    public final int m39deprecated_maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_maxStaleSeconds, reason: not valid java name */
    public final int m40deprecated_maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_minFreshSeconds, reason: not valid java name */
    public final int m41deprecated_minFreshSeconds() {
        return this.minFreshSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_mustRevalidate, reason: not valid java name */
    public final boolean m42deprecated_mustRevalidate() {
        return this.mustRevalidate;
    }

    /* JADX INFO: renamed from: -deprecated_noCache, reason: not valid java name */
    public final boolean m43deprecated_noCache() {
        return this.noCache;
    }

    /* JADX INFO: renamed from: -deprecated_noStore, reason: not valid java name */
    public final boolean m44deprecated_noStore() {
        return this.noStore;
    }

    /* JADX INFO: renamed from: -deprecated_noTransform, reason: not valid java name */
    public final boolean m45deprecated_noTransform() {
        return this.noTransform;
    }

    /* JADX INFO: renamed from: -deprecated_onlyIfCached, reason: not valid java name */
    public final boolean m46deprecated_onlyIfCached() {
        return this.onlyIfCached;
    }

    /* JADX INFO: renamed from: -deprecated_sMaxAgeSeconds, reason: not valid java name */
    public final int m47deprecated_sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final String getHeaderValue$okhttp() {
        return this.headerValue;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final boolean noTransform() {
        return this.noTransform;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final void setHeaderValue$okhttp(String str) {
        this.headerValue = str;
    }

    public String toString() {
        return _CacheControlCommonKt.commonToString(this);
    }
}
