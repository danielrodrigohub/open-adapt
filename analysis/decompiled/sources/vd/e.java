package vd;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e extends c implements b<Integer> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final a f17028k = new a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final e f17029l = new e(1, 0);

    /* JADX INFO: compiled from: Ranges.kt */
    public static final class a {
    }

    public e(int i10, int i11) {
        super(i10, i11, 1);
    }

    @Override // vd.c
    public final boolean equals(Object obj) {
        if (obj instanceof e) {
            if (!isEmpty() || !((e) obj).isEmpty()) {
                e eVar = (e) obj;
                if (this.f17021h != eVar.f17021h || this.f17022i != eVar.f17022i) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // vd.c
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f17021h * 31) + this.f17022i;
    }

    @Override // vd.c
    public final boolean isEmpty() {
        return this.f17021h > this.f17022i;
    }

    @Override // vd.b
    public final Comparable l() {
        return Integer.valueOf(this.f17022i);
    }

    public final boolean o(int i10) {
        return this.f17021h <= i10 && i10 <= this.f17022i;
    }

    @Override // vd.b
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public final Integer k() {
        return Integer.valueOf(this.f17021h);
    }

    @Override // vd.c
    public final String toString() {
        return this.f17021h + ".." + this.f17022i;
    }
}
