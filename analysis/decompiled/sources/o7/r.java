package o7;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: GlideRequests.java */
/* JADX INFO: loaded from: classes.dex */
public final class r extends com.bumptech.glide.j {
    public r(com.bumptech.glide.c cVar, e3.h hVar, e3.m mVar, Context context) {
        super(cVar, hVar, mVar, context);
    }

    @Override // com.bumptech.glide.j
    public final com.bumptech.glide.i l(Class cls) {
        return new q(this.f4478h, this, cls, this.f4479i);
    }

    @Override // com.bumptech.glide.j
    public final com.bumptech.glide.i m() {
        return ((q) l(Bitmap.class)).a(com.bumptech.glide.j.f4477r);
    }

    @Override // com.bumptech.glide.j
    public final com.bumptech.glide.i n() {
        return (q) super.n();
    }

    @Override // com.bumptech.glide.j
    public final com.bumptech.glide.i p(Integer num) {
        return (q) super.p(num);
    }

    @Override // com.bumptech.glide.j
    public final void s(h3.g gVar) {
        if (gVar instanceof p) {
            super.s(gVar);
        } else {
            super.s(new p().D(gVar));
        }
    }

    public final q<Drawable> u(String str) {
        return (q) n().L(str);
    }
}
