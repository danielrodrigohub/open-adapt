package ob;

import android.app.Application;
import android.net.Uri;
import java.util.List;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.OkHttpClient;

/* JADX INFO: compiled from: OIDCAuthConfiguration.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0223a f12530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f12531b;

    /* JADX INFO: renamed from: ob.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OIDCAuthConfiguration.kt */
    public interface InterfaceC0223a {
        CoroutineScope a();

        f.a b();

        Application c();

        u9.b d();

        OkHttpClient e();

        ed.e f();

        yc.c g();
    }

    /* JADX INFO: compiled from: OIDCAuthConfiguration.kt */
    public interface b {
        Uri a();

        int b();

        String c();

        List<String> d();

        void e();
    }

    public a(InterfaceC0223a interfaceC0223a, b bVar) {
        this.f12530a = interfaceC0223a;
        this.f12531b = bVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p4.h.c(this.f12530a, aVar.f12530a) && p4.h.c(this.f12531b, aVar.f12531b);
    }

    public final int hashCode() {
        return this.f12531b.hashCode() + (this.f12530a.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("OIDCAuthConfiguration(dependencies=");
        sbC.append(this.f12530a);
        sbC.append(", settings=");
        sbC.append(this.f12531b);
        sbC.append(')');
        return sbC.toString();
    }
}
