package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;
import m6.g;
import m6.i;

/* JADX INFO: compiled from: RadialViewGroup.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends ConstraintLayout {
    public int A;
    public m6.f B;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final a f5601z;

    /* JADX INFO: compiled from: RadialViewGroup.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            c.this.s();
        }
    }

    public c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            view.setId(a0.e.a());
        }
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f5601z);
            handler.post(this.f5601z);
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        s();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.f5601z);
            handler.post(this.f5601z);
        }
    }

    public final void s() {
        int childCount = getChildCount();
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            if ("skip".equals(getChildAt(i11).getTag())) {
                i10++;
            }
        }
        androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
        dVar.c(this);
        float f10 = 0.0f;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int id2 = childAt.getId();
            int i13 = R.id.circle_center;
            if (id2 != i13 && !"skip".equals(childAt.getTag())) {
                int id3 = childAt.getId();
                int i14 = this.A;
                if (!dVar.f1619c.containsKey(Integer.valueOf(id3))) {
                    dVar.f1619c.put(Integer.valueOf(id3), new androidx.constraintlayout.widget.d.a());
                }
                androidx.constraintlayout.widget.d.b bVar = dVar.f1619c.get(Integer.valueOf(id3)).f1623d;
                bVar.f1678z = i13;
                bVar.A = i14;
                bVar.B = f10;
                f10 = (360.0f / (childCount - i10)) + f10;
            }
        }
        dVar.a(this);
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i10) {
        this.B.o(ColorStateList.valueOf(i10));
    }

    public c(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        m6.f fVar = new m6.f();
        this.B = fVar;
        g gVar = new g(0.5f);
        i iVar = fVar.f10495h.f10515a;
        Objects.requireNonNull(iVar);
        i.a aVar = new i.a(iVar);
        aVar.f10554e = gVar;
        aVar.f10555f = gVar;
        aVar.f10556g = gVar;
        aVar.f10557h = gVar;
        fVar.setShapeAppearanceModel(new i(aVar));
        this.B.o(ColorStateList.valueOf(-1));
        m6.f fVar2 = this.B;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.q(this, fVar2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.RadialViewGroup, i10, 0);
        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.RadialViewGroup_materialCircleRadius, 0);
        this.f5601z = new a();
        typedArrayObtainStyledAttributes.recycle();
    }
}
