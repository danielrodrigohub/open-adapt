package c3;

/* JADX INFO: compiled from: GifBitmapProvider.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements n2.a.InterfaceC0212a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final s2.d f3833a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s2.b f3834b;

    public b(s2.d dVar, s2.b bVar) {
        this.f3833a = dVar;
        this.f3834b = bVar;
    }

    public final byte[] a(int i10) {
        s2.b bVar = this.f3834b;
        return bVar == null ? new byte[i10] : (byte[]) bVar.d(i10, byte[].class);
    }
}
