package m6;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: compiled from: RelativeCornerSize.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f10536a;

    public g(float f10) {
        this.f10536a = f10;
    }

    @Override // m6.c
    public final float a(RectF rectF) {
        return rectF.height() * this.f10536a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && this.f10536a == ((g) obj).f10536a;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f10536a)});
    }
}
