package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import j0.g0;
import j0.j0;
import j0.k0;
import j0.n0;
import j0.o0;
import j0.p0;
import j0.q0;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: MaterialDatePicker.java */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class o extends androidx.fragment.app.l implements TraceFieldInterface {
    public static final /* synthetic */ int M0 = 0;
    public CharSequence A0;
    public boolean B0;
    public int C0;
    public int D0;
    public CharSequence E0;
    public int F0;
    public CharSequence G0;
    public TextView H0;
    public CheckableImageButton I0;
    public m6.f J0;
    public Button K0;
    public boolean L0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final LinkedHashSet<r<Object>> f5232q0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final LinkedHashSet<View.OnClickListener> f5233r0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final LinkedHashSet<DialogInterface.OnCancelListener> f5234s0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final LinkedHashSet<DialogInterface.OnDismissListener> f5235t0 = new LinkedHashSet<>();

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public int f5236u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public d<Object> f5237v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public y f5238w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public com.google.android.material.datepicker.a f5239x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public g<Object> f5240y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f5241z0;

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            for (r<Object> rVar : o.this.f5232q0) {
                o.this.s0().u();
                rVar.a();
            }
            o.this.p0(false, false);
        }
    }

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Iterator<View.OnClickListener> it = o.this.f5233r0.iterator();
            while (it.hasNext()) {
                it.next().onClick(view);
            }
            o.this.p0(false, false);
        }
    }

    /* JADX INFO: compiled from: MaterialDatePicker.java */
    public class c extends x<Object> {
        public c() {
        }

        @Override // com.google.android.material.datepicker.x
        public final void a(Object obj) {
            o oVar = o.this;
            int i10 = o.M0;
            oVar.x0();
            o oVar2 = o.this;
            oVar2.K0.setEnabled(oVar2.s0().q());
        }
    }

    public static int t0(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarD = b0.d();
        calendarD.set(5, 1);
        Calendar calendarB = b0.b(calendarD);
        calendarB.get(2);
        calendarB.get(1);
        int maximum = calendarB.getMaximum(7);
        calendarB.getActualMaximum(5);
        calendarB.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean u0(Context context) {
        return v0(context, android.R.attr.windowFullscreen);
    }

    public static boolean v0(Context context, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(j6.b.b(context, R.attr.materialCalendarStyle, g.class.getCanonicalName()), new int[]{i10});
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z10;
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        TraceMachine.startTracing("MaterialDatePicker");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "MaterialDatePicker#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.H(bundle);
        if (bundle == null) {
            bundle = this.f1971n;
        }
        this.f5236u0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f5237v0 = (d) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f5239x0 = (com.google.android.material.datepicker.a) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f5241z0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.A0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.C0 = bundle.getInt("INPUT_MODE_KEY");
        this.D0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.E0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.F0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.G0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        TraceMachine.exitMethod();
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        while (true) {
            try {
                TraceMachine.enterMethod(null, "MaterialDatePicker#onCreateView", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        View viewInflate = layoutInflater.inflate(this.B0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.B0) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(t0(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(t0(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.H0 = textView;
        WeakHashMap<View, g0> weakHashMap = j0.a0.f9147a;
        j0.a0.g.f(textView, 1);
        this.I0 = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.A0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f5241z0);
        }
        this.I0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.I0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, g.a.b(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], g.a.b(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.I0.setChecked(this.C0 != 0);
        j0.a0.p(this.I0, null);
        y0(this.I0);
        this.I0.setOnClickListener(new q(this));
        this.K0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        if (s0().q()) {
            this.K0.setEnabled(true);
        } else {
            this.K0.setEnabled(false);
        }
        this.K0.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence2 = this.E0;
        if (charSequence2 != null) {
            this.K0.setText(charSequence2);
        } else {
            int i10 = this.D0;
            if (i10 != 0) {
                this.K0.setText(i10);
            }
        }
        this.K0.setOnClickListener(new a());
        Button button = (Button) viewInflate.findViewById(R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.G0;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i11 = this.F0;
            if (i11 != 0) {
                button.setText(i11);
            }
        }
        button.setOnClickListener(new b());
        TraceMachine.exitMethod();
        return viewInflate;
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public final void R(Bundle bundle) {
        super.R(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f5236u0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f5237v0);
        com.google.android.material.datepicker.a.b bVar = new com.google.android.material.datepicker.a.b(this.f5239x0);
        t tVar = this.f5240y0.f5212e0;
        if (tVar != null) {
            bVar.f5181c = Long.valueOf(tVar.f5256m);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", bVar.f5182d);
        t tVarO = t.o(bVar.f5179a);
        t tVarO2 = t.o(bVar.f5180b);
        com.google.android.material.datepicker.a.c cVar = (com.google.android.material.datepicker.a.c) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l10 = bVar.f5181c;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new com.google.android.material.datepicker.a(tVarO, tVarO2, cVar, l10 == null ? null : t.o(l10.longValue())));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f5241z0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.A0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.D0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.E0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.F0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.G0);
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public final void S() {
        q0 o0Var;
        super.S();
        Window window = r0().getWindow();
        if (this.B0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.J0);
            if (!this.L0) {
                View viewFindViewById = g0().findViewById(R.id.fullscreen_header);
                Integer numValueOf = viewFindViewById.getBackground() instanceof ColorDrawable ? Integer.valueOf(((ColorDrawable) viewFindViewById.getBackground()).getColor()) : null;
                int i10 = Build.VERSION.SDK_INT;
                boolean z10 = false;
                boolean z11 = numValueOf == null || numValueOf.intValue() == 0;
                int iA = a6.a.a(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z11) {
                    numValueOf = Integer.valueOf(iA);
                }
                Integer numValueOf2 = Integer.valueOf(iA);
                if (i10 >= 30) {
                    k0.a(window, false);
                } else {
                    j0.a(window, false);
                }
                window.getContext();
                int iE = i10 < 27 ? a0.a.e(a6.a.a(window.getContext(), android.R.attr.navigationBarColor, -16777216), 128) : 0;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(iE);
                boolean z12 = a6.a.c(0) || a6.a.c(numValueOf.intValue());
                boolean zC = a6.a.c(numValueOf2.intValue());
                if (a6.a.c(iE) || (iE == 0 && zC)) {
                    z10 = true;
                }
                View decorView = window.getDecorView();
                int i11 = Build.VERSION.SDK_INT;
                if (i11 >= 30) {
                    o0Var = new p0(window);
                } else {
                    o0Var = i11 >= 26 ? new o0(window, decorView) : new n0(window, decorView);
                }
                o0Var.b(z12);
                o0Var.a(z10);
                p pVar = new p(viewFindViewById.getLayoutParams().height, viewFindViewById, viewFindViewById.getPaddingTop());
                WeakHashMap<View, g0> weakHashMap = j0.a0.f9147a;
                j0.a0.i.u(viewFindViewById, pVar);
                this.L0 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = w().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.J0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new b6.a(r0(), rect));
        }
        w0();
    }

    @Override // androidx.fragment.app.l, androidx.fragment.app.m
    public final void T() {
        this.f5238w0.f5272a0.clear();
        this.K = true;
        Dialog dialog = this.f1951l0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.l, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnCancelListener> it = this.f5234s0.iterator();
        while (it.hasNext()) {
            it.next().onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.l, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator<DialogInterface.OnDismissListener> it = this.f5235t0.iterator();
        while (it.hasNext()) {
            it.next().onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.M;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.l
    public final Dialog q0() {
        Context contextF0 = f0();
        f0();
        int iK = this.f5236u0;
        if (iK == 0) {
            iK = s0().k();
        }
        Dialog dialog = new Dialog(contextF0, iK);
        Context context = dialog.getContext();
        this.B0 = u0(context);
        int iB = j6.b.b(context, R.attr.colorSurface, o.class.getCanonicalName());
        m6.f fVar = new m6.f(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.J0 = fVar;
        fVar.m(context);
        this.J0.o(ColorStateList.valueOf(iB));
        m6.f fVar2 = this.J0;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap<View, g0> weakHashMap = j0.a0.f9147a;
        fVar2.n(j0.a0.i.i(decorView));
        return dialog;
    }

    public final d<Object> s0() {
        if (this.f5237v0 == null) {
            this.f5237v0 = (d) this.f1971n.getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f5237v0;
    }

    public final void w0() {
        y sVar;
        f0();
        int iK = this.f5236u0;
        if (iK == 0) {
            iK = s0().k();
        }
        d<Object> dVarS0 = s0();
        com.google.android.material.datepicker.a aVar = this.f5239x0;
        g<Object> gVar = new g<>();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", iK);
        bundle.putParcelable("GRID_SELECTOR_KEY", dVarS0);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar);
        bundle.putParcelable("CURRENT_MONTH_KEY", aVar.f5174k);
        gVar.j0(bundle);
        this.f5240y0 = gVar;
        if (this.I0.isChecked()) {
            d<Object> dVarS1 = s0();
            com.google.android.material.datepicker.a aVar2 = this.f5239x0;
            sVar = new s();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", iK);
            bundle2.putParcelable("DATE_SELECTOR_KEY", dVarS1);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", aVar2);
            sVar.j0(bundle2);
        } else {
            sVar = this.f5240y0;
        }
        this.f5238w0 = sVar;
        x0();
        androidx.fragment.app.a aVar3 = new androidx.fragment.app.a(k());
        aVar3.f(R.id.mtrl_calendar_frame, this.f5238w0, null);
        aVar3.c();
        this.f5238w0.p0(new c());
    }

    public final void x0() {
        d<Object> dVarS0 = s0();
        l();
        String strJ = dVarS0.j();
        this.H0.setContentDescription(String.format(z(R.string.mtrl_picker_announce_current_selection), strJ));
        this.H0.setText(strJ);
    }

    public final void y0(CheckableImageButton checkableImageButton) {
        this.I0.setContentDescription(this.I0.isChecked() ? checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
    }
}
