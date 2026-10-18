package okhttp3;

import a0.b;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import fd.d;
import gd.j;
import gd.n;
import gd.p;
import java.io.IOException;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import okhttp3.internal._UtilJvmKt;
import p4.h;
import rd.o;

/* JADX INFO: compiled from: Handshake.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Handshake {
    public static final Companion Companion = new Companion(null);
    private final CipherSuite cipherSuite;
    private final List<Certificate> localCertificates;
    private final d peerCertificates$delegate;
    private final TlsVersion tlsVersion;

    /* JADX INFO: renamed from: okhttp3.Handshake$peerCertificates$2, reason: invalid class name */
    /* JADX INFO: compiled from: Handshake.kt */
    public static final class AnonymousClass2 extends o implements qd.a<List<? extends Certificate>> {
        public final /* synthetic */ qd.a<List<Certificate>> $peerCertificatesFn;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass2(qd.a<? extends List<? extends Certificate>> aVar) {
            super(0);
            this.$peerCertificatesFn = aVar;
        }

        @Override // qd.a
        public final List<? extends Certificate> invoke() {
            try {
                return this.$peerCertificatesFn.invoke();
            } catch (SSLPeerUnverifiedException unused) {
                return p.f8070h;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Handshake(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, qd.a<? extends List<? extends Certificate>> aVar) {
        h.j(tlsVersion, "tlsVersion");
        h.j(cipherSuite, "cipherSuite");
        h.j(list, "localCertificates");
        h.j(aVar, "peerCertificatesFn");
        this.tlsVersion = tlsVersion;
        this.cipherSuite = cipherSuite;
        this.localCertificates = list;
        this.peerCertificates$delegate = androidx.lifecycle.o.x(new AnonymousClass2(aVar));
    }

    public static final Handshake get(SSLSession sSLSession) throws IOException {
        return Companion.get(sSLSession);
    }

    public static final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, List<? extends Certificate> list2) {
        return Companion.get(tlsVersion, cipherSuite, list, list2);
    }

    private final String getName(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return ((X509Certificate) certificate).getSubjectDN().toString();
        }
        String type = certificate.getType();
        h.i(type, AnalyticsAttribute.TYPE_ATTRIBUTE);
        return type;
    }

    /* JADX INFO: renamed from: -deprecated_cipherSuite, reason: not valid java name */
    public final CipherSuite m67deprecated_cipherSuite() {
        return this.cipherSuite;
    }

    /* JADX INFO: renamed from: -deprecated_localCertificates, reason: not valid java name */
    public final List<Certificate> m68deprecated_localCertificates() {
        return this.localCertificates;
    }

    /* JADX INFO: renamed from: -deprecated_localPrincipal, reason: not valid java name */
    public final Principal m69deprecated_localPrincipal() {
        return localPrincipal();
    }

    /* JADX INFO: renamed from: -deprecated_peerCertificates, reason: not valid java name */
    public final List<Certificate> m70deprecated_peerCertificates() {
        return peerCertificates();
    }

    /* JADX INFO: renamed from: -deprecated_peerPrincipal, reason: not valid java name */
    public final Principal m71deprecated_peerPrincipal() {
        return peerPrincipal();
    }

    /* JADX INFO: renamed from: -deprecated_tlsVersion, reason: not valid java name */
    public final TlsVersion m72deprecated_tlsVersion() {
        return this.tlsVersion;
    }

    public final CipherSuite cipherSuite() {
        return this.cipherSuite;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Handshake) {
            Handshake handshake = (Handshake) obj;
            if (handshake.tlsVersion == this.tlsVersion && h.c(handshake.cipherSuite, this.cipherSuite) && h.c(handshake.peerCertificates(), peerCertificates()) && h.c(handshake.localCertificates, this.localCertificates)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.localCertificates.hashCode() + ((peerCertificates().hashCode() + ((this.cipherSuite.hashCode() + ((this.tlsVersion.hashCode() + 527) * 31)) * 31)) * 31);
    }

    public final List<Certificate> localCertificates() {
        return this.localCertificates;
    }

    public final Principal localPrincipal() {
        Object objA0 = n.a0(this.localCertificates);
        X509Certificate x509Certificate = objA0 instanceof X509Certificate ? (X509Certificate) objA0 : null;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    public final List<Certificate> peerCertificates() {
        return (List) this.peerCertificates$delegate.getValue();
    }

    public final Principal peerPrincipal() {
        Object objA0 = n.a0(peerCertificates());
        X509Certificate x509Certificate = objA0 instanceof X509Certificate ? (X509Certificate) objA0 : null;
        if (x509Certificate != null) {
            return x509Certificate.getSubjectX500Principal();
        }
        return null;
    }

    public final TlsVersion tlsVersion() {
        return this.tlsVersion;
    }

    public String toString() {
        List<Certificate> listPeerCertificates = peerCertificates();
        ArrayList arrayList = new ArrayList(j.T(listPeerCertificates, 10));
        Iterator<T> it = listPeerCertificates.iterator();
        while (it.hasNext()) {
            arrayList.add(getName((Certificate) it.next()));
        }
        String string = arrayList.toString();
        StringBuilder sbC = b.c("Handshake{tlsVersion=");
        sbC.append(this.tlsVersion);
        sbC.append(" cipherSuite=");
        sbC.append(this.cipherSuite);
        sbC.append(" peerCertificates=");
        sbC.append(string);
        sbC.append(" localCertificates=");
        List<Certificate> list = this.localCertificates;
        ArrayList arrayList2 = new ArrayList(j.T(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList2.add(getName((Certificate) it2.next()));
        }
        sbC.append(arrayList2);
        sbC.append('}');
        return sbC.toString();
    }

    /* JADX INFO: compiled from: Handshake.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        private final List<Certificate> toImmutableList(Certificate[] certificateArr) {
            return certificateArr != null ? _UtilJvmKt.immutableListOf(Arrays.copyOf(certificateArr, certificateArr.length)) : p.f8070h;
        }

        /* JADX INFO: renamed from: -deprecated_get, reason: not valid java name */
        public final Handshake m73deprecated_get(SSLSession sSLSession) throws IOException {
            h.j(sSLSession, "sslSession");
            return get(sSLSession);
        }

        public final Handshake get(SSLSession sSLSession) throws IOException {
            List<Certificate> immutableList;
            h.j(sSLSession, "<this>");
            String cipherSuite = sSLSession.getCipherSuite();
            if (cipherSuite == null) {
                throw new IllegalStateException("cipherSuite == null".toString());
            }
            if (h.c(cipherSuite, "TLS_NULL_WITH_NULL_NULL") ? true : h.c(cipherSuite, "SSL_NULL_WITH_NULL_NULL")) {
                throw new IOException(androidx.recyclerview.widget.d.c("cipherSuite == ", cipherSuite));
            }
            CipherSuite cipherSuiteForJavaName = CipherSuite.Companion.forJavaName(cipherSuite);
            String protocol = sSLSession.getProtocol();
            if (protocol == null) {
                throw new IllegalStateException("tlsVersion == null".toString());
            }
            if (h.c("NONE", protocol)) {
                throw new IOException("tlsVersion == NONE");
            }
            TlsVersion tlsVersionForJavaName = TlsVersion.Companion.forJavaName(protocol);
            try {
                immutableList = toImmutableList(sSLSession.getPeerCertificates());
            } catch (SSLPeerUnverifiedException unused) {
                immutableList = p.f8070h;
            }
            return new Handshake(tlsVersionForJavaName, cipherSuiteForJavaName, toImmutableList(sSLSession.getLocalCertificates()), new Handshake$Companion$handshake$1(immutableList));
        }

        public final Handshake get(TlsVersion tlsVersion, CipherSuite cipherSuite, List<? extends Certificate> list, List<? extends Certificate> list2) {
            h.j(tlsVersion, "tlsVersion");
            h.j(cipherSuite, "cipherSuite");
            h.j(list, "peerCertificates");
            h.j(list2, "localCertificates");
            return new Handshake(tlsVersion, cipherSuite, _UtilJvmKt.toImmutableList(list2), new Handshake$Companion$get$1(_UtilJvmKt.toImmutableList(list)));
        }
    }
}
