package d2;

import f2.n;
import java.util.List;

/* JADX INFO: compiled from: FontCharacter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<n> f5977a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final char f5978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final double f5979c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f5980d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f5981e;

    public d(List list, char c10, double d10, String str, String str2) {
        this.f5977a = list;
        this.f5978b = c10;
        this.f5979c = d10;
        this.f5980d = str;
        this.f5981e = str2;
    }

    public static int a(char c10, String str, String str2) {
        return str2.hashCode() + a1.f.c(str, (c10 + 0) * 31, 31);
    }

    public final int hashCode() {
        return a(this.f5978b, this.f5981e, this.f5980d);
    }
}
