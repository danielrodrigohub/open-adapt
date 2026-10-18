package b2;

import android.graphics.PointF;
import androidx.recyclerview.widget.s;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: GradientColorKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends g<f2.c> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f2.c f3189i;

    public e(List<l2.a<f2.c>> list) {
        super(list);
        f2.c cVar = list.get(0).f9896b;
        int length = cVar != null ? cVar.f6968b.length : 0;
        this.f3189i = new f2.c(new float[length], new int[length]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // b2.a
    public final Object g(l2.a aVar, float f10) {
        f2.c cVar = this.f3189i;
        f2.c cVar2 = (f2.c) aVar.f9896b;
        f2.c cVar3 = (f2.c) aVar.f9897c;
        Objects.requireNonNull(cVar);
        if (cVar2.f6968b.length != cVar3.f6968b.length) {
            StringBuilder sbC = a0.b.c("Cannot interpolate between gradients. Lengths vary (");
            sbC.append(cVar2.f6968b.length);
            sbC.append(" vs ");
            throw new IllegalArgumentException(s.a(sbC, cVar3.f6968b.length, ")"));
        }
        int i10 = 0;
        while (true) {
            int[] iArr = cVar2.f6968b;
            if (i10 >= iArr.length) {
                return this.f3189i;
            }
            float[] fArr = cVar.f6967a;
            float f11 = cVar2.f6967a[i10];
            float f12 = cVar3.f6967a[i10];
            PointF pointF = k2.f.f9637a;
            fArr[i10] = androidx.appcompat.widget.o.c(f12, f11, f10, f11);
            cVar.f6968b[i10] = androidx.appcompat.widget.p.e(f10, iArr[i10], cVar3.f6968b[i10]);
            i10++;
        }
    }
}
