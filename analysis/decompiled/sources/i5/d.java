package i5;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: WebvttCssStyle.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8771f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8773h;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public float f8780o;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f8766a = "";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f8767b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Set<String> f8768c = Collections.emptySet();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8769d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f8770e = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f8772g = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8774i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8775j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8776k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f8777l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8778m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8779n = -1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8781p = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f8782q = false;

    public static int b(int i10, String str, String str2, int i11) {
        if (str.isEmpty() || i10 == -1) {
            return i10;
        }
        if (str.equals(str2)) {
            return i10 + i11;
        }
        return -1;
    }

    public final int a() {
        int i10 = this.f8777l;
        if (i10 == -1 && this.f8778m == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f8778m == 1 ? 2 : 0);
    }
}
