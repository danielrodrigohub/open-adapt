package de;

/* JADX INFO: compiled from: Segment.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f6216a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6217b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6218c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f6219d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f6220e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e0 f6221f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e0 f6222g;

    public e0() {
        this.f6216a = new byte[8192];
        this.f6220e = true;
        this.f6219d = false;
    }

    public final e0 a() {
        e0 e0Var = this.f6221f;
        if (e0Var == this) {
            e0Var = null;
        }
        e0 e0Var2 = this.f6222g;
        p4.h.g(e0Var2);
        e0Var2.f6221f = this.f6221f;
        e0 e0Var3 = this.f6221f;
        p4.h.g(e0Var3);
        e0Var3.f6222g = this.f6222g;
        this.f6221f = null;
        this.f6222g = null;
        return e0Var;
    }

    public final e0 b(e0 e0Var) {
        e0Var.f6222g = this;
        e0Var.f6221f = this.f6221f;
        e0 e0Var2 = this.f6221f;
        p4.h.g(e0Var2);
        e0Var2.f6222g = e0Var;
        this.f6221f = e0Var;
        return e0Var;
    }

    public final e0 c() {
        this.f6219d = true;
        return new e0(this.f6216a, this.f6217b, this.f6218c, true, false);
    }

    public final void d(e0 e0Var, int i10) {
        if (!e0Var.f6220e) {
            throw new IllegalStateException("only owner can write".toString());
        }
        int i11 = e0Var.f6218c;
        int i12 = i11 + i10;
        if (i12 > 8192) {
            if (e0Var.f6219d) {
                throw new IllegalArgumentException();
            }
            int i13 = e0Var.f6217b;
            if (i12 - i13 > 8192) {
                throw new IllegalArgumentException();
            }
            byte[] bArr = e0Var.f6216a;
            gd.g.j(bArr, bArr, 0, i13, i11);
            e0Var.f6218c -= e0Var.f6217b;
            e0Var.f6217b = 0;
        }
        byte[] bArr2 = this.f6216a;
        byte[] bArr3 = e0Var.f6216a;
        int i14 = e0Var.f6218c;
        int i15 = this.f6217b;
        gd.g.j(bArr2, bArr3, i14, i15, i15 + i10);
        e0Var.f6218c += i10;
        this.f6217b += i10;
    }

    public e0(byte[] bArr, int i10, int i11, boolean z10, boolean z11) {
        p4.h.j(bArr, "data");
        this.f6216a = bArr;
        this.f6217b = i10;
        this.f6218c = i11;
        this.f6219d = z10;
        this.f6220e = z11;
    }
}
