package androidx.recyclerview.widget;

import android.content.Context;
import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: compiled from: LinearSmoothScroller.java */
/* JADX INFO: loaded from: classes.dex */
public class x extends RecyclerView.x {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public PointF f2836k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final DisplayMetrics f2837l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f2839n;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LinearInterpolator f2834i = new LinearInterpolator();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final DecelerateInterpolator f2835j = new DecelerateInterpolator();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2838m = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f2840o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2841p = 0;

    public x(Context context) {
        this.f2837l = context.getResources().getDisplayMetrics();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    public final void c(int i10, int i11, RecyclerView.x.a aVar) {
        if (this.f2529b.f2429t.z() == 0) {
            f();
            return;
        }
        int i12 = this.f2840o;
        int i13 = i12 - i10;
        if (i12 * i13 <= 0) {
            i13 = 0;
        }
        this.f2840o = i13;
        int i14 = this.f2841p;
        int i15 = i14 - i11;
        int i16 = i14 * i15 > 0 ? i15 : 0;
        this.f2841p = i16;
        if (i13 == 0 && i16 == 0) {
            PointF pointFA = a(this.f2528a);
            if (pointFA != null) {
                float f10 = pointFA.x;
                if (f10 != 0.0f || pointFA.y != 0.0f) {
                    float f11 = pointFA.y;
                    float fSqrt = (float) Math.sqrt((f11 * f11) + (f10 * f10));
                    float f12 = pointFA.x / fSqrt;
                    pointFA.x = f12;
                    float f13 = pointFA.y / fSqrt;
                    pointFA.y = f13;
                    this.f2836k = pointFA;
                    this.f2840o = (int) (f12 * 10000.0f);
                    this.f2841p = (int) (f13 * 10000.0f);
                    aVar.b((int) (this.f2840o * 1.2f), (int) (this.f2841p * 1.2f), (int) (l(10000) * 1.2f), this.f2834i);
                    return;
                }
            }
            aVar.f2539d = this.f2528a;
            f();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.x
    public final void d() {
        this.f2841p = 0;
        this.f2840o = 0;
        this.f2836k = null;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    @Override // androidx.recyclerview.widget.RecyclerView.x
    public void e(View view, RecyclerView.y yVar, RecyclerView.x.a aVar) {
        int i10;
        int iH = h(view, m());
        PointF pointF = this.f2836k;
        if (pointF != null) {
            float f10 = pointF.y;
            if (f10 == 0.0f) {
                i10 = 0;
            } else {
                i10 = f10 > 0.0f ? 1 : -1;
            }
        } else {
            i10 = 0;
        }
        int i11 = i(view, i10);
        int iK = k((int) Math.sqrt((i11 * i11) + (iH * iH)));
        if (iK > 0) {
            aVar.b(-iH, -i11, iK, this.f2835j);
        }
    }

    public final int g(int i10, int i11, int i12, int i13, int i14) {
        if (i14 == -1) {
            return i12 - i10;
        }
        if (i14 != 0) {
            if (i14 == 1) {
                return i13 - i11;
            }
            throw new IllegalArgumentException("snap preference should be one of the constants defined in SmoothScroller, starting with SNAP_");
        }
        int i15 = i12 - i10;
        if (i15 > 0) {
            return i15;
        }
        int i16 = i13 - i11;
        if (i16 < 0) {
            return i16;
        }
        return 0;
    }

    public final int h(View view, int i10) {
        RecyclerView.m mVar = this.f2530c;
        if (mVar == null || !mVar.g()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return g(mVar.D(view) - ((ViewGroup.MarginLayoutParams) nVar).leftMargin, mVar.E(view) + ((ViewGroup.MarginLayoutParams) nVar).rightMargin, mVar.L(), mVar.f2500p - mVar.M(), i10);
    }

    public int i(View view, int i10) {
        RecyclerView.m mVar = this.f2530c;
        if (mVar == null || !mVar.h()) {
            return 0;
        }
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return g(mVar.F(view) - ((ViewGroup.MarginLayoutParams) nVar).topMargin, mVar.C(view) + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin, mVar.N(), mVar.f2501q - mVar.K(), i10);
    }

    public float j(DisplayMetrics displayMetrics) {
        return 25.0f / displayMetrics.densityDpi;
    }

    public final int k(int i10) {
        return (int) Math.ceil(((double) l(i10)) / 0.3356d);
    }

    public int l(int i10) {
        float fAbs = Math.abs(i10);
        if (!this.f2838m) {
            this.f2839n = j(this.f2837l);
            this.f2838m = true;
        }
        return (int) Math.ceil(fAbs * this.f2839n);
    }

    public final int m() {
        PointF pointF = this.f2836k;
        if (pointF != null) {
            float f10 = pointF.x;
            if (f10 != 0.0f) {
                return f10 > 0.0f ? 1 : -1;
            }
        }
        return 0;
    }
}
