package okhttp3;

import androidx.recyclerview.widget.d;
import de.g;
import java.nio.charset.Charset;
import p4.h;

/* JADX INFO: compiled from: Credentials.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String str, String str2) {
        h.j(str, "username");
        h.j(str2, "password");
        return basic$default(str, str2, null, 4, null);
    }

    public static final String basic(String str, String str2, Charset charset) {
        h.j(str, "username");
        h.j(str2, "password");
        h.j(charset, "charset");
        String str3 = str + ':' + str2;
        g.a aVar = g.f6227k;
        h.j(str3, "<this>");
        byte[] bytes = str3.getBytes(charset);
        h.i(bytes, "this as java.lang.String).getBytes(charset)");
        return d.c("Basic ", new g(bytes).b());
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            charset = yd.a.f19175f;
        }
        return basic(str, str2, charset);
    }
}
