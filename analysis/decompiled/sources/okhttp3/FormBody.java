package okhttp3;

import com.newrelic.agent.android.util.Constants;
import de.c;
import de.e;
import java.io.EOFException;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilJvmKt;
import rd.h;

/* JADX INFO: compiled from: FormBody.kt */
/* JADX INFO: loaded from: classes.dex */
public final class FormBody extends RequestBody {
    private final List<String> encodedNames;
    private final List<String> encodedValues;
    public static final Companion Companion = new Companion(null);
    private static final MediaType CONTENT_TYPE = MediaType.Companion.get(Constants.Network.ContentType.URL_ENCODED);

    /* JADX INFO: compiled from: FormBody.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    public FormBody(List<String> list, List<String> list2) {
        p4.h.j(list, "encodedNames");
        p4.h.j(list2, "encodedValues");
        this.encodedNames = _UtilJvmKt.toImmutableList(list);
        this.encodedValues = _UtilJvmKt.toImmutableList(list2);
    }

    private final long writeOrCountBytes(e eVar, boolean z10) throws EOFException {
        c cVarB;
        if (z10) {
            cVarB = new c();
        } else {
            p4.h.g(eVar);
            cVarB = eVar.b();
        }
        int size = this.encodedNames.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (i10 > 0) {
                cVarB.y0(38);
            }
            cVarB.F0(this.encodedNames.get(i10));
            cVarB.y0(61);
            cVarB.F0(this.encodedValues.get(i10));
        }
        if (!z10) {
            return 0L;
        }
        long j10 = cVarB.f6199i;
        cVarB.x();
        return j10;
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m66deprecated_size() {
        return size();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public final String encodedName(int i10) {
        return this.encodedNames.get(i10);
    }

    public final String encodedValue(int i10) {
        return this.encodedValues.get(i10);
    }

    public final String name(int i10) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedName(i10), 0, 0, true, 3, null);
    }

    public final int size() {
        return this.encodedNames.size();
    }

    public final String value(int i10) {
        return HttpUrl.Companion.percentDecode$okhttp$default(HttpUrl.Companion, encodedValue(i10), 0, 0, true, 3, null);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(e eVar) throws IOException {
        p4.h.j(eVar, "sink");
        writeOrCountBytes(eVar, false);
    }

    /* JADX INFO: compiled from: FormBody.kt */
    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        public Builder(Charset charset) {
            this.charset = charset;
            this.names = new ArrayList();
            this.values = new ArrayList();
        }

        public final Builder add(String str, String str2) {
            p4.h.j(str, "name");
            p4.h.j(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, false, false, this.charset, 91, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, false, false, false, false, this.charset, 91, null));
            return this;
        }

        public final Builder addEncoded(String str, String str2) {
            p4.h.j(str, "name");
            p4.h.j(str2, "value");
            List<String> list = this.names;
            HttpUrl.Companion companion = HttpUrl.Companion;
            list.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            this.values.add(HttpUrl.Companion.canonicalize$okhttp$default(companion, str2, 0, 0, HttpUrl.FORM_ENCODE_SET, true, false, true, false, this.charset, 83, null));
            return this;
        }

        public final FormBody build() {
            return new FormBody(this.names, this.values);
        }

        public /* synthetic */ Builder(Charset charset, int i10, h hVar) {
            this((i10 & 1) != 0 ? null : charset);
        }
    }
}
