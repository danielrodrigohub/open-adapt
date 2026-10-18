package kotlinx.serialization.json;

import a0.b;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import p4.h;

/* JADX INFO: compiled from: JsonConfiguration.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonConfiguration {
    private final boolean allowSpecialFloatingPointValues;
    private final boolean allowStructuredMapKeys;
    private final String classDiscriminator;
    private final boolean coerceInputValues;
    private final boolean encodeDefaults;
    private final boolean ignoreUnknownKeys;
    private final boolean isLenient;
    private final boolean prettyPrint;
    private final String prettyPrintIndent;
    private final boolean useAlternativeNames;
    private final boolean useArrayPolymorphism;

    public JsonConfiguration(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, String str, boolean z15, boolean z16, String str2, boolean z17, boolean z18) {
        h.j(str, "prettyPrintIndent");
        h.j(str2, "classDiscriminator");
        this.encodeDefaults = z10;
        this.ignoreUnknownKeys = z11;
        this.isLenient = z12;
        this.allowStructuredMapKeys = z13;
        this.prettyPrint = z14;
        this.prettyPrintIndent = str;
        this.coerceInputValues = z15;
        this.useArrayPolymorphism = z16;
        this.classDiscriminator = str2;
        this.allowSpecialFloatingPointValues = z17;
        this.useAlternativeNames = z18;
    }

    public final boolean getAllowSpecialFloatingPointValues() {
        return this.allowSpecialFloatingPointValues;
    }

    public final boolean getAllowStructuredMapKeys() {
        return this.allowStructuredMapKeys;
    }

    public final String getClassDiscriminator() {
        return this.classDiscriminator;
    }

    public final boolean getCoerceInputValues() {
        return this.coerceInputValues;
    }

    public final boolean getEncodeDefaults() {
        return this.encodeDefaults;
    }

    public final boolean getIgnoreUnknownKeys() {
        return this.ignoreUnknownKeys;
    }

    public final boolean getPrettyPrint() {
        return this.prettyPrint;
    }

    public final String getPrettyPrintIndent() {
        return this.prettyPrintIndent;
    }

    public final boolean getUseAlternativeNames() {
        return this.useAlternativeNames;
    }

    public final boolean getUseArrayPolymorphism() {
        return this.useArrayPolymorphism;
    }

    public final boolean isLenient() {
        return this.isLenient;
    }

    public String toString() {
        StringBuilder sbC = b.c("JsonConfiguration(encodeDefaults=");
        sbC.append(this.encodeDefaults);
        sbC.append(", ignoreUnknownKeys=");
        sbC.append(this.ignoreUnknownKeys);
        sbC.append(", isLenient=");
        sbC.append(this.isLenient);
        sbC.append(", allowStructuredMapKeys=");
        sbC.append(this.allowStructuredMapKeys);
        sbC.append(", prettyPrint=");
        sbC.append(this.prettyPrint);
        sbC.append(", prettyPrintIndent='");
        sbC.append(this.prettyPrintIndent);
        sbC.append("', coerceInputValues=");
        sbC.append(this.coerceInputValues);
        sbC.append(", useArrayPolymorphism=");
        sbC.append(this.useArrayPolymorphism);
        sbC.append(", classDiscriminator='");
        sbC.append(this.classDiscriminator);
        sbC.append("', allowSpecialFloatingPointValues=");
        sbC.append(this.allowSpecialFloatingPointValues);
        sbC.append(')');
        return sbC.toString();
    }

    public /* synthetic */ JsonConfiguration(boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, String str, boolean z15, boolean z16, String str2, boolean z17, boolean z18, int i10, rd.h hVar) {
        this((i10 & 1) != 0 ? false : z10, (i10 & 2) != 0 ? false : z11, (i10 & 4) != 0 ? false : z12, (i10 & 8) != 0 ? false : z13, (i10 & 16) != 0 ? false : z14, (i10 & 32) != 0 ? "    " : str, (i10 & 64) != 0 ? false : z15, (i10 & 128) != 0 ? false : z16, (i10 & 256) != 0 ? AnalyticsAttribute.TYPE_ATTRIBUTE : str2, (i10 & 512) == 0 ? z17 : false, (i10 & 1024) != 0 ? true : z18);
    }
}
