package i3;

import android.graphics.drawable.Drawable;
import l3.l;

/* JADX INFO: compiled from: CustomTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c<T> implements i<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f8728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f8729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public h3.d f8730j;

    public c(int i10, int i11) {
        if (!l.j(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f8728h = Integer.MIN_VALUE;
        this.f8729i = Integer.MIN_VALUE;
    }

    @Override // i3.i
    public void a(Drawable drawable) {
    }

    @Override // i3.i
    public final void b(h hVar) {
        hVar.a(this.f8728h, this.f8729i);
    }

    @Override // i3.i
    public final void c(h hVar) {
    }

    @Override // i3.i
    public final void d(Drawable drawable) {
    }

    @Override // i3.i
    public final h3.d e() {
        return this.f8730j;
    }

    @Override // e3.i
    public final void g() {
    }

    @Override // e3.i
    public final void h() {
    }

    @Override // i3.i
    public final void i(h3.d dVar) {
        this.f8730j = dVar;
    }

    @Override // e3.i
    public final void k() {
    }
}
