package k7;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import e7.h;
import e7.x;
import e7.y;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

/* JADX INFO: compiled from: SqlTimestampTypeAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends x<Timestamp> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final a f9734b = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x<Date> f9735a;

    /* JADX INFO: compiled from: SqlTimestampTypeAdapter.java */
    public class a implements y {
        @Override // e7.y
        public final <T> x<T> a(h hVar, l7.a<T> aVar) {
            if (aVar.f10167a != Timestamp.class) {
                return null;
            }
            Objects.requireNonNull(hVar);
            return new c(hVar.f(new l7.a<>(Date.class)), null);
        }
    }

    public c(x xVar, a aVar) {
        this.f9735a = xVar;
    }

    @Override // e7.x
    public final Timestamp a(JsonReader jsonReader) throws IOException {
        Date dateA = this.f9735a.a(jsonReader);
        if (dateA != null) {
            return new Timestamp(dateA.getTime());
        }
        return null;
    }

    @Override // e7.x
    public final void b(JsonWriter jsonWriter, Timestamp timestamp) throws IOException {
        this.f9735a.b(jsonWriter, timestamp);
    }
}
