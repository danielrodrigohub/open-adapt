package e7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: Gson.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends x<AtomicLong> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x f6522a;

    public f(x xVar) {
        this.f6522a = xVar;
    }

    @Override // e7.x
    public final AtomicLong a(JsonReader jsonReader) throws IOException {
        return new AtomicLong(((Number) this.f6522a.a(jsonReader)).longValue());
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, AtomicLong atomicLong) throws IOException {
        this.f6522a.b(jsonWriter, Long.valueOf(atomicLong.get()));
    }
}
