package androidx.recyclerview.widget;

/* JADX INFO: compiled from: BatchingListUpdateCallback.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f2608a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2609b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f2610c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f2611d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f2612e = null;

    public c(y yVar) {
        this.f2608a = yVar;
    }

    @Override // androidx.recyclerview.widget.y
    public final void a(int i10, int i11) {
        int i12;
        if (this.f2609b == 2 && (i12 = this.f2610c) >= i10 && i12 <= i10 + i11) {
            this.f2611d += i11;
            this.f2610c = i10;
        } else {
            e();
            this.f2610c = i10;
            this.f2611d = i11;
            this.f2609b = 2;
        }
    }

    @Override // androidx.recyclerview.widget.y
    public final void b(int i10, int i11) {
        e();
        this.f2608a.b(i10, i11);
    }

    @Override // androidx.recyclerview.widget.y
    public final void c(int i10, int i11) {
        int i12;
        if (this.f2609b == 1 && i10 >= (i12 = this.f2610c)) {
            int i13 = this.f2611d;
            if (i10 <= i12 + i13) {
                this.f2611d = i13 + i11;
                this.f2610c = Math.min(i10, i12);
                return;
            }
        }
        e();
        this.f2610c = i10;
        this.f2611d = i11;
        this.f2609b = 1;
    }

    @Override // androidx.recyclerview.widget.y
    public final void d(int i10, int i11, Object obj) {
        int i12;
        int i13;
        int i14;
        if (this.f2609b == 3 && i10 <= (i13 = this.f2611d + (i12 = this.f2610c)) && (i14 = i10 + i11) >= i12 && this.f2612e == obj) {
            this.f2610c = Math.min(i10, i12);
            this.f2611d = Math.max(i13, i14) - this.f2610c;
            return;
        }
        e();
        this.f2610c = i10;
        this.f2611d = i11;
        this.f2612e = obj;
        this.f2609b = 3;
    }

    public final void e() {
        int i10 = this.f2609b;
        if (i10 == 0) {
            return;
        }
        if (i10 == 1) {
            this.f2608a.c(this.f2610c, this.f2611d);
        } else if (i10 == 2) {
            this.f2608a.a(this.f2610c, this.f2611d);
        } else if (i10 == 3) {
            this.f2608a.d(this.f2610c, this.f2611d, this.f2612e);
        }
        this.f2612e = null;
        this.f2609b = 0;
    }
}
