package e2;

import android.graphics.PointF;
import b2.n;
import java.util.List;

/* JADX INFO: compiled from: AnimatableSplitDimensionPathValue.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements l<PointF, PointF> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f6303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final b f6304b;

    public i(b bVar, b bVar2) {
        this.f6303a = bVar;
        this.f6304b = bVar2;
    }

    @Override // e2.l
    public final b2.a<PointF, PointF> a() {
        return new n(this.f6303a.a(), this.f6304b.a());
    }

    @Override // e2.l
    public final List<l2.a<PointF>> b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // e2.l
    public final boolean isStatic() {
        return this.f6303a.isStatic() && this.f6304b.isStatic();
    }
}
