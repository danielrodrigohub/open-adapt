package a0;

import android.graphics.Insets;
import android.graphics.Rect;

/* JADX INFO: compiled from: Insets.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final c f4e = new c(0, 0, 0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f7c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f8d;

    /* JADX INFO: compiled from: Insets.java */
    public static class a {
        public static Insets a(int i10, int i11, int i12, int i13) {
            return Insets.of(i10, i11, i12, i13);
        }
    }

    public c(int i10, int i11, int i12, int i13) {
        this.f5a = i10;
        this.f6b = i11;
        this.f7c = i12;
        this.f8d = i13;
    }

    public static c a(c cVar, c cVar2) {
        return b(Math.max(cVar.f5a, cVar2.f5a), Math.max(cVar.f6b, cVar2.f6b), Math.max(cVar.f7c, cVar2.f7c), Math.max(cVar.f8d, cVar2.f8d));
    }

    public static c b(int i10, int i11, int i12, int i13) {
        return (i10 == 0 && i11 == 0 && i12 == 0 && i13 == 0) ? f4e : new c(i10, i11, i12, i13);
    }

    public static c c(Rect rect) {
        return b(rect.left, rect.top, rect.right, rect.bottom);
    }

    public static c d(Insets insets) {
        return b(insets.left, insets.top, insets.right, insets.bottom);
    }

    public final Insets e() {
        return a.a(this.f5a, this.f6b, this.f7c, this.f8d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f8d == cVar.f8d && this.f5a == cVar.f5a && this.f7c == cVar.f7c && this.f6b == cVar.f6b;
    }

    public final int hashCode() {
        return (((((this.f5a * 31) + this.f6b) * 31) + this.f7c) * 31) + this.f8d;
    }

    public final String toString() {
        StringBuilder sbC = b.c("Insets{left=");
        sbC.append(this.f5a);
        sbC.append(", top=");
        sbC.append(this.f6b);
        sbC.append(", right=");
        sbC.append(this.f7c);
        sbC.append(", bottom=");
        return b.b(sbC, this.f8d, '}');
    }
}
