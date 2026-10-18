package m6;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: AdjustedCornerSize.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f10493a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f10494b;

    public b(float f10, c cVar) {
        while (cVar instanceof b) {
            cVar = ((b) cVar).f10493a;
            f10 += ((b) cVar).f10494b;
        }
        this.f10493a = cVar;
        this.f10494b = f10;
    }

    @Override // m6.c
    public final float a(RectF rectF) {
        return Math.max(0.0f, this.f10493a.a(rectF) + this.f10494b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f10493a.equals(bVar.f10493a) && this.f10494b == bVar.f10494b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10493a, Float.valueOf(this.f10494b)});
    }
}
