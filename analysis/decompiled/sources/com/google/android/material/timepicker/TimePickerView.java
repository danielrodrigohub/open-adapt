package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {
    public static final /* synthetic */ int B = 0;
    public final a A;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final MaterialButtonToggleGroup f5597z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TimePickerView timePickerView = TimePickerView.this;
            int i10 = TimePickerView.B;
            Objects.requireNonNull(timePickerView);
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        a aVar = new a();
        this.A = aVar;
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.f5597z = materialButtonToggleGroup;
        materialButtonToggleGroup.f5100j.add(new d(this));
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        f fVar = new f(new GestureDetector(getContext(), new e(this)));
        chip.setOnTouchListener(fVar);
        chip2.setOnTouchListener(fVar);
        int i10 = R.id.selection_type;
        chip.setTag(i10, 12);
        chip2.setTag(i10, 10);
        chip.setOnClickListener(aVar);
        chip2.setOnClickListener(aVar);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        s();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        if (view == this && i10 == 0) {
            s();
        }
    }

    public final void s() {
        androidx.constraintlayout.widget.d.a aVar;
        if (this.f5597z.getVisibility() == 0) {
            androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
            dVar.c(this);
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            char c10 = a0.e.d(this) == 0 ? (char) 2 : (char) 1;
            int i10 = R.id.material_clock_display;
            if (dVar.f1619c.containsKey(Integer.valueOf(i10)) && (aVar = dVar.f1619c.get(Integer.valueOf(i10))) != null) {
                switch (c10) {
                    case 1:
                        androidx.constraintlayout.widget.d.b bVar = aVar.f1623d;
                        bVar.f1654i = -1;
                        bVar.f1652h = -1;
                        bVar.F = -1;
                        bVar.M = Integer.MIN_VALUE;
                        break;
                    case 2:
                        androidx.constraintlayout.widget.d.b bVar2 = aVar.f1623d;
                        bVar2.f1658k = -1;
                        bVar2.f1656j = -1;
                        bVar2.G = -1;
                        bVar2.O = Integer.MIN_VALUE;
                        break;
                    case 3:
                        androidx.constraintlayout.widget.d.b bVar3 = aVar.f1623d;
                        bVar3.f1662m = -1;
                        bVar3.f1660l = -1;
                        bVar3.H = 0;
                        bVar3.N = Integer.MIN_VALUE;
                        break;
                    case 4:
                        androidx.constraintlayout.widget.d.b bVar4 = aVar.f1623d;
                        bVar4.f1664n = -1;
                        bVar4.f1666o = -1;
                        bVar4.I = 0;
                        bVar4.P = Integer.MIN_VALUE;
                        break;
                    case 5:
                        androidx.constraintlayout.widget.d.b bVar5 = aVar.f1623d;
                        bVar5.f1668p = -1;
                        bVar5.f1669q = -1;
                        bVar5.f1670r = -1;
                        bVar5.L = 0;
                        bVar5.S = Integer.MIN_VALUE;
                        break;
                    case 6:
                        androidx.constraintlayout.widget.d.b bVar6 = aVar.f1623d;
                        bVar6.f1671s = -1;
                        bVar6.f1672t = -1;
                        bVar6.K = 0;
                        bVar6.R = Integer.MIN_VALUE;
                        break;
                    case 7:
                        androidx.constraintlayout.widget.d.b bVar7 = aVar.f1623d;
                        bVar7.f1673u = -1;
                        bVar7.f1674v = -1;
                        bVar7.J = 0;
                        bVar7.Q = Integer.MIN_VALUE;
                        break;
                    case '\b':
                        androidx.constraintlayout.widget.d.b bVar8 = aVar.f1623d;
                        bVar8.B = -1.0f;
                        bVar8.A = -1;
                        bVar8.f1678z = -1;
                        break;
                    default:
                        throw new IllegalArgumentException("unknown constraint");
                }
            }
            dVar.a(this);
        }
    }
}
