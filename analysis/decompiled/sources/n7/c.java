package n7;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import kotlinx.serialization.SerializationStrategy;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import p4.h;
import retrofit2.Converter;

/* JADX INFO: compiled from: SerializationStrategyConverter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c<T> implements Converter<T, RequestBody> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaType f12001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SerializationStrategy<T> f12002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f12003c;

    /* JADX WARN: Multi-variable type inference failed */
    public c(MediaType mediaType, SerializationStrategy<? super T> serializationStrategy, d dVar) {
        h.j(mediaType, AnalyticsAttribute.CONTENT_TYPE_ATTRIBUTE);
        h.j(serializationStrategy, "saver");
        h.j(dVar, "serializer");
        this.f12001a = mediaType;
        this.f12002b = serializationStrategy;
        this.f12003c = dVar;
    }

    @Override // retrofit2.Converter
    public final RequestBody convert(Object obj) {
        return this.f12003c.c(this.f12001a, this.f12002b, obj);
    }
}
