package b7;

/* JADX INFO: compiled from: RawMessageInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class c1 implements o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final q0 f3375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f3376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object[] f3377c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f3378d;

    public c1(q0 q0Var, String str, Object[] objArr) {
        this.f3375a = q0Var;
        this.f3376b = str;
        this.f3377c = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.f3378d = cCharAt;
            return;
        }
        int i10 = cCharAt & 8191;
        int i11 = 1;
        int i12 = 13;
        while (true) {
            int i13 = i11 + 1;
            char cCharAt2 = str.charAt(i11);
            if (cCharAt2 < 55296) {
                this.f3378d = i10 | (cCharAt2 << i12);
                return;
            } else {
                i10 |= (cCharAt2 & 8191) << i12;
                i12 += 13;
                i11 = i13;
            }
        }
    }

    @Override // b7.o0
    public final int a() {
        return (this.f3378d & 1) == 1 ? 1 : 2;
    }

    @Override // b7.o0
    public final boolean b() {
        return (this.f3378d & 2) == 2;
    }

    @Override // b7.o0
    public final q0 c() {
        return this.f3375a;
    }
}
