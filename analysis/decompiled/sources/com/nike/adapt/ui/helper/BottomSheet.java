package com.nike.adapt.ui.helper;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Space;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.nike.adapt.R;
import p4.h;
import q7.j0;
import w8.c;
import x8.p;

/* JADX INFO: compiled from: BottomSheet.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BottomSheet extends ConstraintLayout {
    public static final /* synthetic */ int F = 0;
    public BottomSheetBehavior<ConstraintLayout> A;
    public a B;
    public View C;
    public boolean D;
    public boolean E;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final j0 f5753z;

    /* JADX INFO: compiled from: BottomSheet.kt */
    public interface a {
        void a(Context context, BottomSheet bottomSheet);

        void b();

        void c(int i10, ConstraintLayout constraintLayout, Context context);

        void d(BottomSheet bottomSheet);
    }

    /* JADX INFO: compiled from: BottomSheet.kt */
    public static final class b extends BottomSheetBehavior.c {
        public b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public final void a(View view, float f10) {
            View view2 = BottomSheet.this.C;
            if (view2 != null) {
                view2.setAlpha(f10);
            }
            View view3 = BottomSheet.this.C;
            if (view3 == null) {
                return;
            }
            view3.setVisibility(0);
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
        public final void b(View view, int i10) {
            BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior;
            View view2;
            if (i10 == 4 && (view2 = BottomSheet.this.C) != null) {
                view2.setVisibility(8);
            }
            BottomSheet bottomSheet = BottomSheet.this;
            if (bottomSheet.E && i10 == 1 && (bottomSheetBehavior = bottomSheet.A) != null) {
                bottomSheetBehavior.B(3);
            }
            BottomSheet bottomSheet2 = BottomSheet.this;
            a aVar = bottomSheet2.B;
            if (aVar == null) {
                h.C("bottomSheetStateManager");
                throw null;
            }
            ConstraintLayout constraintLayout = bottomSheet2.f5753z.f13876a;
            h.i(constraintLayout, "binding.bottomSheetAnimateParent");
            Context context = BottomSheet.this.getContext();
            h.i(context, "context");
            aVar.c(i10, constraintLayout, context);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomSheet(Context context, AttributeSet attributeSet) throws Throwable {
        super(context, attributeSet, 0);
        h.j(context, "context");
        this.D = true;
        LayoutInflater.from(context).inflate(R.layout.bottom_sheet_dual_buttons, this);
        int i10 = R.id.bottom_sheet_animate_parent;
        ConstraintLayout constraintLayout = (ConstraintLayout) g7.b.d(this, R.id.bottom_sheet_animate_parent);
        if (constraintLayout != null) {
            i10 = R.id.bottom_sheet_bottom_space;
            if (((Space) g7.b.d(this, R.id.bottom_sheet_bottom_space)) != null) {
                i10 = R.id.bottom_sheet_button;
                Button button = (Button) g7.b.d(this, R.id.bottom_sheet_button);
                if (button != null) {
                    i10 = R.id.bottom_sheet_button_two;
                    Button button2 = (Button) g7.b.d(this, R.id.bottom_sheet_button_two);
                    if (button2 != null) {
                        i10 = R.id.bottom_sheet_description;
                        TextView textView = (TextView) g7.b.d(this, R.id.bottom_sheet_description);
                        if (textView != null) {
                            i10 = R.id.bottom_sheet_image;
                            ImageView imageView = (ImageView) g7.b.d(this, R.id.bottom_sheet_image);
                            if (imageView != null) {
                                i10 = R.id.bottom_sheet_title;
                                TextView textView2 = (TextView) g7.b.d(this, R.id.bottom_sheet_title);
                                if (textView2 != null) {
                                    this.f5753z = new j0(this, constraintLayout, button, button2, textView, imageView, textView2);
                                    TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.BottomSheet, 0, 0);
                                    h.i(typedArrayObtainStyledAttributes, "context.obtainStyledAttr…leable.BottomSheet, 0, 0)");
                                    try {
                                        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(1, false);
                                        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(3, true);
                                        boolean z12 = typedArrayObtainStyledAttributes.getBoolean(6, true);
                                        boolean z13 = typedArrayObtainStyledAttributes.getBoolean(2, true);
                                        boolean z14 = typedArrayObtainStyledAttributes.getBoolean(4, true);
                                        boolean z15 = typedArrayObtainStyledAttributes.getBoolean(5, true);
                                        this.E = typedArrayObtainStyledAttributes.getBoolean(8, false);
                                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(7, R.drawable.ic_shoe_adapt);
                                        String string = typedArrayObtainStyledAttributes.getString(11);
                                        String string2 = typedArrayObtainStyledAttributes.getString(0);
                                        String string3 = typedArrayObtainStyledAttributes.getString(9);
                                        try {
                                            String string4 = typedArrayObtainStyledAttributes.getString(10);
                                            try {
                                                constraintLayout.setAlpha(z10 ? 0.0f : 1.0f);
                                                constraintLayout.setTranslationY(z10 ? 150.0f : 0.0f);
                                                imageView.setVisibility(z11 ? 0 : 8);
                                                textView2.setVisibility(z12 ? 0 : 8);
                                                textView.setVisibility(z13 ? 0 : 8);
                                                button.setVisibility(z14 ? 0 : 8);
                                                button2.setVisibility(z15 ? 0 : 8);
                                                Object obj = y.a.f18143a;
                                                imageView.setImageDrawable(y.a.b.b(context, resourceId));
                                                textView2.setText(string);
                                                textView.setText(string2);
                                                button.setText(string3);
                                                button2.setText(string4);
                                                try {
                                                    setClickable(true);
                                                    setFocusable(true);
                                                    typedArrayObtainStyledAttributes.recycle();
                                                    return;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    typedArrayObtainStyledAttributes.recycle();
                                                    throw th;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            typedArrayObtainStyledAttributes = typedArrayObtainStyledAttributes;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        typedArrayObtainStyledAttributes = typedArrayObtainStyledAttributes;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(getResources().getResourceName(i10)));
    }

    private final Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    public static void s(BottomSheet bottomSheet) {
        h.j(bottomSheet, "this$0");
        a aVar = bottomSheet.B;
        if (aVar == null) {
            h.C("bottomSheetStateManager");
            throw null;
        }
        Context activity = bottomSheet.getActivity();
        if (activity == null) {
            activity = bottomSheet.getContext();
        }
        h.i(activity, "getActivity() ?: context");
        aVar.a(activity, bottomSheet);
    }

    public final void t() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.A;
        if (bottomSheetBehavior == null) {
            return;
        }
        bottomSheetBehavior.B(4);
    }

    public final boolean u() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.A;
        if (!(bottomSheetBehavior != null && bottomSheetBehavior.J == 3)) {
            return false;
        }
        bottomSheetBehavior.B(4);
        return true;
    }

    public final BottomSheet v(a aVar) {
        h.j(aVar, "bottomSheetStateManager");
        this.B = aVar;
        return this;
    }

    public final BottomSheet w(String str) {
        this.f5753z.f13879d.setVisibility(0);
        this.f5753z.f13879d.setText(str);
        return this;
    }

    public final void x() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = this.A;
        int i10 = 1;
        int i11 = 0;
        if (bottomSheetBehavior != null && bottomSheetBehavior.J == 3) {
            return;
        }
        int i12 = BottomSheetBehavior.f5038b0;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVar = ((CoordinatorLayout.f) layoutParams).f1744a;
        if (!(cVar instanceof BottomSheetBehavior)) {
            throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
        }
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior2 = (BottomSheetBehavior) cVar;
        this.A = bottomSheetBehavior2;
        if (bottomSheetBehavior2 != null) {
            bottomSheetBehavior2.B(3);
        }
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior3 = this.A;
        if (bottomSheetBehavior3 != null) {
            b bVar = new b();
            Log.w("BottomSheetBehavior", "BottomSheetBehavior now supports multiple callbacks. `setBottomSheetCallback()` removes all existing callbacks, including ones set internally by library authors, which may result in unintended behavior. This may change in the future. Please use `addBottomSheetCallback()` and `removeBottomSheetCallback()` instead to set your own callbacks.");
            bottomSheetBehavior3.T.clear();
            bottomSheetBehavior3.T.add(bVar);
        }
        this.f5753z.f13877b.setOnClickListener(new w8.b(this, i10));
        this.f5753z.f13878c.setOnClickListener(new c(this, i10));
        View view = this.C;
        if (view != null) {
            view.setOnClickListener(new p(this, i11));
        }
    }
}
