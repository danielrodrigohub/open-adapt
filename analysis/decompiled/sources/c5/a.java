package c5;

import android.graphics.Bitmap;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.zip.Inflater;
import m5.g0;
import m5.w;
import z4.f;
import z4.g;
import z4.i;

/* JADX INFO: compiled from: PgsDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final w f4229m = new w();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final w f4230n = new w();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final C0073a f4231o = new C0073a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Inflater f4232p;

    /* JADX INFO: renamed from: c5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PgsDecoder.java */
    public static final class C0073a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final w f4233a = new w();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f4234b = new int[256];

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f4235c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4236d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4237e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4238f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4239g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f4240h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f4241i;

        public final void a() {
            this.f4236d = 0;
            this.f4237e = 0;
            this.f4238f = 0;
            this.f4239g = 0;
            this.f4240h = 0;
            this.f4241i = 0;
            this.f4233a.A(0);
            this.f4235c = false;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:21:0x006d  */
    @Override // z4.f
    public final g k(byte[] bArr, int i10, boolean z10) throws i {
        ArrayList arrayList;
        z4.a aVar;
        w wVar;
        int i11;
        int iT;
        int i12;
        int i13;
        int iV;
        a aVar2 = this;
        aVar2.f4229m.B(bArr, i10);
        w wVar2 = aVar2.f4229m;
        if (wVar2.f10477c - wVar2.f10476b > 0 && wVar2.b() == 120) {
            if (aVar2.f4232p == null) {
                aVar2.f4232p = new Inflater();
            }
            if (g0.H(wVar2, aVar2.f4230n, aVar2.f4232p)) {
                w wVar3 = aVar2.f4230n;
                wVar2.B(wVar3.f10475a, wVar3.f10477c);
            }
        }
        aVar2.f4231o.a();
        ArrayList arrayList2 = new ArrayList();
        while (true) {
            w wVar4 = aVar2.f4229m;
            int i14 = wVar4.f10477c;
            if (i14 - wVar4.f10476b < 3) {
                return new b(Collections.unmodifiableList(arrayList2));
            }
            C0073a c0073a = aVar2.f4231o;
            int iT2 = wVar4.t();
            int iY = wVar4.y();
            int i15 = wVar4.f10476b + iY;
            if (i15 > i14) {
                wVar4.D(i14);
                arrayList = arrayList2;
                aVar = null;
            } else {
                if (iT2 != 128) {
                    switch (iT2) {
                        case 20:
                            Objects.requireNonNull(c0073a);
                            if (iY % 5 != 2) {
                                arrayList = arrayList2;
                            } else {
                                wVar4.E(2);
                                Arrays.fill(c0073a.f4234b, 0);
                                int i16 = 0;
                                for (int i17 = iY / 5; i16 < i17; i17 = i17) {
                                    int iT3 = wVar4.t();
                                    double dT = wVar4.t();
                                    double dT2 = wVar4.t() - 128;
                                    double dT3 = wVar4.t() - 128;
                                    c0073a.f4234b[iT3] = g0.i((int) ((dT3 * 1.772d) + dT), 0, 255) | (g0.i((int) ((1.402d * dT2) + dT), 0, 255) << 16) | (wVar4.t() << 24) | (g0.i((int) ((dT - (0.34414d * dT3)) - (dT2 * 0.71414d)), 0, 255) << 8);
                                    i16++;
                                    arrayList2 = arrayList2;
                                }
                                arrayList = arrayList2;
                                c0073a.f4235c = true;
                            }
                            break;
                        case 21:
                            Objects.requireNonNull(c0073a);
                            if (iY >= 4) {
                                wVar4.E(3);
                                int i18 = iY - 4;
                                if (!((128 & wVar4.t()) != 0)) {
                                    w wVar5 = c0073a.f4233a;
                                    i12 = wVar5.f10476b;
                                    i13 = wVar5.f10477c;
                                    if (i12 < i13 && i18 > 0) {
                                        int iMin = Math.min(i18, i13 - i12);
                                        wVar4.d(c0073a.f4233a.f10475a, i12, iMin);
                                        c0073a.f4233a.D(i12 + iMin);
                                    }
                                } else if (i18 >= 7 && (iV = wVar4.v()) >= 4) {
                                    c0073a.f4240h = wVar4.y();
                                    c0073a.f4241i = wVar4.y();
                                    c0073a.f4233a.A(iV - 4);
                                    i18 -= 7;
                                    w wVar6 = c0073a.f4233a;
                                    i12 = wVar6.f10476b;
                                    i13 = wVar6.f10477c;
                                    if (i12 < i13) {
                                        int iMin2 = Math.min(i18, i13 - i12);
                                        wVar4.d(c0073a.f4233a.f10475a, i12, iMin2);
                                        c0073a.f4233a.D(i12 + iMin2);
                                    }
                                }
                            }
                            arrayList = arrayList2;
                            break;
                        case 22:
                            Objects.requireNonNull(c0073a);
                            if (iY >= 19) {
                                c0073a.f4236d = wVar4.y();
                                c0073a.f4237e = wVar4.y();
                                wVar4.E(11);
                                c0073a.f4238f = wVar4.y();
                                c0073a.f4239g = wVar4.y();
                            }
                            arrayList = arrayList2;
                            break;
                        default:
                            arrayList = arrayList2;
                            break;
                    }
                    aVar = null;
                } else {
                    arrayList = arrayList2;
                    if (c0073a.f4236d == 0 || c0073a.f4237e == 0 || c0073a.f4240h == 0 || c0073a.f4241i == 0 || (i11 = (wVar = c0073a.f4233a).f10477c) == 0 || wVar.f10476b != i11 || !c0073a.f4235c) {
                        aVar = null;
                    } else {
                        wVar.D(0);
                        int i19 = c0073a.f4240h * c0073a.f4241i;
                        int[] iArr = new int[i19];
                        int i20 = 0;
                        while (i20 < i19) {
                            int iT4 = c0073a.f4233a.t();
                            if (iT4 != 0) {
                                iT = i20 + 1;
                                iArr[i20] = c0073a.f4234b[iT4];
                            } else {
                                int iT5 = c0073a.f4233a.t();
                                if (iT5 != 0) {
                                    iT = ((iT5 & 64) == 0 ? iT5 & 63 : ((iT5 & 63) << 8) | c0073a.f4233a.t()) + i20;
                                    Arrays.fill(iArr, i20, iT, (iT5 & 128) == 0 ? 0 : c0073a.f4234b[c0073a.f4233a.t()]);
                                }
                            }
                            i20 = iT;
                        }
                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iArr, c0073a.f4240h, c0073a.f4241i, Bitmap.Config.ARGB_8888);
                        float f10 = c0073a.f4238f;
                        float f11 = c0073a.f4236d;
                        float f12 = f10 / f11;
                        float f13 = c0073a.f4239g;
                        float f14 = c0073a.f4237e;
                        aVar = new z4.a(null, null, null, bitmapCreateBitmap, f13 / f14, 0, 0, f12, 0, Integer.MIN_VALUE, -3.4028235E38f, c0073a.f4240h / f11, c0073a.f4241i / f14, false, -16777216, Integer.MIN_VALUE, 0.0f);
                    }
                    c0073a.a();
                }
                wVar4.D(i15);
            }
            if (aVar != null) {
                arrayList.add(aVar);
            }
            aVar2 = this;
            arrayList2 = arrayList;
        }
    }
}
