package v2;

import android.net.Uri;
import android.text.TextUtils;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Objects;

/* JADX INFO: compiled from: GlideUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements p2.f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f16151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final URL f16152c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f16153d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f16154e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public URL f16155f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public volatile byte[] f16156g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16157h;

    public f(URL url) {
        i iVar = g.f16158a;
        Objects.requireNonNull(url, "Argument must not be null");
        this.f16152c = url;
        this.f16153d = null;
        Objects.requireNonNull(iVar, "Argument must not be null");
        this.f16151b = iVar;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        if (this.f16156g == null) {
            this.f16156g = c().getBytes(p2.f.f12642a);
        }
        messageDigest.update(this.f16156g);
    }

    public final String c() {
        String str = this.f16153d;
        if (str != null) {
            return str;
        }
        URL url = this.f16152c;
        Objects.requireNonNull(url, "Argument must not be null");
        return url.toString();
    }

    public final String d() {
        if (TextUtils.isEmpty(this.f16154e)) {
            String string = this.f16153d;
            if (TextUtils.isEmpty(string)) {
                URL url = this.f16152c;
                Objects.requireNonNull(url, "Argument must not be null");
                string = url.toString();
            }
            this.f16154e = Uri.encode(string, "@#&=*+-_.,:!?()/~'%;$");
        }
        return this.f16154e;
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return c().equals(fVar.c()) && this.f16151b.equals(fVar.f16151b);
    }

    @Override // p2.f
    public final int hashCode() {
        if (this.f16157h == 0) {
            int iHashCode = c().hashCode();
            this.f16157h = iHashCode;
            this.f16157h = this.f16151b.hashCode() + (iHashCode * 31);
        }
        return this.f16157h;
    }

    public final String toString() {
        return c();
    }

    public f(String str) {
        i iVar = g.f16158a;
        this.f16152c = null;
        if (!TextUtils.isEmpty(str)) {
            this.f16153d = str;
            Objects.requireNonNull(iVar, "Argument must not be null");
            this.f16151b = iVar;
            return;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }
}
