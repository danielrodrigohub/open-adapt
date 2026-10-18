package kotlinx.serialization.json;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import kotlinx.serialization.modules.SerializersModule;
import p4.h;

/* JADX INFO: compiled from: Json.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonBuilder {
    private boolean allowSpecialFloatingPointValues;
    private boolean allowStructuredMapKeys;
    private String classDiscriminator;
    private boolean coerceInputValues;
    private boolean encodeDefaults;
    private boolean ignoreUnknownKeys;
    private boolean isLenient;
    private boolean prettyPrint;
    private String prettyPrintIndent;
    private SerializersModule serializersModule;
    private boolean useAlternativeNames;
    private boolean useArrayPolymorphism;

    public JsonBuilder(Json json) {
        h.j(json, "json");
        this.encodeDefaults = json.getConfiguration().getEncodeDefaults();
        this.ignoreUnknownKeys = json.getConfiguration().getIgnoreUnknownKeys();
        this.isLenient = json.getConfiguration().isLenient();
        this.allowStructuredMapKeys = json.getConfiguration().getAllowStructuredMapKeys();
        this.prettyPrint = json.getConfiguration().getPrettyPrint();
        this.prettyPrintIndent = json.getConfiguration().getPrettyPrintIndent();
        this.coerceInputValues = json.getConfiguration().getCoerceInputValues();
        this.useArrayPolymorphism = json.getConfiguration().getUseArrayPolymorphism();
        this.classDiscriminator = json.getConfiguration().getClassDiscriminator();
        this.allowSpecialFloatingPointValues = json.getConfiguration().getAllowSpecialFloatingPointValues();
        this.useAlternativeNames = json.getConfiguration().getUseAlternativeNames();
        this.serializersModule = json.getSerializersModule();
    }

    public final JsonConfiguration build$kotlinx_serialization_json() {
        if (this.useArrayPolymorphism && !h.c(this.classDiscriminator, AnalyticsAttribute.TYPE_ATTRIBUTE)) {
            throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified".toString());
        }
        if (this.prettyPrint) {
            if (!h.c(this.prettyPrintIndent, "    ")) {
                String str = this.prettyPrintIndent;
                boolean z10 = false;
                int i10 = 0;
                while (true) {
                    boolean z11 = true;
                    if (i10 >= str.length()) {
                        z10 = true;
                        break;
                    }
                    char cCharAt = str.charAt(i10);
                    if (cCharAt != ' ' && cCharAt != '\t' && cCharAt != '\r' && cCharAt != '\n') {
                        z11 = false;
                    }
                    if (!z11) {
                        break;
                    }
                    i10++;
                }
                if (!z10) {
                    throw new IllegalArgumentException(h.B("Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had ", getPrettyPrintIndent()).toString());
                }
            }
        } else if (!h.c(this.prettyPrintIndent, "    ")) {
            throw new IllegalArgumentException("Indent should not be specified when default printing mode is used".toString());
        }
        return new JsonConfiguration(this.encodeDefaults, this.ignoreUnknownKeys, this.isLenient, this.allowStructuredMapKeys, this.prettyPrint, this.prettyPrintIndent, this.coerceInputValues, this.useArrayPolymorphism, this.classDiscriminator, this.allowSpecialFloatingPointValues, this.useAlternativeNames);
    }

    public final String getPrettyPrintIndent() {
        return this.prettyPrintIndent;
    }

    public final SerializersModule getSerializersModule() {
        return this.serializersModule;
    }

    public final void setIgnoreUnknownKeys(boolean z10) {
        this.ignoreUnknownKeys = z10;
    }

    public final void setLenient(boolean z10) {
        this.isLenient = z10;
    }
}
