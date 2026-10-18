package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* JADX INFO: loaded from: classes.dex */
public class Barrier extends b {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1510p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f1511q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public s.a f1512r;

    public Barrier(Context context) {
        super(context);
        super.setVisibility(8);
    }

    public boolean getAllowsGoneWidget() {
        return this.f1512r.f14815u0;
    }

    public int getMargin() {
        return this.f1512r.f14816v0;
    }

    public int getType() {
        return this.f1510p;
    }

    @Override // androidx.constraintlayout.widget.b
    public final void i(AttributeSet attributeSet) {
        super.i(attributeSet);
        this.f1512r = new s.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R.styleable.ConstraintLayout_Layout_barrierDirection) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierAllowsGoneWidgets) {
                    this.f1512r.f14815u0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == R.styleable.ConstraintLayout_Layout_barrierMargin) {
                    this.f1512r.f14816v0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1594k = this.f1512r;
        k();
    }

    @Override // androidx.constraintlayout.widget.b
    public final void j(s.d dVar, boolean z10) {
        int i10 = this.f1510p;
        this.f1511q = i10;
        if (z10) {
            if (i10 == 5) {
                this.f1511q = 1;
            } else if (i10 == 6) {
                this.f1511q = 0;
            }
        } else if (i10 == 5) {
            this.f1511q = 0;
        } else if (i10 == 6) {
            this.f1511q = 1;
        }
        if (dVar instanceof s.a) {
            ((s.a) dVar).f14814t0 = this.f1511q;
        }
    }

    public void setAllowsGoneWidget(boolean z10) {
        this.f1512r.f14815u0 = z10;
    }

    public void setDpMargin(int i10) {
        this.f1512r.f14816v0 = (int) ((i10 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i10) {
        this.f1512r.f14816v0 = i10;
    }

    public void setType(int i10) {
        this.f1510p = i10;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
