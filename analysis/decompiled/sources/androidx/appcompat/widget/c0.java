package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import androidx.appcompat.app.AlertController;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: AppCompatSpinner.java */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends Spinner {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @SuppressLint({"ResourceType"})
    public static final int[] f1194p = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final androidx.appcompat.widget.e f1195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Context f1196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b0 f1197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SpinnerAdapter f1198k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f1199l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public i f1200m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1201n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Rect f1202o;

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            if (!c0.this.getInternalPopup().c()) {
                c0.this.b();
            }
            ViewTreeObserver viewTreeObserver = c0.this.getViewTreeObserver();
            if (viewTreeObserver != null) {
                b.a(viewTreeObserver, this);
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public static final class b {
        public static void a(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public static final class c {
        public static int a(View view) {
            return view.getTextAlignment();
        }

        public static int b(View view) {
            return view.getTextDirection();
        }

        public static void c(View view, int i10) {
            view.setTextAlignment(i10);
        }

        public static void d(View view, int i10) {
            view.setTextDirection(i10);
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public static final class d {
        public static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
            if (themedSpinnerAdapter.getDropDownViewTheme() != theme) {
                themedSpinnerAdapter.setDropDownViewTheme(theme);
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public class e implements i, DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public androidx.appcompat.app.d f1204h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ListAdapter f1205i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public CharSequence f1206j;

        public e() {
        }

        @Override // androidx.appcompat.widget.c0.i
        public final boolean c() {
            androidx.appcompat.app.d dVar = this.f1204h;
            if (dVar != null) {
                return dVar.isShowing();
            }
            return false;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final int d() {
            return 0;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void dismiss() {
            androidx.appcompat.app.d dVar = this.f1204h;
            if (dVar != null) {
                dVar.dismiss();
                this.f1204h = null;
            }
        }

        @Override // androidx.appcompat.widget.c0.i
        public final Drawable f() {
            return null;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void h(CharSequence charSequence) {
            this.f1206j = charSequence;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void i(Drawable drawable) {
            Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void j(int i10) {
            Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void k(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void l(int i10) {
            Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void m(int i10, int i11) {
            if (this.f1205i == null) {
                return;
            }
            androidx.appcompat.app.d.a aVar = new androidx.appcompat.app.d.a(c0.this.getPopupContext());
            CharSequence charSequence = this.f1206j;
            if (charSequence != null) {
                aVar.setTitle(charSequence);
            }
            ListAdapter listAdapter = this.f1205i;
            int selectedItemPosition = c0.this.getSelectedItemPosition();
            AlertController.b bVar = aVar.f793a;
            bVar.f775o = listAdapter;
            bVar.f776p = this;
            bVar.f782v = selectedItemPosition;
            bVar.f781u = true;
            androidx.appcompat.app.d dVarCreate = aVar.create();
            this.f1204h = dVarCreate;
            AlertController.RecycleListView recycleListView = dVarCreate.f792l.f738g;
            c.d(recycleListView, i10);
            c.c(recycleListView, i11);
            this.f1204h.show();
        }

        @Override // androidx.appcompat.widget.c0.i
        public final int n() {
            return 0;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final CharSequence o() {
            return this.f1206j;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i10) {
            c0.this.setSelection(i10);
            if (c0.this.getOnItemClickListener() != null) {
                c0.this.performItemClick(null, i10, this.f1205i.getItemId(i10));
            }
            androidx.appcompat.app.d dVar = this.f1204h;
            if (dVar != null) {
                dVar.dismiss();
                this.f1204h = null;
            }
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void p(ListAdapter listAdapter) {
            this.f1205i = listAdapter;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public static class f implements ListAdapter, SpinnerAdapter {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public SpinnerAdapter f1208h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public ListAdapter f1209i;

        public f(SpinnerAdapter spinnerAdapter, Resources.Theme theme) {
            this.f1208h = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                this.f1209i = (ListAdapter) spinnerAdapter;
            }
            if (theme != null) {
                if (spinnerAdapter instanceof ThemedSpinnerAdapter) {
                    d.a((ThemedSpinnerAdapter) spinnerAdapter, theme);
                } else if (spinnerAdapter instanceof b1) {
                    b1 b1Var = (b1) spinnerAdapter;
                    if (b1Var.getDropDownViewTheme() == null) {
                        b1Var.a();
                    }
                }
            }
        }

        @Override // android.widget.ListAdapter
        public final boolean areAllItemsEnabled() {
            ListAdapter listAdapter = this.f1209i;
            if (listAdapter != null) {
                return listAdapter.areAllItemsEnabled();
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final int getCount() {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter == null) {
                return 0;
            }
            return spinnerAdapter.getCount();
        }

        @Override // android.widget.SpinnerAdapter
        public final View getDropDownView(int i10, View view, ViewGroup viewGroup) {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final Object getItem(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter == null) {
                return null;
            }
            return spinnerAdapter.getItem(i10);
        }

        @Override // android.widget.Adapter
        public final long getItemId(int i10) {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter == null) {
                return -1L;
            }
            return spinnerAdapter.getItemId(i10);
        }

        @Override // android.widget.Adapter
        public final int getItemViewType(int i10) {
            return 0;
        }

        @Override // android.widget.Adapter
        public final View getView(int i10, View view, ViewGroup viewGroup) {
            return getDropDownView(i10, view, viewGroup);
        }

        @Override // android.widget.Adapter
        public final int getViewTypeCount() {
            return 1;
        }

        @Override // android.widget.Adapter
        public final boolean hasStableIds() {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            return spinnerAdapter != null && spinnerAdapter.hasStableIds();
        }

        @Override // android.widget.Adapter
        public final boolean isEmpty() {
            return getCount() == 0;
        }

        @Override // android.widget.ListAdapter
        public final boolean isEnabled(int i10) {
            ListAdapter listAdapter = this.f1209i;
            if (listAdapter != null) {
                return listAdapter.isEnabled(i10);
            }
            return true;
        }

        @Override // android.widget.Adapter
        public final void registerDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter != null) {
                spinnerAdapter.registerDataSetObserver(dataSetObserver);
            }
        }

        @Override // android.widget.Adapter
        public final void unregisterDataSetObserver(DataSetObserver dataSetObserver) {
            SpinnerAdapter spinnerAdapter = this.f1208h;
            if (spinnerAdapter != null) {
                spinnerAdapter.unregisterDataSetObserver(dataSetObserver);
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public class g extends r0 implements i {
        public CharSequence I;
        public ListAdapter J;
        public final Rect K;
        public int L;

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        public class a implements AdapterView.OnItemClickListener {
            public a() {
            }

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
                c0.this.setSelection(i10);
                if (c0.this.getOnItemClickListener() != null) {
                    g gVar = g.this;
                    c0.this.performItemClick(view, i10, gVar.J.getItemId(i10));
                }
                g.this.dismiss();
            }
        }

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        public class b implements ViewTreeObserver.OnGlobalLayoutListener {
            public b() {
            }

            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                g gVar = g.this;
                c0 c0Var = c0.this;
                Objects.requireNonNull(gVar);
                WeakHashMap<View, j0.g0> weakHashMap = j0.a0.f9147a;
                if (!(j0.a0.g.b(c0Var) && c0Var.getGlobalVisibleRect(gVar.K))) {
                    g.this.dismiss();
                } else {
                    g.this.v();
                    g.this.a();
                }
            }
        }

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        public class c implements PopupWindow.OnDismissListener {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final /* synthetic */ ViewTreeObserver.OnGlobalLayoutListener f1212h;

            public c(ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
                this.f1212h = onGlobalLayoutListener;
            }

            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                ViewTreeObserver viewTreeObserver = c0.this.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeGlobalOnLayoutListener(this.f1212h);
                }
            }
        }

        public g(Context context, AttributeSet attributeSet, int i10) {
            super(context, attributeSet, i10, 0);
            this.K = new Rect();
            this.f1434v = c0.this;
            t();
            this.f1435w = new a();
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void h(CharSequence charSequence) {
            this.I = charSequence;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void k(int i10) {
            this.L = i10;
        }

        @Override // androidx.appcompat.widget.c0.i
        public final void m(int i10, int i11) {
            ViewTreeObserver viewTreeObserver;
            boolean zC = c();
            v();
            s();
            a();
            m0 m0Var = this.f1422j;
            m0Var.setChoiceMode(1);
            c.d(m0Var, i10);
            c.c(m0Var, i11);
            int selectedItemPosition = c0.this.getSelectedItemPosition();
            m0 m0Var2 = this.f1422j;
            if (c() && m0Var2 != null) {
                m0Var2.setListSelectionHidden(false);
                m0Var2.setSelection(selectedItemPosition);
                if (m0Var2.getChoiceMode() != 0) {
                    m0Var2.setItemChecked(selectedItemPosition, true);
                }
            }
            if (zC || (viewTreeObserver = c0.this.getViewTreeObserver()) == null) {
                return;
            }
            b bVar = new b();
            viewTreeObserver.addOnGlobalLayoutListener(bVar);
            u(new c(bVar));
        }

        @Override // androidx.appcompat.widget.c0.i
        public final CharSequence o() {
            return this.I;
        }

        @Override // androidx.appcompat.widget.r0, androidx.appcompat.widget.c0.i
        public final void p(ListAdapter listAdapter) {
            super.p(listAdapter);
            this.J = listAdapter;
        }

        public final void v() {
            Drawable drawableF = f();
            int i10 = 0;
            if (drawableF != null) {
                drawableF.getPadding(c0.this.f1202o);
                i10 = o1.b(c0.this) ? c0.this.f1202o.right : -c0.this.f1202o.left;
            } else {
                Rect rect = c0.this.f1202o;
                rect.right = 0;
                rect.left = 0;
            }
            int paddingLeft = c0.this.getPaddingLeft();
            int paddingRight = c0.this.getPaddingRight();
            int width = c0.this.getWidth();
            c0 c0Var = c0.this;
            int i11 = c0Var.f1201n;
            if (i11 == -2) {
                int iA = c0Var.a((SpinnerAdapter) this.J, f());
                int i12 = c0.this.getContext().getResources().getDisplayMetrics().widthPixels;
                Rect rect2 = c0.this.f1202o;
                int i13 = (i12 - rect2.left) - rect2.right;
                if (iA > i13) {
                    iA = i13;
                }
                r(Math.max(iA, (width - paddingLeft) - paddingRight));
            } else if (i11 == -1) {
                r((width - paddingLeft) - paddingRight);
            } else {
                r(i11);
            }
            this.f1425m = o1.b(c0.this) ? (((width - paddingRight) - this.f1424l) - this.L) + i10 : paddingLeft + this.L + i10;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public static class h extends View.BaseSavedState {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f1214h;

        /* JADX INFO: compiled from: AppCompatSpinner.java */
        public class a implements Parcelable.Creator<h> {
            @Override // android.os.Parcelable.Creator
            public final h createFromParcel(Parcel parcel) {
                return new h(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final h[] newArray(int i10) {
                return new h[i10];
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeByte(this.f1214h ? (byte) 1 : (byte) 0);
        }

        public h(Parcel parcel) {
            super(parcel);
            this.f1214h = parcel.readByte() != 0;
        }
    }

    /* JADX INFO: compiled from: AppCompatSpinner.java */
    public interface i {
        boolean c();

        int d();

        void dismiss();

        Drawable f();

        void h(CharSequence charSequence);

        void i(Drawable drawable);

        void j(int i10);

        void k(int i10);

        void l(int i10);

        void m(int i10, int i11);

        int n();

        CharSequence o();

        void p(ListAdapter listAdapter);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:27:0x0062  */
    /* JADX WARN: Code duplicated, block: B:28:0x009a  */
    /* JADX WARN: Code duplicated, block: B:31:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d7  */
    public c0(Context context, AttributeSet attributeSet, int i10) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, i10);
        this.f1202o = new Rect();
        a1.a(this, getContext());
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.Spinner, i10, 0);
        this.f1195h = new androidx.appcompat.widget.e(this);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(androidx.appcompat.R.styleable.Spinner_popupTheme, 0);
        if (resourceId != 0) {
            this.f1196i = new j.c(context, resourceId);
        } else {
            this.f1196i = context;
        }
        TypedArray typedArray = null;
        int i11 = -1;
        try {
            try {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1194p, i10, 0);
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i11 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Exception e10) {
                    e = e10;
                    Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                    if (typedArrayObtainStyledAttributes != null) {
                    }
                    if (i11 != 0) {
                        e eVar = new e();
                        this.f1200m = eVar;
                        eVar.f1206j = typedArrayObtainStyledAttributes2.getString(androidx.appcompat.R.styleable.Spinner_android_prompt);
                    } else if (i11 == 1) {
                        g gVar = new g(this.f1196i, attributeSet, i10);
                        f1 f1VarQ = f1.q(this.f1196i, attributeSet, androidx.appcompat.R.styleable.Spinner, i10);
                        this.f1201n = f1VarQ.k(androidx.appcompat.R.styleable.Spinner_android_dropDownWidth, -2);
                        gVar.F.setBackgroundDrawable(f1VarQ.g(androidx.appcompat.R.styleable.Spinner_android_popupBackground));
                        gVar.I = typedArrayObtainStyledAttributes2.getString(androidx.appcompat.R.styleable.Spinner_android_prompt);
                        f1VarQ.r();
                        this.f1200m = gVar;
                        this.f1197j = new b0(this, this, gVar);
                    }
                    textArray = typedArrayObtainStyledAttributes2.getTextArray(androidx.appcompat.R.styleable.Spinner_android_entries);
                    if (textArray != null) {
                        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
                        arrayAdapter.setDropDownViewResource(androidx.appcompat.R.layout.support_simple_spinner_dropdown_item);
                        setAdapter((SpinnerAdapter) arrayAdapter);
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                    this.f1199l = true;
                    spinnerAdapter = this.f1198k;
                    if (spinnerAdapter != null) {
                        setAdapter(spinnerAdapter);
                        this.f1198k = null;
                    }
                    this.f1195h.d(attributeSet, i10);
                }
            } catch (Throwable th) {
                th = th;
                typedArray = typedArrayObtainStyledAttributes;
                if (typedArray != null) {
                    typedArray.recycle();
                }
                throw th;
            }
        } catch (Exception e11) {
            e = e11;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (i11 != 0) {
            e eVar2 = new e();
            this.f1200m = eVar2;
            eVar2.f1206j = typedArrayObtainStyledAttributes2.getString(androidx.appcompat.R.styleable.Spinner_android_prompt);
        } else if (i11 == 1) {
            g gVar2 = new g(this.f1196i, attributeSet, i10);
            f1 f1VarQ2 = f1.q(this.f1196i, attributeSet, androidx.appcompat.R.styleable.Spinner, i10);
            this.f1201n = f1VarQ2.k(androidx.appcompat.R.styleable.Spinner_android_dropDownWidth, -2);
            gVar2.F.setBackgroundDrawable(f1VarQ2.g(androidx.appcompat.R.styleable.Spinner_android_popupBackground));
            gVar2.I = typedArrayObtainStyledAttributes2.getString(androidx.appcompat.R.styleable.Spinner_android_prompt);
            f1VarQ2.r();
            this.f1200m = gVar2;
            this.f1197j = new b0(this, this, gVar2);
        }
        textArray = typedArrayObtainStyledAttributes2.getTextArray(androidx.appcompat.R.styleable.Spinner_android_entries);
        if (textArray != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter2.setDropDownViewResource(androidx.appcompat.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        typedArrayObtainStyledAttributes2.recycle();
        this.f1199l = true;
        spinnerAdapter = this.f1198k;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f1198k = null;
        }
        this.f1195h.d(attributeSet, i10);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i10 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        drawable.getPadding(this.f1202o);
        Rect rect = this.f1202o;
        return iMax2 + rect.left + rect.right;
    }

    public final void b() {
        this.f1200m.m(c.b(this), c.a(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        i iVar = this.f1200m;
        return iVar != null ? iVar.d() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        i iVar = this.f1200m;
        return iVar != null ? iVar.n() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f1200m != null ? this.f1201n : super.getDropDownWidth();
    }

    public final i getInternalPopup() {
        return this.f1200m;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        i iVar = this.f1200m;
        return iVar != null ? iVar.f() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f1196i;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        i iVar = this.f1200m;
        return iVar != null ? iVar.o() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i iVar = this.f1200m;
        if (iVar == null || !iVar.c()) {
            return;
        }
        this.f1200m.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (this.f1200m == null || View.MeasureSpec.getMode(i10) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.getSuperState());
        if (!hVar.f1214h || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new a());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        i iVar = this.f1200m;
        hVar.f1214h = iVar != null && iVar.c();
        return hVar;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        b0 b0Var = this.f1197j;
        if (b0Var == null || !b0Var.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        i iVar = this.f1200m;
        if (iVar == null) {
            return super.performClick();
        }
        if (iVar.c()) {
            return true;
        }
        b();
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i10) {
        i iVar = this.f1200m;
        if (iVar == null) {
            super.setDropDownHorizontalOffset(i10);
        } else {
            iVar.k(i10);
            this.f1200m.l(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i10) {
        i iVar = this.f1200m;
        if (iVar != null) {
            iVar.j(i10);
        } else {
            super.setDropDownVerticalOffset(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i10) {
        if (this.f1200m != null) {
            this.f1201n = i10;
        } else {
            super.setDropDownWidth(i10);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        i iVar = this.f1200m;
        if (iVar != null) {
            iVar.i(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i10) {
        setPopupBackgroundDrawable(g.a.b(getPopupContext(), i10));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        i iVar = this.f1200m;
        if (iVar != null) {
            iVar.h(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        androidx.appcompat.widget.e eVar = this.f1195h;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f1199l) {
            this.f1198k = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        if (this.f1200m != null) {
            Context context = this.f1196i;
            if (context == null) {
                context = getContext();
            }
            this.f1200m.p(new f(spinnerAdapter, context.getTheme()));
        }
    }
}
