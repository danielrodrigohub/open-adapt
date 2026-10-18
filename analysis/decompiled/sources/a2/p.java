package a2;

import android.graphics.PointF;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import y1.e0;

/* JADX INFO: compiled from: RoundedCornersContent.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements r, b2.a.InterfaceC0052a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final e0 f183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b2.a<Float, Float> f184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public f2.l f185c;

    public p(e0 e0Var, g2.b bVar, f2.k kVar) {
        this.f183a = e0Var;
        Objects.requireNonNull(kVar);
        b2.a<Float, Float> aVarA = kVar.f7019b.a();
        this.f184b = aVarA;
        bVar.f(aVarA);
        aVarA.a(this);
    }

    public static int f(int i10, int i11) {
        int i12 = i10 / i11;
        if ((i10 ^ i11) < 0 && i11 * i12 != i10) {
            i12--;
        }
        return i10 - (i12 * i11);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.util.ArrayList, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.ArrayList, java.util.List, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.util.ArrayList, java.util.List, java.util.List<d2.a>] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.ArrayList, java.util.List<d2.a>] */
    @Override // a2.r
    public final f2.l c(f2.l lVar) {
        int i10;
        f2.l lVar2 = lVar;
        ?? r10 = lVar2.f7020a;
        if (r10.size() <= 2) {
            return lVar2;
        }
        float fFloatValue = this.f184b.f().floatValue();
        if (fFloatValue == 0.0f) {
            return lVar2;
        }
        ?? r11 = lVar2.f7020a;
        boolean z10 = lVar2.f7022c;
        int size = r11.size() - 1;
        int i11 = 0;
        int i12 = 0;
        while (size >= 0) {
            d2.a aVar = (d2.a) r11.get(size);
            int i13 = size - 1;
            d2.a aVar2 = (d2.a) r11.get(f(i13, r11.size()));
            PointF pointF = (size != 0 || z10) ? aVar2.f5963c : lVar2.f7021b;
            i12 = (((size != 0 || z10) ? aVar2.f5962b : pointF).equals(pointF) && aVar.f5961a.equals(pointF) && !(!lVar2.f7022c && size == 0 && size == r11.size() - 1)) ? i12 + 2 : i12 + 1;
            size = i13;
        }
        f2.l lVar3 = this.f185c;
        if (lVar3 == null || lVar3.f7020a.size() != i12) {
            ArrayList arrayList = new ArrayList(i12);
            for (int i14 = 0; i14 < i12; i14++) {
                arrayList.add(new d2.a());
            }
            this.f185c = new f2.l(new PointF(0.0f, 0.0f), false, arrayList);
        }
        f2.l lVar4 = this.f185c;
        lVar4.f7022c = z10;
        PointF pointF2 = lVar2.f7021b;
        lVar4.a(pointF2.x, pointF2.y);
        ?? r12 = lVar4.f7020a;
        boolean z11 = lVar2.f7022c;
        int i15 = 0;
        for (?? r13 = r10; i11 < r13.size(); r13 = r13) {
            d2.a aVar3 = (d2.a) r13.get(i11);
            d2.a aVar4 = (d2.a) r13.get(f(i11 - 1, r13.size()));
            d2.a aVar5 = (d2.a) r13.get(f(i11 - 2, r13.size()));
            PointF pointF3 = (i11 != 0 || z11) ? aVar4.f5963c : lVar2.f7021b;
            PointF pointF4 = (i11 != 0 || z11) ? aVar4.f5962b : pointF3;
            PointF pointF5 = aVar3.f5961a;
            PointF pointF6 = aVar5.f5963c;
            PointF pointF7 = aVar3.f5963c;
            boolean z12 = !lVar2.f7022c && i11 == 0 && i11 == r13.size() + (-1);
            if (pointF4.equals(pointF3) && pointF5.equals(pointF3) && !z12) {
                float f10 = pointF3.x;
                float f11 = f10 - pointF6.x;
                float f12 = pointF3.y;
                float f13 = f12 - pointF6.y;
                float f14 = pointF7.x - f10;
                float f15 = pointF7.y - f12;
                i10 = i11;
                float fHypot = (float) Math.hypot(f11, f13);
                float fHypot2 = (float) Math.hypot(f14, f15);
                float fMin = Math.min(fFloatValue / fHypot, 0.5f);
                float fMin2 = Math.min(fFloatValue / fHypot2, 0.5f);
                float f16 = pointF3.x;
                float fC = androidx.appcompat.widget.o.c(pointF6.x, f16, fMin, f16);
                float f17 = pointF3.y;
                float fC2 = androidx.appcompat.widget.o.c(pointF6.y, f17, fMin, f17);
                float fC3 = androidx.appcompat.widget.o.c(pointF7.x, f16, fMin2, f16);
                float fC4 = androidx.appcompat.widget.o.c(pointF7.y, f17, fMin2, f17);
                float f18 = fC - ((fC - f16) * 0.5519f);
                float f19 = fC2 - ((fC2 - f17) * 0.5519f);
                float f20 = fC3 - ((fC3 - f16) * 0.5519f);
                float f21 = fC4 - ((fC4 - f17) * 0.5519f);
                d2.a aVar6 = (d2.a) r12.get(f(i15 - 1, r12.size()));
                d2.a aVar7 = (d2.a) r12.get(i15);
                aVar6.b(fC, fC2);
                aVar6.c(fC, fC2);
                if (i10 == 0) {
                    lVar4.a(fC, fC2);
                }
                aVar7.a(f18, f19);
                i15++;
                d2.a aVar8 = (d2.a) r12.get(i15);
                aVar7.b(f20, f21);
                aVar7.c(fC3, fC4);
                aVar8.a(fC3, fC4);
            } else {
                i10 = i11;
                d2.a aVar9 = (d2.a) r12.get(f(i15 - 1, r12.size()));
                d2.a aVar10 = (d2.a) r12.get(i15);
                PointF pointF8 = aVar4.f5963c;
                aVar9.b(pointF8.x, pointF8.y);
                PointF pointF9 = aVar4.f5963c;
                aVar9.c(pointF9.x, pointF9.y);
                PointF pointF10 = aVar3.f5963c;
                aVar10.a(pointF10.x, pointF10.y);
            }
            i15++;
            i11 = i10 + 1;
            lVar2 = lVar;
        }
        return lVar4;
    }

    @Override // b2.a.InterfaceC0052a
    public final void d() {
        this.f183a.invalidateSelf();
    }

    @Override // a2.b
    public final void e(List<b> list, List<b> list2) {
    }
}
