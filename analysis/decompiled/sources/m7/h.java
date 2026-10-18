package m7;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ByteString.java */
/* JADX INFO: loaded from: classes.dex */
public final class h extends i.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10660h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10661i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f10662j;

    public h(i iVar) {
        this.f10662j = iVar;
        this.f10661i = iVar.size();
    }

    public final byte a() {
        int i10 = this.f10660h;
        if (i10 >= this.f10661i) {
            throw new NoSuchElementException();
        }
        this.f10660h = i10 + 1;
        return this.f10662j.n(i10);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f10660h < this.f10661i;
    }
}
