package k1;

import android.net.Uri;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: ContentUriTriggers.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Set<a> f9585a = new HashSet();

    /* JADX INFO: compiled from: ContentUriTriggers.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f9586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f9587b;

        public a(Uri uri, boolean z10) {
            this.f9586a = uri;
            this.f9587b = z10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f9587b == aVar.f9587b && this.f9586a.equals(aVar.f9586a);
        }

        public final int hashCode() {
            return (this.f9586a.hashCode() * 31) + (this.f9587b ? 1 : 0);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.HashSet, java.util.Set<k1.d$a>] */
    public final int a() {
        return this.f9585a.size();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        return this.f9585a.equals(((d) obj).f9585a);
    }

    public final int hashCode() {
        return this.f9585a.hashCode();
    }
}
