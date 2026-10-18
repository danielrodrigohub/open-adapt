package b7;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends i.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3397h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f3398i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f3399j;

    public h(i iVar) {
        this.f3399j = iVar;
        this.f3398i = iVar.size();
    }

    public final byte a() {
        int i10 = this.f3397h;
        if (i10 >= this.f3398i) {
            throw new NoSuchElementException();
        }
        this.f3397h = i10 + 1;
        return this.f3399j.n(i10);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3397h < this.f3398i;
    }
}
