package retrofit2.converter.gson;

import e7.h;
import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import java.util.Objects;
import l7.a;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;

/* JADX INFO: loaded from: classes2.dex */
public final class GsonConverterFactory extends Converter.Factory {
    private final h gson;

    private GsonConverterFactory(h hVar) {
        this.gson = hVar;
    }

    public static GsonConverterFactory create() {
        return create(new h());
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.gson, this.gson.f(new a(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.gson, this.gson.f(new a(type)));
    }

    public static GsonConverterFactory create(h hVar) {
        Objects.requireNonNull(hVar, "gson == null");
        return new GsonConverterFactory(hVar);
    }
}
