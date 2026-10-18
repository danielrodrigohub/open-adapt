package j6;

import android.graphics.Typeface;

/* JADX INFO: compiled from: CancelableFontCallback.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Typeface f9442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC0182a f9443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f9444c;

    /* JADX INFO: renamed from: j6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CancelableFontCallback.java */
    public interface InterfaceC0182a {
    }

    public a(InterfaceC0182a interfaceC0182a, Typeface typeface) {
        this.f9442a = typeface;
        this.f9443b = interfaceC0182a;
    }

    @Override // j6.f
    public final void a(int i10) {
        c(this.f9442a);
    }

    @Override // j6.f
    public final void b(Typeface typeface, boolean z10) {
        c(typeface);
    }

    public final void c(Typeface typeface) {
        if (this.f9444c) {
            return;
        }
        g6.e eVar = ((g6.d) this.f9443b).f7709a;
        if (eVar.n(typeface)) {
            eVar.k(false);
        }
    }
}
