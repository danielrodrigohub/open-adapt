package i2;

import java.io.IOException;

/* JADX INFO: compiled from: IntegerParser.java */
/* JADX INFO: loaded from: classes.dex */
public final class r implements l0<Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final r f8711a = new r();

    @Override // i2.l0
    public final Integer a(j2.c cVar, float f10) throws IOException {
        return Integer.valueOf(Math.round(s.d(cVar) * f10));
    }
}
