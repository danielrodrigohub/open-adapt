package retrofit2.converter.gson;

import com.google.gson.stream.JsonWriter;
import de.c;
import de.d;
import e7.h;
import e7.x;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import retrofit2.Converter;

/* JADX INFO: loaded from: classes2.dex */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final x<T> adapter;
    private final h gson;

    public GsonRequestBodyConverter(h hVar, x<T> xVar) {
        this.gson = hVar;
        this.adapter = xVar;
    }

    @Override // retrofit2.Converter
    public RequestBody convert(T t10) throws IOException {
        c cVar = new c();
        JsonWriter jsonWriterI = this.gson.i(new OutputStreamWriter(new d(cVar), UTF_8));
        this.adapter.b(jsonWriterI, t10);
        jsonWriterI.close();
        return RequestBody.create(MEDIA_TYPE, cVar.i());
    }
}
