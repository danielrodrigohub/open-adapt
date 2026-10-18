package c3;

import android.content.Context;
import android.graphics.Bitmap;
import java.security.MessageDigest;
import java.util.Objects;
import p2.l;
import r2.w;

/* JADX INFO: compiled from: GifDrawableTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements l<c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l<Bitmap> f3846b;

    public f(l<Bitmap> lVar) {
        Objects.requireNonNull(lVar, "Argument must not be null");
        this.f3846b = lVar;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        this.f3846b.a(messageDigest);
    }

    @Override // p2.l
    public final w<c> b(Context context, w<c> wVar, int i10, int i11) {
        c cVar = wVar.get();
        w<Bitmap> eVar = new y2.e(cVar.b(), com.bumptech.glide.c.b(context).f4420h);
        w<Bitmap> wVarB = this.f3846b.b(context, eVar, i10, i11);
        if (!eVar.equals(wVarB)) {
            eVar.c();
        }
        Bitmap bitmap = wVarB.get();
        cVar.f3835h.f3845a.c(this.f3846b, bitmap);
        return wVar;
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f3846b.equals(((f) obj).f3846b);
        }
        return false;
    }

    @Override // p2.f
    public final int hashCode() {
        return this.f3846b.hashCode();
    }
}
