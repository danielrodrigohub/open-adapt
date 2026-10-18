package s2;

/* JADX INFO: compiled from: IntegerArrayAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements a<int[]> {
    @Override // s2.a
    public final String a() {
        return "IntegerArrayPool";
    }

    @Override // s2.a
    public final int b(int[] iArr) {
        return iArr.length;
    }

    @Override // s2.a
    public final int c() {
        return 4;
    }

    @Override // s2.a
    public final int[] newArray(int i10) {
        return new int[i10];
    }
}
