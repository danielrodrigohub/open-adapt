package n7;

import kotlinx.serialization.DeserializationStrategy;
import okhttp3.ResponseBody;
import p4.h;
import retrofit2.Converter;

/* JADX INFO: compiled from: DeserializationStrategyConverter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a<T> implements Converter<ResponseBody, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeserializationStrategy<T> f11997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f11998b;

    public a(DeserializationStrategy<T> deserializationStrategy, d dVar) {
        h.j(deserializationStrategy, "loader");
        h.j(dVar, "serializer");
        this.f11997a = deserializationStrategy;
        this.f11998b = dVar;
    }

    @Override // retrofit2.Converter
    public final Object convert(ResponseBody responseBody) {
        ResponseBody responseBody2 = responseBody;
        h.j(responseBody2, "value");
        return this.f11998b.a(this.f11997a, responseBody2);
    }
}
