package n7;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import kotlinx.serialization.SerializersKt;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import p4.h;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: compiled from: Factory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Converter.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MediaType f11999a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f12000b;

    public b(MediaType mediaType, d dVar) {
        this.f11999a = mediaType;
        this.f12000b = dVar;
    }

    @Override // retrofit2.Converter.Factory
    public final Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        h.j(type, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(annotationArr, "parameterAnnotations");
        h.j(annotationArr2, "methodAnnotations");
        h.j(retrofit, "retrofit");
        d dVar = this.f12000b;
        Objects.requireNonNull(dVar);
        return new c(this.f11999a, SerializersKt.serializer(dVar.b().getSerializersModule(), type), this.f12000b);
    }

    @Override // retrofit2.Converter.Factory
    public final Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        h.j(type, AnalyticsAttribute.TYPE_ATTRIBUTE);
        h.j(annotationArr, "annotations");
        h.j(retrofit, "retrofit");
        d dVar = this.f12000b;
        Objects.requireNonNull(dVar);
        return new a(SerializersKt.serializer(dVar.b().getSerializersModule(), type), this.f12000b);
    }
}
