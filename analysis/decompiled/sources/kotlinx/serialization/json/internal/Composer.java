package kotlinx.serialization.json.internal;

import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import kotlinx.serialization.json.Json;
import p4.h;

/* JADX INFO: compiled from: Composers.kt */
/* JADX INFO: loaded from: classes.dex */
public class Composer {
    public final Json json;
    private int level;

    /* JADX INFO: renamed from: sb, reason: collision with root package name */
    public final JsonStringBuilder f9809sb;
    private boolean writingFirst;

    public Composer(JsonStringBuilder jsonStringBuilder, Json json) {
        h.j(jsonStringBuilder, "sb");
        h.j(json, "json");
        this.f9809sb = jsonStringBuilder;
        this.json = json;
        this.writingFirst = true;
    }

    public final boolean getWritingFirst() {
        return this.writingFirst;
    }

    public final void indent() {
        this.writingFirst = true;
        this.level++;
    }

    public final void nextItem() {
        this.writingFirst = false;
        if (this.json.getConfiguration().getPrettyPrint()) {
            print("\n");
            int i10 = this.level;
            for (int i11 = 0; i11 < i10; i11++) {
                print(this.json.getConfiguration().getPrettyPrintIndent());
            }
        }
    }

    public final void print(char c10) {
        this.f9809sb.append(c10);
    }

    public final void printQuoted(String str) {
        h.j(str, "value");
        this.f9809sb.appendQuoted(str);
    }

    public final void space() {
        if (this.json.getConfiguration().getPrettyPrint()) {
            print(SafeJsonPrimitive.NULL_CHAR);
        }
    }

    public final void unIndent() {
        this.level--;
    }

    public final void print(String str) {
        h.j(str, TracePayload.VERSION_KEY);
        this.f9809sb.append(str);
    }

    public void print(float f10) {
        this.f9809sb.append(String.valueOf(f10));
    }

    public void print(double d10) {
        this.f9809sb.append(String.valueOf(d10));
    }

    public void print(byte b10) {
        this.f9809sb.append(b10);
    }

    public void print(short s10) {
        this.f9809sb.append(s10);
    }

    public void print(int i10) {
        this.f9809sb.append(i10);
    }

    public void print(long j10) {
        this.f9809sb.append(j10);
    }

    public void print(boolean z10) {
        this.f9809sb.append(String.valueOf(z10));
    }
}
