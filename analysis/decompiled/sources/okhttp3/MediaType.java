package okhttp3;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.nio.charset.Charset;
import okhttp3.internal._MediaTypeCommonKt;
import rd.h;

/* JADX INFO: compiled from: MediaType.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MediaType {
    public static final Companion Companion = new Companion(null);
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    private final String subtype;
    private final String type;

    /* JADX INFO: compiled from: MediaType.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final MediaType m102deprecated_get(String str) {
            p4.h.j(str, "mediaType");
            return get(str);
        }

        /* JADX INFO: renamed from: -deprecated_parse, reason: not valid java name */
        public final MediaType m103deprecated_parse(String str) {
            p4.h.j(str, "mediaType");
            return parse(str);
        }

        public final MediaType get(String str) {
            p4.h.j(str, "<this>");
            return _MediaTypeCommonKt.commonToMediaType(str);
        }

        public final MediaType parse(String str) {
            p4.h.j(str, "<this>");
            return _MediaTypeCommonKt.commonToMediaTypeOrNull(str);
        }
    }

    public MediaType(String str, String str2, String str3, String[] strArr) {
        p4.h.j(str, "mediaType");
        p4.h.j(str2, AnalyticsAttribute.TYPE_ATTRIBUTE);
        p4.h.j(str3, "subtype");
        p4.h.j(strArr, "parameterNamesAndValues");
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    public static final MediaType get(String str) {
        return Companion.get(str);
    }

    public static final MediaType parse(String str) {
        return Companion.parse(str);
    }

    /* JADX INFO: renamed from: -deprecated_subtype, reason: not valid java name */
    public final String m100deprecated_subtype() {
        return this.subtype;
    }

    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final String m101deprecated_type() {
        return this.type;
    }

    public final Charset charset() {
        return charset$default(this, null, 1, null);
    }

    public final Charset charset(Charset charset) {
        String strParameter = parameter("charset");
        if (strParameter == null) {
            return charset;
        }
        try {
            return Charset.forName(strParameter);
        } catch (IllegalArgumentException unused) {
            return charset;
        }
    }

    public boolean equals(Object obj) {
        return _MediaTypeCommonKt.commonEquals(this, obj);
    }

    public final String getMediaType$okhttp() {
        return this.mediaType;
    }

    public final String[] getParameterNamesAndValues$okhttp() {
        return this.parameterNamesAndValues;
    }

    public int hashCode() {
        return _MediaTypeCommonKt.commonHashCode(this);
    }

    public final String parameter(String str) {
        p4.h.j(str, "name");
        return _MediaTypeCommonKt.commonParameter(this, str);
    }

    public final String subtype() {
        return this.subtype;
    }

    public String toString() {
        return _MediaTypeCommonKt.commonToString(this);
    }

    public final String type() {
        return this.type;
    }
}
