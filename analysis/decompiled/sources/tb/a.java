package tb;

import a1.f;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.util.Base64;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: BrowserDescriptor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15585a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<String> f15586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15587c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Boolean f15588d;

    public a(PackageInfo packageInfo, boolean z10) {
        String str = packageInfo.packageName;
        Signature[] signatureArr = packageInfo.signatures;
        HashSet hashSet = new HashSet();
        for (Signature signature : signatureArr) {
            try {
                hashSet.add(Base64.encodeToString(MessageDigest.getInstance("SHA-512").digest(signature.toByteArray()), 10));
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("Platform does not supportSHA-512 hashing");
            }
        }
        String str2 = packageInfo.versionName;
        this.f15585a = str;
        this.f15586b = hashSet;
        this.f15587c = str2;
        this.f15588d = Boolean.valueOf(z10);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f15585a.equals(aVar.f15585a) && this.f15587c.equals(aVar.f15587c) && this.f15588d == aVar.f15588d && this.f15586b.equals(aVar.f15586b);
    }

    public final int hashCode() {
        int iC = (this.f15588d.booleanValue() ? 1 : 0) + f.c(this.f15587c, this.f15585a.hashCode() * 92821, 92821);
        Iterator<String> it = this.f15586b.iterator();
        while (it.hasNext()) {
            iC = (iC * 92821) + it.next().hashCode();
        }
        return iC;
    }
}
