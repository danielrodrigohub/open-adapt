package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Protocol;
import p4.h;

/* JADX INFO: compiled from: SocketAdapter.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface SocketAdapter {
    void configureTlsExtensions(SSLSocket sSLSocket, String str, List<? extends Protocol> list);

    String getSelectedProtocol(SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(SSLSocket sSLSocket);

    default boolean matchesSocketFactory(SSLSocketFactory sSLSocketFactory) {
        h.j(sSLSocketFactory, "sslSocketFactory");
        return false;
    }

    default X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        h.j(sSLSocketFactory, "sslSocketFactory");
        return null;
    }
}
