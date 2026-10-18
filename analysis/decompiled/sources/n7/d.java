package n7;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.io.IOException;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.SerialFormat;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.StringFormat;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p4.h;

/* JADX INFO: compiled from: Serializer.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: compiled from: Serializer.kt */
    public static final class a extends d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final StringFormat f12004a;

        public a(StringFormat stringFormat) {
            this.f12004a = stringFormat;
        }

        @Override // n7.d
        public final <T> T a(DeserializationStrategy<T> deserializationStrategy, ResponseBody responseBody) throws IOException {
            h.j(deserializationStrategy, "loader");
            h.j(responseBody, "body");
            String strString = responseBody.string();
            h.i(strString, "body.string()");
            return (T) this.f12004a.decodeFromString(deserializationStrategy, strString);
        }

        @Override // n7.d
        public final SerialFormat b() {
            return this.f12004a;
        }

        @Override // n7.d
        public final <T> RequestBody c(MediaType mediaType, SerializationStrategy<? super T> serializationStrategy, T t10) {
            h.j(mediaType, AnalyticsAttribute.CONTENT_TYPE_ATTRIBUTE);
            h.j(serializationStrategy, "saver");
            RequestBody requestBodyCreate = RequestBody.create(mediaType, this.f12004a.encodeToString(serializationStrategy, t10));
            h.i(requestBodyCreate, "RequestBody.create(contentType, string)");
            return requestBodyCreate;
        }
    }

    public abstract <T> T a(DeserializationStrategy<T> deserializationStrategy, ResponseBody responseBody);

    public abstract SerialFormat b();

    public abstract <T> RequestBody c(MediaType mediaType, SerializationStrategy<? super T> serializationStrategy, T t10);
}
