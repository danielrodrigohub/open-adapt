package m7;

/* JADX INFO: compiled from: RawMessageInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class b1 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p0 f10618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f10620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f10621d;

    public b1(p0 p0Var, String str, Object[] objArr) {
        this.f10618a = p0Var;
        this.f10619b = str;
        this.f10620c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f10621d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 < 55296) {
                this.f10621d = i10 | (cCharAt2 << i12);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i12;
                i12 += 13;
                i11 = i13;
            }
        }
    }

    @Override // m7.n0
    public final int a() {
        return (this.f10621d & 1) == 1 ? 1 : 2;
    }

    @Override // m7.n0
    public final boolean b() {
        return (this.f10621d & 2) == 2;
    }

    @Override // m7.n0
    public final p0 c() {
        return this.f10618a;
    }
}
