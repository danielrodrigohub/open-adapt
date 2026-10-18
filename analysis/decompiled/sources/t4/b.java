package t4;

import java.util.Arrays;

/* JADX INFO: compiled from: BaseUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15438a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15439b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15440c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15441d;

    public b(String str, String str2, int i10, int i11) {
        this.f15438a = str;
        this.f15439b = str2;
        this.f15440c = i10;
        this.f15441d = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f15440c == bVar.f15440c && this.f15441d == bVar.f15441d && t6.f.a(this.f15438a, bVar.f15438a) && t6.f.a(this.f15439b, bVar.f15439b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f15438a, this.f15439b, Integer.valueOf(this.f15440c), Integer.valueOf(this.f15441d)});
    }
}
