package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.math.BigDecimal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ToNumberPolicy.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class u implements v {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final a f6544h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final b f6545i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final c f6546j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final d f6547k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ u[] f6548l;

    /* JADX INFO: compiled from: ToNumberPolicy.java */
    public final enum a extends u {
        public a() {
            super("DOUBLE", 0, null);
        }

        @Override // e7.v
        public final Number b(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.nextDouble());
        }
    }

    /* JADX INFO: compiled from: ToNumberPolicy.java */
    public final enum b extends u {
        public b() {
            super("LAZILY_PARSED_NUMBER", 1, null);
        }

        @Override // e7.v
        public final Number b(JsonReader jsonReader) throws IOException {
            return new g7.o(jsonReader.nextString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [e7.u$c] */
    /* JADX WARN: Type inference failed for: r5v0, types: [e7.u$d] */
    static {
        a aVar = new a();
        f6544h = aVar;
        b bVar = new b();
        f6545i = bVar;
        ?? r10 = new u() { // from class: e7.u.c
            @Override // e7.v
            public final Number b(JsonReader jsonReader) throws IOException, p {
                String strNextString = jsonReader.nextString();
                try {
                    try {
                        return Long.valueOf(Long.parseLong(strNextString));
                    } catch (NumberFormatException e10) {
                        StringBuilder sbE = a4.g.e("Cannot parse ", strNextString, "; at path ");
                        sbE.append(jsonReader.getPreviousPath());
                        throw new p(sbE.toString(), e10);
                    }
                } catch (NumberFormatException unused) {
                    Double dValueOf = Double.valueOf(strNextString);
                    if ((!dValueOf.isInfinite() && !dValueOf.isNaN()) || jsonReader.isLenient()) {
                        return dValueOf;
                    }
                    throw new MalformedJsonException("JSON forbids NaN and infinities: " + dValueOf + "; at path " + jsonReader.getPreviousPath());
                }
            }
        };
        f6546j = r10;
        ?? r11 = new u() { // from class: e7.u.d
            @Override // e7.v
            public final Number b(JsonReader jsonReader) throws IOException {
                String strNextString = jsonReader.nextString();
                try {
                    return new BigDecimal(strNextString);
                } catch (NumberFormatException e10) {
                    StringBuilder sbE = a4.g.e("Cannot parse ", strNextString, "; at path ");
                    sbE.append(jsonReader.getPreviousPath());
                    throw new p(sbE.toString(), e10);
                }
            }
        };
        f6547k = r11;
        f6548l = new u[]{aVar, bVar, r10, r11};
    }

    public u(String str, int i10, a aVar) {
        super(str, i10);
    }

    public static u valueOf(String str) {
        return (u) Enum.valueOf(u.class, str);
    }

    public static u[] values() {
        return (u[]) f6548l.clone();
    }
}
