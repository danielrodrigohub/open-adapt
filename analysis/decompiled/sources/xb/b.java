package xb;

import android.util.Base64;
import gd.z;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.Objects;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import ob.e;
import p4.h;
import rd.x;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: JWT.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, String> f18122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final c f18123b;

    public b(String str) {
        h.j(str, "token");
        Object[] array = s.B0(str, new String[]{"."}).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        if (strArr.length == 2 && o.Y(str, ".", false)) {
            strArr = new String[]{strArr[0], strArr[1], ""};
        }
        if (strArr.length != 3) {
            throw new e.C0224e(a0.b.b(a0.b.c("The token was expected to have 3 parts, but got "), strArr.length, '.'), null);
        }
        try {
            this.f18122a = (Map) Json.Default.decodeFromString(BuiltinSerializersKt.MapSerializer(SerializersKt.serializer(x.b(String.class)), SerializersKt.serializer(x.b(String.class))), a(strArr[0]));
            try {
                this.f18123b = new c(a(strArr[1]));
                String str2 = strArr[2];
            } catch (Throwable th) {
                throw new e.C0224e("The token's payload had an invalid JSON format.", th);
            }
        } catch (Throwable th2) {
            throw new e.C0224e("The token's header had an invalid JSON format.", th2);
        }
    }

    public final String a(String str) {
        try {
            byte[] bArrDecode = Base64.decode(str, 11);
            h.i(bArrDecode, "bytes");
            Charset charsetDefaultCharset = Charset.defaultCharset();
            h.i(charsetDefaultCharset, "defaultCharset()");
            return new String(bArrDecode, charsetDefaultCharset);
        } catch (IllegalArgumentException e10) {
            throw new e.C0224e("Received bytes didn't correspond to a valid Base64 encoded string.", e10);
        }
    }

    public final Map<String, JsonElement> b() {
        return z.E(this.f18123b.f18127d);
    }
}
