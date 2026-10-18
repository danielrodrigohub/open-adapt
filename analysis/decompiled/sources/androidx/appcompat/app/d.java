package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.R;
import androidx.appcompat.widget.p0;
import androidx.core.widget.NestedScrollView;
import f.n;
import j0.a0;
import j0.g0;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AlertDialog.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends n {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final AlertController f792l;

    /* JADX INFO: compiled from: AlertDialog.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AlertController.b f793a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f794b;

        public a(Context context) {
            this(context, d.h(context, 0));
        }

        public a a(Drawable drawable) {
            this.f793a.f763c = drawable;
            return this;
        }

        public a b(CharSequence charSequence) {
            this.f793a.f766f = charSequence;
            return this;
        }

        public a c(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f774n = charSequenceArr;
            bVar.f783w = onMultiChoiceClickListener;
            bVar.f779s = zArr;
            bVar.f780t = true;
            return this;
        }

        public d create() {
            ListAdapter dVar;
            d dVar2 = new d(this.f793a.f761a, this.f794b);
            AlertController.b bVar = this.f793a;
            AlertController alertController = dVar2.f792l;
            View view = bVar.f765e;
            if (view != null) {
                alertController.C = view;
            } else {
                CharSequence charSequence = bVar.f764d;
                if (charSequence != null) {
                    alertController.f736e = charSequence;
                    TextView textView = alertController.A;
                    if (textView != null) {
                        textView.setText(charSequence);
                    }
                }
                Drawable drawable = bVar.f763c;
                if (drawable != null) {
                    alertController.f756y = drawable;
                    alertController.f755x = 0;
                    ImageView imageView = alertController.f757z;
                    if (imageView != null) {
                        imageView.setVisibility(0);
                        alertController.f757z.setImageDrawable(drawable);
                    }
                }
            }
            CharSequence charSequence2 = bVar.f766f;
            if (charSequence2 != null) {
                alertController.f737f = charSequence2;
                TextView textView2 = alertController.B;
                if (textView2 != null) {
                    textView2.setText(charSequence2);
                }
            }
            CharSequence charSequence3 = bVar.f767g;
            if (charSequence3 != null) {
                alertController.e(-1, charSequence3, bVar.f768h);
            }
            CharSequence charSequence4 = bVar.f769i;
            if (charSequence4 != null) {
                alertController.e(-2, charSequence4, bVar.f770j);
            }
            if (bVar.f774n != null || bVar.f775o != null) {
                AlertController.RecycleListView recycleListView = (AlertController.RecycleListView) bVar.f762b.inflate(alertController.H, (ViewGroup) null);
                if (bVar.f780t) {
                    dVar = new androidx.appcompat.app.a(bVar, bVar.f761a, alertController.I, bVar.f774n, recycleListView);
                } else {
                    int i10 = bVar.f781u ? alertController.J : alertController.K;
                    dVar = bVar.f775o;
                    if (dVar == null) {
                        dVar = new AlertController.d(bVar.f761a, i10, bVar.f774n);
                    }
                }
                alertController.D = dVar;
                alertController.E = bVar.f782v;
                if (bVar.f776p != null) {
                    recycleListView.setOnItemClickListener(new b(bVar, alertController));
                } else if (bVar.f783w != null) {
                    recycleListView.setOnItemClickListener(new c(bVar, recycleListView, alertController));
                }
                if (bVar.f781u) {
                    recycleListView.setChoiceMode(1);
                } else if (bVar.f780t) {
                    recycleListView.setChoiceMode(2);
                }
                alertController.f738g = recycleListView;
            }
            View view2 = bVar.f778r;
            if (view2 != null) {
                alertController.f739h = view2;
                alertController.f740i = 0;
                alertController.f741j = false;
            } else {
                int i11 = bVar.f777q;
                if (i11 != 0) {
                    alertController.f739h = null;
                    alertController.f740i = i11;
                    alertController.f741j = false;
                }
            }
            dVar2.setCancelable(this.f793a.f771k);
            if (this.f793a.f771k) {
                dVar2.setCanceledOnTouchOutside(true);
            }
            Objects.requireNonNull(this.f793a);
            dVar2.setOnCancelListener(null);
            dVar2.setOnDismissListener(this.f793a.f772l);
            DialogInterface.OnKeyListener onKeyListener = this.f793a.f773m;
            if (onKeyListener != null) {
                dVar2.setOnKeyListener(onKeyListener);
            }
            return dVar2;
        }

        public a d(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f769i = charSequence;
            bVar.f770j = onClickListener;
            return this;
        }

        public a e(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f767g = charSequence;
            bVar.f768h = onClickListener;
            return this;
        }

        public a f(CharSequence[] charSequenceArr, int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f774n = charSequenceArr;
            bVar.f776p = onClickListener;
            bVar.f782v = i10;
            bVar.f781u = true;
            return this;
        }

        public Context getContext() {
            return this.f793a.f761a;
        }

        public a setNegativeButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f769i = bVar.f761a.getText(i10);
            this.f793a.f770j = onClickListener;
            return this;
        }

        public a setPositiveButton(int i10, DialogInterface.OnClickListener onClickListener) {
            AlertController.b bVar = this.f793a;
            bVar.f767g = bVar.f761a.getText(i10);
            this.f793a.f768h = onClickListener;
            return this;
        }

        public a setTitle(CharSequence charSequence) {
            this.f793a.f764d = charSequence;
            return this;
        }

        public a setView(View view) {
            AlertController.b bVar = this.f793a;
            bVar.f778r = view;
            bVar.f777q = 0;
            return this;
        }

        public a(Context context, int i10) {
            this.f793a = new AlertController.b(new ContextThemeWrapper(context, d.h(context, i10)));
            this.f794b = i10;
        }
    }

    public d(Context context, int i10) {
        super(context, h(context, i10));
        this.f792l = new AlertController(getContext(), this, getWindow());
    }

    public static int h(Context context, int i10) {
        if (((i10 >>> 24) & 255) >= 1) {
            return i10;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // f.n, androidx.activity.h, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i10;
        ListAdapter listAdapter;
        View viewFindViewById;
        super.onCreate(bundle);
        AlertController alertController = this.f792l;
        alertController.f733b.setContentView(alertController.G == 0 ? alertController.F : alertController.F);
        View viewFindViewById2 = alertController.f734c.findViewById(R.id.parentPanel);
        int i11 = R.id.topPanel;
        View viewFindViewById3 = viewFindViewById2.findViewById(i11);
        int i12 = R.id.contentPanel;
        View viewFindViewById4 = viewFindViewById2.findViewById(i12);
        int i13 = R.id.buttonPanel;
        View viewFindViewById5 = viewFindViewById2.findViewById(i13);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View viewInflate = alertController.f739h;
        if (viewInflate == null) {
            viewInflate = alertController.f740i != 0 ? LayoutInflater.from(alertController.f732a).inflate(alertController.f740i, viewGroup, false) : null;
        }
        boolean z10 = viewInflate != null;
        if (!z10 || !AlertController.a(viewInflate)) {
            alertController.f734c.setFlags(131072, 131072);
        }
        if (z10) {
            FrameLayout frameLayout = (FrameLayout) alertController.f734c.findViewById(R.id.custom);
            frameLayout.addView(viewInflate, new ViewGroup.LayoutParams(-1, -1));
            if (alertController.f741j) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (alertController.f738g != null) {
                ((LinearLayout.LayoutParams) ((p0.a) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(i11);
        View viewFindViewById7 = viewGroup.findViewById(i12);
        View viewFindViewById8 = viewGroup.findViewById(i13);
        ViewGroup viewGroupD = alertController.d(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupD2 = alertController.d(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupD3 = alertController.d(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) alertController.f734c.findViewById(R.id.scrollView);
        alertController.f754w = nestedScrollView;
        nestedScrollView.setFocusable(false);
        alertController.f754w.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupD2.findViewById(android.R.id.message);
        alertController.B = textView;
        if (textView != null) {
            CharSequence charSequence = alertController.f737f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                alertController.f754w.removeView(alertController.B);
                if (alertController.f738g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) alertController.f754w.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(alertController.f754w);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(alertController.f738g, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupD2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupD3.findViewById(android.R.id.button1);
        alertController.f742k = button;
        button.setOnClickListener(alertController.N);
        if (TextUtils.isEmpty(alertController.f743l) && alertController.f745n == null) {
            alertController.f742k.setVisibility(8);
            i10 = 0;
        } else {
            alertController.f742k.setText(alertController.f743l);
            Drawable drawable = alertController.f745n;
            if (drawable != null) {
                int i14 = alertController.f735d;
                drawable.setBounds(0, 0, i14, i14);
                alertController.f742k.setCompoundDrawables(alertController.f745n, null, null, null);
            }
            alertController.f742k.setVisibility(0);
            i10 = 1;
        }
        Button button2 = (Button) viewGroupD3.findViewById(android.R.id.button2);
        alertController.f746o = button2;
        button2.setOnClickListener(alertController.N);
        if (TextUtils.isEmpty(alertController.f747p) && alertController.f749r == null) {
            alertController.f746o.setVisibility(8);
        } else {
            alertController.f746o.setText(alertController.f747p);
            Drawable drawable2 = alertController.f749r;
            if (drawable2 != null) {
                int i15 = alertController.f735d;
                drawable2.setBounds(0, 0, i15, i15);
                alertController.f746o.setCompoundDrawables(alertController.f749r, null, null, null);
            }
            alertController.f746o.setVisibility(0);
            i10 |= 2;
        }
        Button button3 = (Button) viewGroupD3.findViewById(android.R.id.button3);
        alertController.f750s = button3;
        button3.setOnClickListener(alertController.N);
        if (TextUtils.isEmpty(alertController.f751t) && alertController.f753v == null) {
            alertController.f750s.setVisibility(8);
        } else {
            alertController.f750s.setText(alertController.f751t);
            Drawable drawable3 = alertController.f753v;
            if (drawable3 != null) {
                int i16 = alertController.f735d;
                drawable3.setBounds(0, 0, i16, i16);
                alertController.f750s.setCompoundDrawables(alertController.f753v, null, null, null);
            }
            alertController.f750s.setVisibility(0);
            i10 |= 4;
        }
        Context context = alertController.f732a;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i10 == 1) {
                alertController.b(alertController.f742k);
            } else if (i10 == 2) {
                alertController.b(alertController.f746o);
            } else if (i10 == 4) {
                alertController.b(alertController.f750s);
            }
        }
        if (!(i10 != 0)) {
            viewGroupD3.setVisibility(8);
        }
        if (alertController.C != null) {
            viewGroupD.addView(alertController.C, 0, new ViewGroup.LayoutParams(-1, -2));
            alertController.f734c.findViewById(R.id.title_template).setVisibility(8);
        } else {
            alertController.f757z = (ImageView) alertController.f734c.findViewById(android.R.id.icon);
            if ((!TextUtils.isEmpty(alertController.f736e)) && alertController.L) {
                TextView textView2 = (TextView) alertController.f734c.findViewById(R.id.alertTitle);
                alertController.A = textView2;
                textView2.setText(alertController.f736e);
                int i17 = alertController.f755x;
                if (i17 != 0) {
                    alertController.f757z.setImageResource(i17);
                } else {
                    Drawable drawable4 = alertController.f756y;
                    if (drawable4 != null) {
                        alertController.f757z.setImageDrawable(drawable4);
                    } else {
                        alertController.A.setPadding(alertController.f757z.getPaddingLeft(), alertController.f757z.getPaddingTop(), alertController.f757z.getPaddingRight(), alertController.f757z.getPaddingBottom());
                        alertController.f757z.setVisibility(8);
                    }
                }
            } else {
                alertController.f734c.findViewById(R.id.title_template).setVisibility(8);
                alertController.f757z.setVisibility(8);
                viewGroupD.setVisibility(8);
            }
        }
        boolean z11 = viewGroup.getVisibility() != 8;
        int i18 = (viewGroupD == null || viewGroupD.getVisibility() == 8) ? 0 : 1;
        boolean z12 = viewGroupD3.getVisibility() != 8;
        if (!z12 && (viewFindViewById = viewGroupD2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i18 != 0) {
            NestedScrollView nestedScrollView2 = alertController.f754w;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (alertController.f737f == null && alertController.f738g == null) ? null : viewGroupD.findViewById(R.id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupD2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController.RecycleListView recycleListView = alertController.f738g;
        if (recycleListView instanceof AlertController.RecycleListView) {
            Objects.requireNonNull(recycleListView);
            if (!z12 || i18 == 0) {
                recycleListView.setPadding(recycleListView.getPaddingLeft(), i18 != 0 ? recycleListView.getPaddingTop() : recycleListView.f758h, recycleListView.getPaddingRight(), z12 ? recycleListView.getPaddingBottom() : recycleListView.f759i);
            }
        }
        if (!z11) {
            View view = alertController.f738g;
            if (view == null) {
                view = alertController.f754w;
            }
            if (view != null) {
                int i19 = z12 ? 2 : 0;
                View viewFindViewById11 = alertController.f734c.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = alertController.f734c.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap<View, g0> weakHashMap = a0.f9147a;
                a0.j.d(view, i18 | i19, 3);
                if (viewFindViewById11 != null) {
                    viewGroupD2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupD2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController.RecycleListView recycleListView2 = alertController.f738g;
        if (recycleListView2 == null || (listAdapter = alertController.D) == null) {
            return;
        }
        recycleListView2.setAdapter(listAdapter);
        int i20 = alertController.E;
        if (i20 > -1) {
            recycleListView2.setItemChecked(i20, true);
            recycleListView2.setSelection(i20);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f792l.f754w;
        if (nestedScrollView != null && nestedScrollView.g(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i10, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i10, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f792l.f754w;
        if (nestedScrollView != null && nestedScrollView.g(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i10, keyEvent);
    }

    @Override // f.n, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        AlertController alertController = this.f792l;
        alertController.f736e = charSequence;
        TextView textView = alertController.A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
