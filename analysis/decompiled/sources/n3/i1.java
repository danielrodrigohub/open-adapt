package n3;

import java.io.IOException;

/* JADX INFO: compiled from: ParserException.java */
/* JADX INFO: loaded from: classes.dex */
public class i1 extends IOException {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f11432h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11433i;

    public i1(String str, Throwable th, boolean z10, int i10) {
        super(str, th);
        this.f11432h = z10;
        this.f11433i = i10;
    }

    public static i1 a(String str, Throwable th) {
        return new i1(str, th, true, 1);
    }

    public static i1 b(String str, Throwable th) {
        return new i1(str, th, true, 4);
    }

    public static i1 c(String str) {
        return new i1(str, null, false, 1);
    }
}
