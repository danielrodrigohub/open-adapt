package a1;

import android.media.UnsupportedSchemeException;
import com.nike.adapt.R;
import java.util.UUID;
import kotlinx.serialization.json.internal.JsonLexer;
import m5.p;
import o7.x;
import r3.a0;
import r3.q;
import r3.s;
import r3.v;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements s.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ d f36a = new d();

    public static /* synthetic */ int b(int i10) {
        if (i10 == 1) {
            return R.string.adapt_home_view_connect_devices_message;
        }
        if (i10 == 2) {
            return R.string.adapt_home_view_connect_left_device_message;
        }
        if (i10 == 3) {
            return R.string.adapt_home_view_connect_right_device_message;
        }
        throw null;
    }

    public static fd.b c(JsonLexer jsonLexer, String str, int i10, int i11, Object obj) {
        JsonLexer.fail$default(jsonLexer, str, i10, i11, obj);
        return new fd.b();
    }

    public static void d(String str, String str2, x xVar) {
        xVar.a(str + str2);
    }

    public static void e(StringBuilder sb2, int i10, String str, int i11, String str2) {
        sb2.append(i10);
        sb2.append(str);
        sb2.append(i11);
        sb2.append(str2);
    }

    public static void f(StringBuilder sb2, String str, char c10, String str2) {
        sb2.append(str);
        sb2.append(c10);
        sb2.append(str2);
    }

    public static void g(StringBuilder sb2, String str, String str2, String str3, String str4) {
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        sb2.append(str4);
    }

    @Override // r3.s.c
    public s a(UUID uuid) {
        try {
            try {
                try {
                    return new v(uuid);
                } catch (Exception e10) {
                    throw new a0(e10);
                }
            } catch (UnsupportedSchemeException e11) {
                throw new a0(e11);
            }
        } catch (a0 unused) {
            p.c("FrameworkMediaDrm", "Failed to instantiate a FrameworkMediaDrm for uuid: " + uuid + ".");
            return new q();
        }
    }
}
