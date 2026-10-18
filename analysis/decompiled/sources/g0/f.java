package g0;

import android.util.Base64;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: FontRequest.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7491a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f7492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7493c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<List<byte[]>> f7494d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f7495e;

    public f(String str, String str2, String str3, List<List<byte[]>> list) {
        this.f7491a = str;
        this.f7492b = str2;
        this.f7493c = str3;
        Objects.requireNonNull(list);
        this.f7494d = list;
        this.f7495e = str + "-" + str2 + "-" + str3;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sbC = a0.b.c("FontRequest {mProviderAuthority: ");
        sbC.append(this.f7491a);
        sbC.append(", mProviderPackage: ");
        sbC.append(this.f7492b);
        sbC.append(", mQuery: ");
        sbC.append(this.f7493c);
        sbC.append(", mCertificates:");
        sb2.append(sbC.toString());
        for (int i10 = 0; i10 < this.f7494d.size(); i10++) {
            sb2.append(" [");
            List<byte[]> list = this.f7494d.get(i10);
            for (int i11 = 0; i11 < list.size(); i11++) {
                sb2.append(" \"");
                sb2.append(Base64.encodeToString(list.get(i11), 0));
                sb2.append("\"");
            }
            sb2.append(" ]");
        }
        return a1.f.d(sb2, "}", "mCertificatesArray: 0");
    }
}
