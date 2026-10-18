package vd;

import gd.w;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ProgressionIterators.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d extends w {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f17024h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f17025i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17026j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17027k;

    public d(int i10, int i11, int i12) {
        this.f17024h = i12;
        this.f17025i = i11;
        boolean z10 = true;
        if (i12 <= 0 ? i10 < i11 : i10 > i11) {
            z10 = false;
        }
        this.f17026j = z10;
        this.f17027k = z10 ? i10 : i11;
    }

    @Override // gd.w
    public final int a() {
        int i10 = this.f17027k;
        if (i10 != this.f17025i) {
            this.f17027k = this.f17024h + i10;
        } else {
            if (!this.f17026j) {
                throw new NoSuchElementException();
            }
            this.f17026j = false;
        }
        return i10;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f17026j;
    }
}
