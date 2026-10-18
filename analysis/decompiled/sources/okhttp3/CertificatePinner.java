package okhttp3;

import a0.b;
import a1.f;
import androidx.fragment.app.r0;
import androidx.recyclerview.widget.d;
import de.g;
import gd.i;
import gd.j;
import gd.n;
import gd.p;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import okhttp3.internal._HostnamesJvmKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import p4.h;
import rd.b0;
import yd.o;
import yd.s;

/* JADX INFO: compiled from: CertificatePinner.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CertificatePinner {
    public static final Companion Companion = new Companion(null);
    public static final CertificatePinner DEFAULT = new Builder().build();
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    /* JADX INFO: compiled from: CertificatePinner.kt */
    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public final Builder add(String str, String... strArr) {
            h.j(str, "pattern");
            h.j(strArr, "pins");
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final CertificatePinner build() {
            return new CertificatePinner(n.p0(this.pins), null, 2, 0 == true ? 1 : 0);
        }

        public final List<Pin> getPins() {
            return this.pins;
        }
    }

    /* JADX INFO: compiled from: CertificatePinner.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(rd.h hVar) {
            this();
        }

        public final String pin(Certificate certificate) {
            h.j(certificate, "certificate");
            if (!(certificate instanceof X509Certificate)) {
                throw new IllegalArgumentException("Certificate pinning requires X509 certificates".toString());
            }
            StringBuilder sbC = b.c("sha256/");
            sbC.append(sha256Hash((X509Certificate) certificate).b());
            return sbC.toString();
        }

        public final g sha1Hash(X509Certificate x509Certificate) {
            h.j(x509Certificate, "<this>");
            g.a aVar = g.f6227k;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            h.i(encoded, "publicKey.encoded");
            return g.a.d(encoded).u();
        }

        public final g sha256Hash(X509Certificate x509Certificate) {
            h.j(x509Certificate, "<this>");
            g.a aVar = g.f6227k;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            h.i(encoded, "publicKey.encoded");
            return g.a.d(encoded).i("SHA-256");
        }
    }

    /* JADX INFO: compiled from: CertificatePinner.kt */
    public static final class Pin {
        private final g hash;
        private final String hashAlgorithm;
        private final String pattern;

        public Pin(String str, String str2) {
            h.j(str, "pattern");
            h.j(str2, "pin");
            boolean z10 = true;
            if ((!o.g0(str, "*.", false) || s.p0(str, "*", 1, false, 4) != -1) && ((!o.g0(str, "**.", false) || s.p0(str, "*", 2, false, 4) != -1) && s.p0(str, "*", 0, false, 6) != -1)) {
                z10 = false;
            }
            if (!z10) {
                throw new IllegalArgumentException(d.c("Unexpected pattern: ", str).toString());
            }
            String canonicalHost = _HostnamesJvmKt.toCanonicalHost(str);
            if (canonicalHost == null) {
                throw new IllegalArgumentException(d.c("Invalid pattern: ", str));
            }
            this.pattern = canonicalHost;
            if (o.g0(str2, "sha1/", false)) {
                this.hashAlgorithm = "sha1";
                g.a aVar = g.f6227k;
                String strSubstring = str2.substring(5);
                h.i(strSubstring, "this as java.lang.String).substring(startIndex)");
                g gVarA = aVar.a(strSubstring);
                if (gVarA == null) {
                    throw new IllegalArgumentException(d.c("Invalid pin hash: ", str2));
                }
                this.hash = gVarA;
                return;
            }
            if (!o.g0(str2, "sha256/", false)) {
                throw new IllegalArgumentException(d.c("pins must start with 'sha256/' or 'sha1/': ", str2));
            }
            this.hashAlgorithm = "sha256";
            g.a aVar2 = g.f6227k;
            String strSubstring2 = str2.substring(7);
            h.i(strSubstring2, "this as java.lang.String).substring(startIndex)");
            g gVarA2 = aVar2.a(strSubstring2);
            if (gVarA2 == null) {
                throw new IllegalArgumentException(d.c("Invalid pin hash: ", str2));
            }
            this.hash = gVarA2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Pin)) {
                return false;
            }
            Pin pin = (Pin) obj;
            return h.c(this.pattern, pin.pattern) && h.c(this.hashAlgorithm, pin.hashAlgorithm) && h.c(this.hash, pin.hash);
        }

        public final g getHash() {
            return this.hash;
        }

        public final String getHashAlgorithm() {
            return this.hashAlgorithm;
        }

        public final String getPattern() {
            return this.pattern;
        }

        public int hashCode() {
            return this.hash.hashCode() + f.c(this.hashAlgorithm, this.pattern.hashCode() * 31, 31);
        }

        public final boolean matchesCertificate(X509Certificate x509Certificate) {
            h.j(x509Certificate, "certificate");
            String str = this.hashAlgorithm;
            if (h.c(str, "sha256")) {
                return h.c(this.hash, CertificatePinner.Companion.sha256Hash(x509Certificate));
            }
            if (h.c(str, "sha1")) {
                return h.c(this.hash, CertificatePinner.Companion.sha1Hash(x509Certificate));
            }
            return false;
        }

        public final boolean matchesHostname(String str) {
            h.j(str, "hostname");
            if (o.g0(this.pattern, "**.", false)) {
                int length = this.pattern.length() - 3;
                int length2 = str.length() - length;
                if (!o.c0(str, str.length() - length, this.pattern, 3, length, false)) {
                    return false;
                }
                if (length2 != 0 && str.charAt(length2 - 1) != '.') {
                    return false;
                }
            } else {
                if (!o.g0(this.pattern, "*.", false)) {
                    return h.c(str, this.pattern);
                }
                int length3 = this.pattern.length() - 1;
                int length4 = str.length() - length3;
                if (!o.c0(str, str.length() - length3, this.pattern, 1, length3, false) || s.r0(str, '.', length4 - 1, 4) != -1) {
                    return false;
                }
            }
            return true;
        }

        public String toString() {
            return this.hashAlgorithm + '/' + this.hash.b();
        }
    }

    /* JADX INFO: renamed from: okhttp3.CertificatePinner$check$1, reason: invalid class name */
    /* JADX INFO: compiled from: CertificatePinner.kt */
    public static final class AnonymousClass1 extends rd.o implements qd.a<List<? extends X509Certificate>> {
        public final /* synthetic */ String $hostname;
        public final /* synthetic */ List<Certificate> $peerCertificates;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public AnonymousClass1(List<? extends Certificate> list, String str) {
            super(0);
            this.$peerCertificates = list;
            this.$hostname = str;
        }

        @Override // qd.a
        public final List<? extends X509Certificate> invoke() {
            List<Certificate> listClean;
            CertificateChainCleaner certificateChainCleaner$okhttp = CertificatePinner.this.getCertificateChainCleaner$okhttp();
            if (certificateChainCleaner$okhttp == null || (listClean = certificateChainCleaner$okhttp.clean(this.$peerCertificates, this.$hostname)) == null) {
                listClean = this.$peerCertificates;
            }
            ArrayList arrayList = new ArrayList(j.T(listClean, 10));
            Iterator<T> it = listClean.iterator();
            while (it.hasNext()) {
                arrayList.add((X509Certificate) ((Certificate) it.next()));
            }
            return arrayList;
        }
    }

    public CertificatePinner(Set<Pin> set, CertificateChainCleaner certificateChainCleaner) {
        h.j(set, "pins");
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static final String pin(Certificate certificate) {
        return Companion.pin(certificate);
    }

    public static final g sha1Hash(X509Certificate x509Certificate) {
        return Companion.sha1Hash(x509Certificate);
    }

    public static final g sha256Hash(X509Certificate x509Certificate) {
        return Companion.sha256Hash(x509Certificate);
    }

    public final void check(String str, List<? extends Certificate> list) throws SSLPeerUnverifiedException {
        h.j(str, "hostname");
        h.j(list, "peerCertificates");
        check$okhttp(str, new AnonymousClass1(list, str));
    }

    public final void check$okhttp(String str, qd.a<? extends List<? extends X509Certificate>> aVar) throws SSLPeerUnverifiedException {
        h.j(str, "hostname");
        h.j(aVar, "cleanedPeerCertificatesFn");
        List<Pin> listFindMatchingPins = findMatchingPins(str);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        List<? extends X509Certificate> listInvoke = aVar.invoke();
        for (X509Certificate x509Certificate : listInvoke) {
            g gVarSha256Hash = null;
            g gVarSha1Hash = null;
            for (Pin pin : listFindMatchingPins) {
                String hashAlgorithm = pin.getHashAlgorithm();
                if (h.c(hashAlgorithm, "sha256")) {
                    if (gVarSha256Hash == null) {
                        gVarSha256Hash = Companion.sha256Hash(x509Certificate);
                    }
                    if (h.c(pin.getHash(), gVarSha256Hash)) {
                        return;
                    }
                } else {
                    if (!h.c(hashAlgorithm, "sha1")) {
                        StringBuilder sbC = b.c("unsupported hashAlgorithm: ");
                        sbC.append(pin.getHashAlgorithm());
                        throw new AssertionError(sbC.toString());
                    }
                    if (gVarSha1Hash == null) {
                        gVarSha1Hash = Companion.sha1Hash(x509Certificate);
                    }
                    if (h.c(pin.getHash(), gVarSha1Hash)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sbH = r0.h("Certificate pinning failure!", "\n  Peer certificate chain:");
        for (X509Certificate x509Certificate2 : listInvoke) {
            sbH.append("\n    ");
            sbH.append(Companion.pin(x509Certificate2));
            sbH.append(": ");
            sbH.append(x509Certificate2.getSubjectDN().getName());
        }
        sbH.append("\n  Pinned certificates for ");
        sbH.append(str);
        sbH.append(":");
        for (Pin pin2 : listFindMatchingPins) {
            sbH.append("\n    ");
            sbH.append(pin2);
        }
        String string = sbH.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        throw new SSLPeerUnverifiedException(string);
    }

    public boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (h.c(certificatePinner.pins, this.pins) && h.c(certificatePinner.certificateChainCleaner, this.certificateChainCleaner)) {
                return true;
            }
        }
        return false;
    }

    public final List<Pin> findMatchingPins(String str) {
        h.j(str, "hostname");
        Set<Pin> set = this.pins;
        List arrayList = p.f8070h;
        for (Object obj : set) {
            if (((Pin) obj).matchesHostname(str)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                b0.a(arrayList).add(obj);
            }
        }
        return arrayList;
    }

    public final CertificateChainCleaner getCertificateChainCleaner$okhttp() {
        return this.certificateChainCleaner;
    }

    public final Set<Pin> getPins() {
        return this.pins;
    }

    public int hashCode() {
        int iHashCode = (this.pins.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.certificateChainCleaner;
        return iHashCode + (certificateChainCleaner != null ? certificateChainCleaner.hashCode() : 0);
    }

    public final CertificatePinner withCertificateChainCleaner$okhttp(CertificateChainCleaner certificateChainCleaner) {
        h.j(certificateChainCleaner, "certificateChainCleaner");
        return h.c(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }

    public final void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        h.j(str, "hostname");
        h.j(certificateArr, "peerCertificates");
        check(str, i.v(certificateArr));
    }

    public /* synthetic */ CertificatePinner(Set set, CertificateChainCleaner certificateChainCleaner, int i10, rd.h hVar) {
        this(set, (i10 & 2) != 0 ? null : certificateChainCleaner);
    }
}
