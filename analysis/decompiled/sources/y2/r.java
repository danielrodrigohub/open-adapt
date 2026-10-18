package y2;

import android.graphics.Bitmap;
import java.security.MessageDigest;

/* JADX INFO: compiled from: FitCenter.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f18479b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(p2.f.f12642a);

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(f18479b);
    }

    @Override // y2.f
    public final Bitmap c(s2.d dVar, Bitmap bitmap, int i10, int i11) {
        return a0.b(dVar, bitmap, i10, i11);
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        return obj instanceof r;
    }

    @Override // p2.f
    public final int hashCode() {
        return 1572326941;
    }
}
