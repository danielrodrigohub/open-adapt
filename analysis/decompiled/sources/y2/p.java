package y2;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import java.security.MessageDigest;

/* JADX INFO: compiled from: DrawableTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements p2.l<Drawable> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p2.l<Bitmap> f18477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f18478c;

    public p(p2.l<Bitmap> lVar, boolean z10) {
        this.f18477b = lVar;
        this.f18478c = z10;
    }

    @Override // p2.f
    public final void a(MessageDigest messageDigest) {
        this.f18477b.a(messageDigest);
    }

    @Override // p2.l
    public final r2.w<Drawable> b(Context context, r2.w<Drawable> wVar, int i10, int i11) {
        s2.d dVar = com.bumptech.glide.c.b(context).f4420h;
        Drawable drawable = wVar.get();
        r2.w<Bitmap> wVarA = o.a(dVar, drawable, i10, i11);
        if (wVarA != null) {
            r2.w<Bitmap> wVarB = this.f18477b.b(context, wVarA, i10, i11);
            if (!wVarB.equals(wVarA)) {
                return v.d(context.getResources(), wVarB);
            }
            wVarB.c();
            return wVar;
        }
        if (!this.f18478c) {
            return wVar;
        }
        throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
    }

    @Override // p2.f
    public final boolean equals(Object obj) {
        if (obj instanceof p) {
            return this.f18477b.equals(((p) obj).f18477b);
        }
        return false;
    }

    @Override // p2.f
    public final int hashCode() {
        return this.f18477b.hashCode();
    }
}
