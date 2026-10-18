package p2;

import android.text.TextUtils;
import java.security.MessageDigest;

/* JADX INFO: compiled from: Option.java */
/* JADX INFO: loaded from: classes.dex */
public final class g<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final b<Object> f12643e = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final T f12644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b<T> f12645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f12646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile byte[] f12647d;

    /* JADX INFO: compiled from: Option.java */
    public class a implements b<Object> {
        @Override // p2.g.b
        public final void a(byte[] bArr, Object obj, MessageDigest messageDigest) {
        }
    }

    /* JADX INFO: compiled from: Option.java */
    public interface b<T> {
        void a(byte[] bArr, T t10, MessageDigest messageDigest);
    }

    public g(String str, T t10, b<T> bVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must not be null or empty");
        }
        this.f12646c = str;
        this.f12644a = t10;
        this.f12645b = bVar;
    }

    public static <T> g<T> a(String str, T t10) {
        return new g<>(str, t10, f12643e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof g) {
            return this.f12646c.equals(((g) obj).f12646c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12646c.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Option{key='");
        sbC.append(this.f12646c);
        sbC.append('\'');
        sbC.append('}');
        return sbC.toString();
    }
}
