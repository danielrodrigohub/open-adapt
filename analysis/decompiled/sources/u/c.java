package u;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.R;

/* JADX INFO: compiled from: MotionHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends androidx.constraintlayout.widget.b implements d.c {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f15599p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f15600q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public float f15601r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public View[] f15602s;

    @Override // u.d.c
    public final void a() {
    }

    @Override // u.d.c
    public final void b() {
    }

    public float getProgress() {
        return this.f15601r;
    }

    @Override // androidx.constraintlayout.widget.b
    public final void i(AttributeSet attributeSet) {
        super.i(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.MotionHelper);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.MotionHelper_onShow) {
                    this.f15599p = typedArrayObtainStyledAttributes.getBoolean(index, this.f15599p);
                } else if (index == R.styleable.MotionHelper_onHide) {
                    this.f15600q = typedArrayObtainStyledAttributes.getBoolean(index, this.f15600q);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setProgress(float f10) {
        this.f15601r = f10;
        int i10 = 0;
        if (this.f1592i <= 0) {
            ViewGroup viewGroup = (ViewGroup) getParent();
            int childCount = viewGroup.getChildCount();
            while (i10 < childCount) {
                boolean z10 = viewGroup.getChildAt(i10) instanceof c;
                i10++;
            }
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) getParent();
        View[] viewArr = this.f1597n;
        if (viewArr == null || viewArr.length != this.f1592i) {
            this.f1597n = new View[this.f1592i];
        }
        for (int i11 = 0; i11 < this.f1592i; i11++) {
            this.f1597n[i11] = constraintLayout.d(this.f1591h[i11]);
        }
        this.f15602s = this.f1597n;
        while (i10 < this.f1592i) {
            View view = this.f15602s[i10];
            i10++;
        }
    }
}
