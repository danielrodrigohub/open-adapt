package retrofit2.converter.gson;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import e7.h;
import e7.m;
import e7.x;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
final class GsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private final x<T> adapter;
    private final h gson;

    public GsonResponseBodyConverter(h hVar, x<T> xVar) {
        this.gson = hVar;
        this.adapter = xVar;
    }

    @Override // retrofit2.Converter
    public T convert(ResponseBody responseBody) throws IOException {
        JsonReader jsonReaderH = this.gson.h(responseBody.charStream());
        try {
            T tA = this.adapter.a(jsonReaderH);
            if (jsonReaderH.peek() != JsonToken.END_DOCUMENT) {
                throw new m("JSON document was not fully consumed.");
            }
            responseBody.close();
            return tA;
        } catch (Throwable th) {
            responseBody.close();
            throw th;
        }
    }
}
