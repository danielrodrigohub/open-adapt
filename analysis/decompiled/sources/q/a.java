package q;

import java.util.Arrays;

/* JADX INFO: compiled from: ArrayLinkedVariables.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements b.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f13441b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f13442c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13440a = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13443d = 8;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f13444e = new int[8];

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f13445f = new int[8];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f13446g = new float[8];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13447h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13448i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13449j = false;

    public a(b bVar, c cVar) {
        this.f13441b = bVar;
        this.f13442c = cVar;
    }

    @Override // q.b.a
    public final float a(int i10) {
        int i11 = this.f13447h;
        for (int i12 = 0; i11 != -1 && i12 < this.f13440a; i12++) {
            if (i12 == i10) {
                return this.f13446g[i11];
            }
            i11 = this.f13445f[i11];
        }
        return 0.0f;
    }

    @Override // q.b.a
    public final void b(h hVar, float f10, boolean z10) {
        if (f10 <= -0.001f || f10 >= 0.001f) {
            int i10 = this.f13447h;
            if (i10 == -1) {
                this.f13447h = 0;
                this.f13446g[0] = f10;
                this.f13444e[0] = hVar.f13486i;
                this.f13445f[0] = -1;
                hVar.f13496s++;
                hVar.b(this.f13441b);
                this.f13440a++;
                if (this.f13449j) {
                    return;
                }
                int i11 = this.f13448i + 1;
                this.f13448i = i11;
                int[] iArr = this.f13444e;
                if (i11 >= iArr.length) {
                    this.f13449j = true;
                    this.f13448i = iArr.length - 1;
                    return;
                }
                return;
            }
            int i12 = -1;
            for (int i13 = 0; i10 != -1 && i13 < this.f13440a; i13++) {
                int[] iArr2 = this.f13444e;
                int i14 = iArr2[i10];
                int i15 = hVar.f13486i;
                if (i14 == i15) {
                    float[] fArr = this.f13446g;
                    float f11 = fArr[i10] + f10;
                    if (f11 > -0.001f && f11 < 0.001f) {
                        f11 = 0.0f;
                    }
                    fArr[i10] = f11;
                    if (f11 == 0.0f) {
                        if (i10 == this.f13447h) {
                            this.f13447h = this.f13445f[i10];
                        } else {
                            int[] iArr3 = this.f13445f;
                            iArr3[i12] = iArr3[i10];
                        }
                        if (z10) {
                            hVar.g(this.f13441b);
                        }
                        if (this.f13449j) {
                            this.f13448i = i10;
                        }
                        hVar.f13496s--;
                        this.f13440a--;
                        return;
                    }
                    return;
                }
                if (iArr2[i10] < i15) {
                    i12 = i10;
                }
                i10 = this.f13445f[i10];
            }
            int length = this.f13448i;
            int i16 = length + 1;
            if (this.f13449j) {
                int[] iArr4 = this.f13444e;
                if (iArr4[length] != -1) {
                    length = iArr4.length;
                }
            } else {
                length = i16;
            }
            int[] iArr5 = this.f13444e;
            if (length >= iArr5.length && this.f13440a < iArr5.length) {
                int i17 = 0;
                while (true) {
                    int[] iArr6 = this.f13444e;
                    if (i17 >= iArr6.length) {
                        break;
                    }
                    if (iArr6[i17] == -1) {
                        length = i17;
                        break;
                    }
                    i17++;
                }
            }
            int[] iArr7 = this.f13444e;
            if (length >= iArr7.length) {
                length = iArr7.length;
                int i18 = this.f13443d * 2;
                this.f13443d = i18;
                this.f13449j = false;
                this.f13448i = length - 1;
                this.f13446g = Arrays.copyOf(this.f13446g, i18);
                this.f13444e = Arrays.copyOf(this.f13444e, this.f13443d);
                this.f13445f = Arrays.copyOf(this.f13445f, this.f13443d);
            }
            this.f13444e[length] = hVar.f13486i;
            this.f13446g[length] = f10;
            if (i12 != -1) {
                int[] iArr8 = this.f13445f;
                iArr8[length] = iArr8[i12];
                iArr8[i12] = length;
            } else {
                this.f13445f[length] = this.f13447h;
                this.f13447h = length;
            }
            hVar.f13496s++;
            hVar.b(this.f13441b);
            this.f13440a++;
            if (!this.f13449j) {
                this.f13448i++;
            }
            int i19 = this.f13448i;
            int[] iArr9 = this.f13444e;
            if (i19 >= iArr9.length) {
                this.f13449j = true;
                this.f13448i = iArr9.length - 1;
            }
        }
    }

    @Override // q.b.a
    public final float c(h hVar) {
        int i10 = this.f13447h;
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            if (this.f13444e[i10] == hVar.f13486i) {
                return this.f13446g[i10];
            }
            i10 = this.f13445f[i10];
        }
        return 0.0f;
    }

    @Override // q.b.a
    public final void clear() {
        int i10 = this.f13447h;
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            h hVar = ((h[]) this.f13442c.f13458d)[this.f13444e[i10]];
            if (hVar != null) {
                hVar.g(this.f13441b);
            }
            i10 = this.f13445f[i10];
        }
        this.f13447h = -1;
        this.f13448i = -1;
        this.f13449j = false;
        this.f13440a = 0;
    }

    @Override // q.b.a
    public final void d(h hVar, float f10) {
        if (f10 == 0.0f) {
            h(hVar, true);
            return;
        }
        int i10 = this.f13447h;
        if (i10 == -1) {
            this.f13447h = 0;
            this.f13446g[0] = f10;
            this.f13444e[0] = hVar.f13486i;
            this.f13445f[0] = -1;
            hVar.f13496s++;
            hVar.b(this.f13441b);
            this.f13440a++;
            if (this.f13449j) {
                return;
            }
            int i11 = this.f13448i + 1;
            this.f13448i = i11;
            int[] iArr = this.f13444e;
            if (i11 >= iArr.length) {
                this.f13449j = true;
                this.f13448i = iArr.length - 1;
                return;
            }
            return;
        }
        int i12 = -1;
        for (int i13 = 0; i10 != -1 && i13 < this.f13440a; i13++) {
            int[] iArr2 = this.f13444e;
            int i14 = iArr2[i10];
            int i15 = hVar.f13486i;
            if (i14 == i15) {
                this.f13446g[i10] = f10;
                return;
            }
            if (iArr2[i10] < i15) {
                i12 = i10;
            }
            i10 = this.f13445f[i10];
        }
        int length = this.f13448i;
        int i16 = length + 1;
        if (this.f13449j) {
            int[] iArr3 = this.f13444e;
            if (iArr3[length] != -1) {
                length = iArr3.length;
            }
        } else {
            length = i16;
        }
        int[] iArr4 = this.f13444e;
        if (length >= iArr4.length && this.f13440a < iArr4.length) {
            int i17 = 0;
            while (true) {
                int[] iArr5 = this.f13444e;
                if (i17 >= iArr5.length) {
                    break;
                }
                if (iArr5[i17] == -1) {
                    length = i17;
                    break;
                }
                i17++;
            }
        }
        int[] iArr6 = this.f13444e;
        if (length >= iArr6.length) {
            length = iArr6.length;
            int i18 = this.f13443d * 2;
            this.f13443d = i18;
            this.f13449j = false;
            this.f13448i = length - 1;
            this.f13446g = Arrays.copyOf(this.f13446g, i18);
            this.f13444e = Arrays.copyOf(this.f13444e, this.f13443d);
            this.f13445f = Arrays.copyOf(this.f13445f, this.f13443d);
        }
        this.f13444e[length] = hVar.f13486i;
        this.f13446g[length] = f10;
        if (i12 != -1) {
            int[] iArr7 = this.f13445f;
            iArr7[length] = iArr7[i12];
            iArr7[i12] = length;
        } else {
            this.f13445f[length] = this.f13447h;
            this.f13447h = length;
        }
        hVar.f13496s++;
        hVar.b(this.f13441b);
        int i19 = this.f13440a + 1;
        this.f13440a = i19;
        if (!this.f13449j) {
            this.f13448i++;
        }
        int[] iArr8 = this.f13444e;
        if (i19 >= iArr8.length) {
            this.f13449j = true;
        }
        if (this.f13448i >= iArr8.length) {
            this.f13449j = true;
            this.f13448i = iArr8.length - 1;
        }
    }

    @Override // q.b.a
    public final int e() {
        return this.f13440a;
    }

    @Override // q.b.a
    public final float f(b bVar, boolean z10) {
        float fC = c(bVar.f13450a);
        h(bVar.f13450a, z10);
        b.a aVar = bVar.f13453d;
        int iE = aVar.e();
        for (int i10 = 0; i10 < iE; i10++) {
            h hVarG = aVar.g(i10);
            b(hVarG, aVar.c(hVarG) * fC, z10);
        }
        return fC;
    }

    @Override // q.b.a
    public final h g(int i10) {
        int i11 = this.f13447h;
        for (int i12 = 0; i11 != -1 && i12 < this.f13440a; i12++) {
            if (i12 == i10) {
                return ((h[]) this.f13442c.f13458d)[this.f13444e[i11]];
            }
            i11 = this.f13445f[i11];
        }
        return null;
    }

    @Override // q.b.a
    public final float h(h hVar, boolean z10) {
        int i10 = this.f13447h;
        if (i10 == -1) {
            return 0.0f;
        }
        int i11 = 0;
        int i12 = -1;
        while (i10 != -1 && i11 < this.f13440a) {
            if (this.f13444e[i10] == hVar.f13486i) {
                if (i10 == this.f13447h) {
                    this.f13447h = this.f13445f[i10];
                } else {
                    int[] iArr = this.f13445f;
                    iArr[i12] = iArr[i10];
                }
                if (z10) {
                    hVar.g(this.f13441b);
                }
                hVar.f13496s--;
                this.f13440a--;
                this.f13444e[i10] = -1;
                if (this.f13449j) {
                    this.f13448i = i10;
                }
                return this.f13446g[i10];
            }
            i11++;
            i12 = i10;
            i10 = this.f13445f[i10];
        }
        return 0.0f;
    }

    @Override // q.b.a
    public final boolean i(h hVar) {
        int i10 = this.f13447h;
        if (i10 == -1) {
            return false;
        }
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            if (this.f13444e[i10] == hVar.f13486i) {
                return true;
            }
            i10 = this.f13445f[i10];
        }
        return false;
    }

    @Override // q.b.a
    public final void j(float f10) {
        int i10 = this.f13447h;
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            float[] fArr = this.f13446g;
            fArr[i10] = fArr[i10] / f10;
            i10 = this.f13445f[i10];
        }
    }

    @Override // q.b.a
    public final void k() {
        int i10 = this.f13447h;
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            float[] fArr = this.f13446g;
            fArr[i10] = fArr[i10] * (-1.0f);
            i10 = this.f13445f[i10];
        }
    }

    public final String toString() {
        int i10 = this.f13447h;
        String string = "";
        for (int i11 = 0; i10 != -1 && i11 < this.f13440a; i11++) {
            StringBuilder sbC = a0.b.c(androidx.recyclerview.widget.d.c(string, " -> "));
            sbC.append(this.f13446g[i10]);
            sbC.append(" : ");
            StringBuilder sbC2 = a0.b.c(sbC.toString());
            sbC2.append(((h[]) this.f13442c.f13458d)[this.f13444e[i10]]);
            string = sbC2.toString();
            i10 = this.f13445f[i10];
        }
        return string;
    }
}
