package retrofit2;

import androidx.appcompat.widget.e0;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.instrumentation.okhttp3.OkHttp3Instrumentation;
import java.util.Objects;
import javax.annotation.Nullable;
import okhttp3.Headers;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: loaded from: classes2.dex */
@Instrumented
public final class Response<T> {

    @Nullable
    private final T body;

    @Nullable
    private final ResponseBody errorBody;
    private final okhttp3.Response rawResponse;

    private Response(okhttp3.Response response, @Nullable T t10, @Nullable ResponseBody responseBody) {
        this.rawResponse = response;
        this.body = t10;
        this.errorBody = responseBody;
    }

    public static <T> Response<T> error(int i10, ResponseBody responseBody) {
        Objects.requireNonNull(responseBody, "body == null");
        if (i10 < 400) {
            throw new IllegalArgumentException(e0.d("code < 400: ", i10));
        }
        okhttp3.Response.Builder builderProtocol = OkHttp3Instrumentation.body(new okhttp3.Response.Builder(), new OkHttpCall.NoContentResponseBody(responseBody.contentType(), responseBody.contentLength())).code(i10).message("Response.error()").protocol(Protocol.HTTP_1_1);
        Request.Builder builderUrl = new Request.Builder().url("http://localhost/");
        return error(responseBody, builderProtocol.request(!(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl)).build());
    }

    public static <T> Response<T> success(@Nullable T t10) {
        okhttp3.Response.Builder builderProtocol = new okhttp3.Response.Builder().code(HttpStatusCodesKt.HTTP_OK).message("OK").protocol(Protocol.HTTP_1_1);
        Request.Builder builderUrl = new Request.Builder().url("http://localhost/");
        return success(t10, builderProtocol.request(!(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl)).build());
    }

    @Nullable
    public T body() {
        return this.body;
    }

    public int code() {
        return this.rawResponse.code();
    }

    @Nullable
    public ResponseBody errorBody() {
        return this.errorBody;
    }

    public Headers headers() {
        return this.rawResponse.headers();
    }

    public boolean isSuccessful() {
        return this.rawResponse.isSuccessful();
    }

    public String message() {
        return this.rawResponse.message();
    }

    public okhttp3.Response raw() {
        return this.rawResponse;
    }

    public String toString() {
        return this.rawResponse.toString();
    }

    public static <T> Response<T> success(int i10, @Nullable T t10) {
        if (i10 >= 200 && i10 < 300) {
            okhttp3.Response.Builder builderProtocol = new okhttp3.Response.Builder().code(i10).message("Response.success()").protocol(Protocol.HTTP_1_1);
            Request.Builder builderUrl = new Request.Builder().url("http://localhost/");
            return success(t10, builderProtocol.request(!(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl)).build());
        }
        throw new IllegalArgumentException(e0.d("code < 200 or >= 300: ", i10));
    }

    public static <T> Response<T> error(ResponseBody responseBody, okhttp3.Response response) {
        Objects.requireNonNull(responseBody, "body == null");
        Objects.requireNonNull(response, "rawResponse == null");
        if (!response.isSuccessful()) {
            return new Response<>(response, null, responseBody);
        }
        throw new IllegalArgumentException("rawResponse should not be successful response");
    }

    public static <T> Response<T> success(@Nullable T t10, Headers headers) {
        Objects.requireNonNull(headers, "headers == null");
        okhttp3.Response.Builder builderHeaders = new okhttp3.Response.Builder().code(HttpStatusCodesKt.HTTP_OK).message("OK").protocol(Protocol.HTTP_1_1).headers(headers);
        Request.Builder builderUrl = new Request.Builder().url("http://localhost/");
        return success(t10, builderHeaders.request(!(builderUrl instanceof Request.Builder) ? builderUrl.build() : OkHttp3Instrumentation.build(builderUrl)).build());
    }

    public static <T> Response<T> success(@Nullable T t10, okhttp3.Response response) {
        Objects.requireNonNull(response, "rawResponse == null");
        if (response.isSuccessful()) {
            return new Response<>(response, t10, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }
}
