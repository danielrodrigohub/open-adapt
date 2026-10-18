package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class Guideline extends View {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f1582h;

    public Guideline(Context context) {
        super(context);
        this.f1582h = true;
        super.setVisibility(8);
    }

    @Override // android.view.View
    @SuppressLint({"MissingSuperCall"})
    public final void draw(Canvas canvas) {
    }

    @Override // android.view.View
    public final void onMeasure(int i10, int i11) {
        setMeasuredDimension(0, 0);
    }

    public void setFilterRedundantCalls(boolean z10) {
        this.f1582h = z10;
    }

    public void setGuidelineBegin(int i10) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        if (this.f1582h && aVar.f1531a == i10) {
            return;
        }
        aVar.f1531a = i10;
        setLayoutParams(aVar);
    }

    public void setGuidelineEnd(int i10) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        if (this.f1582h && aVar.f1533b == i10) {
            return;
        }
        aVar.f1533b = i10;
        setLayoutParams(aVar);
    }

    public void setGuidelinePercent(float f10) {
        ConstraintLayout.a aVar = (ConstraintLayout.a) getLayoutParams();
        if (this.f1582h && aVar.f1535c == f10) {
            return;
        }
        aVar.f1535c = f10;
        setLayoutParams(aVar);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1582h = true;
        super.setVisibility(8);
    }
}
