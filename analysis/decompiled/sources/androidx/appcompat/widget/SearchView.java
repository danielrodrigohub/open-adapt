package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.R;
import java.lang.reflect.Method;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public class SearchView extends p0 implements j.b {

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final o f1041x0;
    public final ImageView A;
    public final ImageView B;
    public final ImageView C;
    public final ImageView D;
    public final View E;
    public q F;
    public Rect G;
    public Rect H;
    public int[] I;
    public int[] J;
    public final ImageView K;
    public final Drawable L;
    public final int M;
    public final int N;
    public final Intent O;
    public final Intent P;
    public final CharSequence Q;
    public m R;
    public l S;
    public View.OnFocusChangeListener T;
    public n U;
    public View.OnClickListener V;
    public boolean W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f1042a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public o0.a f1043b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f1044c0;
    public CharSequence d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f1045e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f1046f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public int f1047g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f1048h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public String f1049i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public CharSequence f1050j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f1051k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f1052l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public SearchableInfo f1053m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public Bundle f1054n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final b f1055o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public c f1056p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final WeakHashMap<String, Drawable.ConstantState> f1057q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final f f1058r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public g f1059s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final h f1060t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final i f1061u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final j f1062v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final SearchAutoComplete f1063w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public a f1064w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final View f1065x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final View f1066y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final View f1067z;

    public static class SearchAutoComplete extends androidx.appcompat.widget.d {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1068l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public SearchView f1069m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f1070n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final a f1071o;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                SearchAutoComplete searchAutoComplete = SearchAutoComplete.this;
                if (searchAutoComplete.f1070n) {
                    ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
                    searchAutoComplete.f1070n = false;
                }
            }
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            super(context, attributeSet, R.attr.autoCompleteTextViewStyle);
            this.f1071o = new a();
            this.f1068l = getThreshold();
        }

        private int getSearchViewTextMinWidthDp() {
            Configuration configuration = getResources().getConfiguration();
            int i10 = configuration.screenWidthDp;
            int i11 = configuration.screenHeightDp;
            if (i10 >= 960 && i11 >= 720 && configuration.orientation == 2) {
                return 256;
            }
            if (i10 < 600) {
                return (i10 < 640 || i11 < 480) ? 160 : 192;
            }
            return 192;
        }

        public final void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                k.b(this, 1);
                if (enoughToFilter()) {
                    showDropDown();
                    return;
                }
                return;
            }
            o oVar = SearchView.f1041x0;
            Objects.requireNonNull(oVar);
            o.a();
            Method method = oVar.f1085c;
            if (method != null) {
                try {
                    method.invoke(this, Boolean.TRUE);
                } catch (Exception unused) {
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final boolean enoughToFilter() {
            return this.f1068l <= 0 || super.enoughToFilter();
        }

        @Override // androidx.appcompat.widget.d, android.widget.TextView, android.view.View
        public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
            InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
            if (this.f1070n) {
                removeCallbacks(this.f1071o);
                post(this.f1071o);
            }
            return inputConnectionOnCreateInputConnection;
        }

        @Override // android.view.View
        public final void onFinishInflate() {
            super.onFinishInflate();
            setMinWidth((int) TypedValue.applyDimension(1, getSearchViewTextMinWidthDp(), getResources().getDisplayMetrics()));
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onFocusChanged(boolean z10, int i10, Rect rect) {
            super.onFocusChanged(z10, i10, rect);
            SearchView searchView = this.f1069m;
            searchView.z(searchView.f1042a0);
            searchView.post(searchView.f1055o0);
            if (searchView.f1063w.hasFocus()) {
                searchView.n();
            }
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final boolean onKeyPreIme(int i10, KeyEvent keyEvent) {
            if (i10 == 4) {
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    KeyEvent.DispatcherState keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.startTracking(keyEvent, this);
                    }
                    return true;
                }
                if (keyEvent.getAction() == 1) {
                    KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                    if (keyDispatcherState2 != null) {
                        keyDispatcherState2.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1069m.clearFocus();
                        setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i10, keyEvent);
        }

        @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
        public final void onWindowFocusChanged(boolean z10) {
            super.onWindowFocusChanged(z10);
            if (z10 && this.f1069m.hasFocus() && getVisibility() == 0) {
                this.f1070n = true;
                Context context = getContext();
                o oVar = SearchView.f1041x0;
                if (context.getResources().getConfiguration().orientation == 2) {
                    a();
                }
            }
        }

        @Override // android.widget.AutoCompleteTextView
        public final void performCompletion() {
        }

        @Override // android.widget.AutoCompleteTextView
        public final void replaceText(CharSequence charSequence) {
        }

        public void setImeVisibility(boolean z10) {
            InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
            if (!z10) {
                this.f1070n = false;
                removeCallbacks(this.f1071o);
                inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
            } else {
                if (!inputMethodManager.isActive(this)) {
                    this.f1070n = true;
                    return;
                }
                this.f1070n = false;
                removeCallbacks(this.f1071o);
                inputMethodManager.showSoftInput(this, 0);
            }
        }

        public void setSearchView(SearchView searchView) {
            this.f1069m = searchView;
        }

        @Override // android.widget.AutoCompleteTextView
        public void setThreshold(int i10) {
            super.setThreshold(i10);
            this.f1068l = i10;
        }
    }

    public class a implements TextWatcher {
        public a() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchView searchView = SearchView.this;
            Editable text = searchView.f1063w.getText();
            searchView.f1050j0 = text;
            boolean z10 = !TextUtils.isEmpty(text);
            searchView.y(z10);
            searchView.A(!z10);
            searchView.u();
            searchView.x();
            if (searchView.R != null && !TextUtils.equals(charSequence, searchView.f1049i0)) {
                m mVar = searchView.R;
                charSequence.toString();
                mVar.a();
            }
            searchView.f1049i0 = charSequence.toString();
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SearchView.this.v();
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            o0.a aVar = SearchView.this.f1043b0;
            if (aVar instanceof z0) {
                aVar.c(null);
            }
        }
    }

    public class d implements View.OnFocusChangeListener {
        public d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z10) {
            SearchView searchView = SearchView.this;
            View.OnFocusChangeListener onFocusChangeListener = searchView.T;
            if (onFocusChangeListener != null) {
                onFocusChangeListener.onFocusChange(searchView, z10);
            }
        }
    }

    public class e implements View.OnLayoutChangeListener {
        public e() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            int dimensionPixelSize;
            SearchView searchView = SearchView.this;
            if (searchView.E.getWidth() > 1) {
                Resources resources = searchView.getContext().getResources();
                int paddingLeft = searchView.f1066y.getPaddingLeft();
                Rect rect = new Rect();
                boolean zB = o1.b(searchView);
                if (searchView.W) {
                    dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width);
                } else {
                    dimensionPixelSize = 0;
                }
                searchView.f1063w.getDropDownBackground().getPadding(rect);
                searchView.f1063w.setDropDownHorizontalOffset(zB ? -rect.left : paddingLeft - (rect.left + dimensionPixelSize));
                searchView.f1063w.setDropDownWidth((((searchView.E.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
            }
        }
    }

    public class f implements View.OnClickListener {
        public f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SearchView searchView = SearchView.this;
            if (view == searchView.A) {
                searchView.s();
                return;
            }
            if (view == searchView.C) {
                searchView.o();
                return;
            }
            if (view == searchView.B) {
                searchView.t();
                return;
            }
            if (view != searchView.D) {
                if (view == searchView.f1063w) {
                    searchView.n();
                    return;
                }
                return;
            }
            SearchableInfo searchableInfo = searchView.f1053m0;
            if (searchableInfo == null) {
                return;
            }
            try {
                if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                    if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                        searchView.getContext().startActivity(searchView.m(searchView.P, searchableInfo));
                    }
                } else {
                    Intent intent = new Intent(searchView.O);
                    ComponentName searchActivity = searchableInfo.getSearchActivity();
                    intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                    searchView.getContext().startActivity(intent);
                }
            } catch (ActivityNotFoundException unused) {
                Log.w("SearchView", "Could not find voice search activity");
            }
        }
    }

    public class g implements View.OnKeyListener {
        public g() {
        }

        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
            SearchView searchView = SearchView.this;
            if (searchView.f1053m0 == null) {
                return false;
            }
            if (!searchView.f1063w.isPopupShowing() || SearchView.this.f1063w.getListSelection() == -1) {
                if ((TextUtils.getTrimmedLength(SearchView.this.f1063w.getText()) == 0) || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i10 != 66) {
                    return false;
                }
                view.cancelLongPress();
                SearchView searchView2 = SearchView.this;
                searchView2.getContext().startActivity(searchView2.l("android.intent.action.SEARCH", null, null, searchView2.f1063w.getText().toString()));
                return true;
            }
            SearchView searchView3 = SearchView.this;
            if (searchView3.f1053m0 == null || searchView3.f1043b0 == null || keyEvent.getAction() != 0 || !keyEvent.hasNoModifiers()) {
                return false;
            }
            if (i10 == 66 || i10 == 84 || i10 == 61) {
                return searchView3.p(searchView3.f1063w.getListSelection());
            }
            if (i10 != 21 && i10 != 22) {
                if (i10 != 19) {
                    return false;
                }
                searchView3.f1063w.getListSelection();
                return false;
            }
            searchView3.f1063w.setSelection(i10 == 21 ? 0 : searchView3.f1063w.length());
            searchView3.f1063w.setListSelection(0);
            searchView3.f1063w.clearListSelection();
            searchView3.f1063w.a();
            return true;
        }
    }

    public class h implements TextView.OnEditorActionListener {
        public h() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            SearchView.this.t();
            return true;
        }
    }

    public class i implements AdapterView.OnItemClickListener {
        public i() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public final void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.p(i10);
        }
    }

    public class j implements AdapterView.OnItemSelectedListener {
        public j() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onItemSelected(AdapterView<?> adapterView, View view, int i10, long j10) {
            SearchView.this.q(i10);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public final void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    public static class k {
        public static void a(AutoCompleteTextView autoCompleteTextView) {
            autoCompleteTextView.refreshAutoCompleteResults();
        }

        public static void b(SearchAutoComplete searchAutoComplete, int i10) {
            searchAutoComplete.setInputMethodMode(i10);
        }
    }

    public interface l {
        boolean a();
    }

    public interface m {
        boolean a();

        boolean b();
    }

    public interface n {
        boolean a();

        boolean b();
    }

    public static class o {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Method f1083a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Method f1084b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Method f1085c;

        @SuppressLint({"DiscouragedPrivateApi", "SoonBlockedPrivateApi"})
        public o() {
            this.f1083a = null;
            this.f1084b = null;
            this.f1085c = null;
            a();
            try {
                Method declaredMethod = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1083a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            try {
                Method declaredMethod2 = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1084b = declaredMethod2;
                declaredMethod2.setAccessible(true);
            } catch (NoSuchMethodException unused2) {
            }
            try {
                Method method = AutoCompleteTextView.class.getMethod("ensureImeVisible", Boolean.TYPE);
                this.f1085c = method;
                method.setAccessible(true);
            } catch (NoSuchMethodException unused3) {
            }
        }

        public static void a() {
            if (Build.VERSION.SDK_INT >= 29) {
                throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
            }
        }
    }

    public static class p extends p0.a {
        public static final Parcelable.Creator<p> CREATOR = new a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f1086j;

        public class a implements Parcelable.ClassLoaderCreator<p> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final p createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new p(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new p[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new p(parcel, null);
            }
        }

        public p(Parcelable parcelable) {
            super(parcelable);
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("SearchView.SavedState{");
            sbC.append(Integer.toHexString(System.identityHashCode(this)));
            sbC.append(" isIconified=");
            sbC.append(this.f1086j);
            sbC.append("}");
            return sbC.toString();
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeValue(Boolean.valueOf(this.f1086j));
        }

        public p(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1086j = ((Boolean) parcel.readValue(null)).booleanValue();
        }
    }

    public static class q extends TouchDelegate {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final View f1087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f1088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Rect f1089c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Rect f1090d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f1091e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f1092f;

        public q(Rect rect, Rect rect2, View view) {
            super(rect, view);
            this.f1091e = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
            this.f1088b = new Rect();
            this.f1090d = new Rect();
            this.f1089c = new Rect();
            a(rect, rect2);
            this.f1087a = view;
        }

        public final void a(Rect rect, Rect rect2) {
            this.f1088b.set(rect);
            this.f1090d.set(rect);
            Rect rect3 = this.f1090d;
            int i10 = this.f1091e;
            rect3.inset(-i10, -i10);
            this.f1089c.set(rect2);
        }

        /* JADX WARN: Code duplicated, block: B:19:0x003f  */
        @Override // android.view.TouchDelegate
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            boolean z10;
            boolean z11;
            int x10 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            int action = motionEvent.getAction();
            boolean z12 = true;
            if (action != 0) {
                if (action == 1 || action == 2) {
                    z11 = this.f1092f;
                    if (z11 && !this.f1090d.contains(x10, y7)) {
                        z12 = z11;
                        z10 = false;
                    }
                } else if (action != 3) {
                    z10 = true;
                    z12 = false;
                } else {
                    z11 = this.f1092f;
                    this.f1092f = false;
                }
                z12 = z11;
                z10 = true;
            } else if (this.f1088b.contains(x10, y7)) {
                this.f1092f = true;
                z10 = true;
            } else {
                z10 = true;
                z12 = false;
            }
            if (!z12) {
                return false;
            }
            if (!z10 || this.f1089c.contains(x10, y7)) {
                Rect rect = this.f1089c;
                motionEvent.setLocation(x10 - rect.left, y7 - rect.top);
            } else {
                motionEvent.setLocation(this.f1087a.getWidth() / 2, this.f1087a.getHeight() / 2);
            }
            return this.f1087a.dispatchTouchEvent(motionEvent);
        }
    }

    static {
        f1041x0 = Build.VERSION.SDK_INT < 29 ? new o() : null;
    }

    public SearchView(Context context) {
        this(context, null);
    }

    private int getPreferredHeight() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_height);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.abc_search_view_preferred_width);
    }

    private void setQuery(CharSequence charSequence) {
        this.f1063w.setText(charSequence);
        this.f1063w.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    public final void A(boolean z10) {
        int i10 = 8;
        if (this.f1048h0 && !this.f1042a0 && z10) {
            this.B.setVisibility(8);
            i10 = 0;
        }
        this.D.setVisibility(i10);
    }

    @Override // j.b
    public final void c() {
        if (this.f1051k0) {
            return;
        }
        this.f1051k0 = true;
        int imeOptions = this.f1063w.getImeOptions();
        this.f1052l0 = imeOptions;
        this.f1063w.setImeOptions(imeOptions | 33554432);
        this.f1063w.setText("");
        setIconified(false);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void clearFocus() {
        this.f1046f0 = true;
        super.clearFocus();
        this.f1063w.clearFocus();
        this.f1063w.setImeVisibility(false);
        this.f1046f0 = false;
    }

    @Override // j.b
    public final void e() {
        this.f1063w.setText("");
        SearchAutoComplete searchAutoComplete = this.f1063w;
        searchAutoComplete.setSelection(searchAutoComplete.length());
        this.f1050j0 = "";
        clearFocus();
        z(true);
        this.f1063w.setImeOptions(this.f1052l0);
        this.f1051k0 = false;
    }

    public int getImeOptions() {
        return this.f1063w.getImeOptions();
    }

    public int getInputType() {
        return this.f1063w.getInputType();
    }

    public int getMaxWidth() {
        return this.f1047g0;
    }

    public CharSequence getQuery() {
        return this.f1063w.getText();
    }

    public CharSequence getQueryHint() {
        CharSequence charSequence = this.d0;
        if (charSequence != null) {
            return charSequence;
        }
        SearchableInfo searchableInfo = this.f1053m0;
        return (searchableInfo == null || searchableInfo.getHintId() == 0) ? this.Q : getContext().getText(this.f1053m0.getHintId());
    }

    public int getSuggestionCommitIconResId() {
        return this.N;
    }

    public int getSuggestionRowLayout() {
        return this.M;
    }

    public o0.a getSuggestionsAdapter() {
        return this.f1043b0;
    }

    public final Intent l(String str, Uri uri, String str2, String str3) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1050j0);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        Bundle bundle = this.f1054n0;
        if (bundle != null) {
            intent.putExtra("app_data", bundle);
        }
        intent.setComponent(this.f1053m0.getSearchActivity());
        return intent;
    }

    public final Intent m(Intent intent, SearchableInfo searchableInfo) {
        ComponentName searchActivity = searchableInfo.getSearchActivity();
        Intent intent2 = new Intent("android.intent.action.SEARCH");
        intent2.setComponent(searchActivity);
        PendingIntent activity = PendingIntent.getActivity(getContext(), 0, intent2, 1107296256);
        Bundle bundle = new Bundle();
        Bundle bundle2 = this.f1054n0;
        if (bundle2 != null) {
            bundle.putParcelable("app_data", bundle2);
        }
        Intent intent3 = new Intent(intent);
        Resources resources = getResources();
        String string = searchableInfo.getVoiceLanguageModeId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageModeId()) : "free_form";
        String string2 = searchableInfo.getVoicePromptTextId() != 0 ? resources.getString(searchableInfo.getVoicePromptTextId()) : null;
        String string3 = searchableInfo.getVoiceLanguageId() != 0 ? resources.getString(searchableInfo.getVoiceLanguageId()) : null;
        int voiceMaxResults = searchableInfo.getVoiceMaxResults() != 0 ? searchableInfo.getVoiceMaxResults() : 1;
        intent3.putExtra("android.speech.extra.LANGUAGE_MODEL", string);
        intent3.putExtra("android.speech.extra.PROMPT", string2);
        intent3.putExtra("android.speech.extra.LANGUAGE", string3);
        intent3.putExtra("android.speech.extra.MAX_RESULTS", voiceMaxResults);
        intent3.putExtra("calling_package", searchActivity != null ? searchActivity.flattenToShortString() : null);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", activity);
        intent3.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", bundle);
        return intent3;
    }

    public final void n() {
        if (Build.VERSION.SDK_INT >= 29) {
            k.a(this.f1063w);
            return;
        }
        o oVar = f1041x0;
        SearchAutoComplete searchAutoComplete = this.f1063w;
        Objects.requireNonNull(oVar);
        o.a();
        Method method = oVar.f1083a;
        if (method != null) {
            try {
                method.invoke(searchAutoComplete, new Object[0]);
            } catch (Exception unused) {
            }
        }
        o oVar2 = f1041x0;
        SearchAutoComplete searchAutoComplete2 = this.f1063w;
        Objects.requireNonNull(oVar2);
        o.a();
        Method method2 = oVar2.f1084b;
        if (method2 != null) {
            try {
                method2.invoke(searchAutoComplete2, new Object[0]);
            } catch (Exception unused2) {
            }
        }
    }

    public final void o() {
        if (!TextUtils.isEmpty(this.f1063w.getText())) {
            this.f1063w.setText("");
            this.f1063w.requestFocus();
            this.f1063w.setImeVisibility(true);
        } else if (this.W) {
            l lVar = this.S;
            if (lVar == null || !lVar.a()) {
                clearFocus();
                z(true);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        removeCallbacks(this.f1055o0);
        post(this.f1056p0);
        super.onDetachedFromWindow();
    }

    @Override // androidx.appcompat.widget.p0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            SearchAutoComplete searchAutoComplete = this.f1063w;
            Rect rect = this.G;
            searchAutoComplete.getLocationInWindow(this.I);
            getLocationInWindow(this.J);
            int[] iArr = this.I;
            int i14 = iArr[1];
            int[] iArr2 = this.J;
            int i15 = i14 - iArr2[1];
            int i16 = iArr[0] - iArr2[0];
            rect.set(i16, i15, searchAutoComplete.getWidth() + i16, searchAutoComplete.getHeight() + i15);
            Rect rect2 = this.H;
            Rect rect3 = this.G;
            rect2.set(rect3.left, 0, rect3.right, i13 - i11);
            q qVar = this.F;
            if (qVar != null) {
                qVar.a(this.H, this.G);
                return;
            }
            q qVar2 = new q(this.H, this.G, this.f1063w);
            this.F = qVar2;
            setTouchDelegate(qVar2);
        }
    }

    @Override // androidx.appcompat.widget.p0, android.view.View
    public final void onMeasure(int i10, int i11) {
        int i12;
        if (this.f1042a0) {
            super.onMeasure(i10, i11);
            return;
        }
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        if (mode == Integer.MIN_VALUE) {
            int i13 = this.f1047g0;
            size = i13 > 0 ? Math.min(i13, size) : Math.min(getPreferredWidth(), size);
        } else if (mode == 0) {
            size = this.f1047g0;
            if (size <= 0) {
                size = getPreferredWidth();
            }
        } else if (mode == 1073741824 && (i12 = this.f1047g0) > 0) {
            size = Math.min(i12, size);
        }
        int mode2 = View.MeasureSpec.getMode(i11);
        int size2 = View.MeasureSpec.getSize(i11);
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(getPreferredHeight(), size2);
        } else if (mode2 == 0) {
            size2 = getPreferredHeight();
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof p)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        p pVar = (p) parcelable;
        super.onRestoreInstanceState(pVar.f12620h);
        z(pVar.f1086j);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        p pVar = new p(super.onSaveInstanceState());
        pVar.f1086j = this.f1042a0;
        return pVar;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z10) {
        super.onWindowFocusChanged(z10);
        post(this.f1055o0);
    }

    public final boolean p(int i10) {
        int position;
        String strI;
        n nVar = this.U;
        if (nVar != null && nVar.a()) {
            return false;
        }
        Cursor cursor = this.f1043b0.f12052j;
        if (cursor != null && cursor.moveToPosition(i10)) {
            Intent intentL = null;
            try {
                int i11 = z0.F;
                String strI2 = z0.i(cursor, cursor.getColumnIndex("suggest_intent_action"));
                if (strI2 == null) {
                    strI2 = this.f1053m0.getSuggestIntentAction();
                }
                if (strI2 == null) {
                    strI2 = "android.intent.action.SEARCH";
                }
                String strI3 = z0.i(cursor, cursor.getColumnIndex("suggest_intent_data"));
                if (strI3 == null) {
                    strI3 = this.f1053m0.getSuggestIntentData();
                }
                if (strI3 != null && (strI = z0.i(cursor, cursor.getColumnIndex("suggest_intent_data_id"))) != null) {
                    strI3 = strI3 + "/" + Uri.encode(strI);
                }
                intentL = l(strI2, strI3 == null ? null : Uri.parse(strI3), z0.i(cursor, cursor.getColumnIndex("suggest_intent_extra_data")), z0.i(cursor, cursor.getColumnIndex("suggest_intent_query")));
            } catch (RuntimeException e10) {
                try {
                    position = cursor.getPosition();
                } catch (RuntimeException unused) {
                    position = -1;
                }
                Log.w("SearchView", "Search suggestions cursor at row " + position + " returned exception.", e10);
            }
            if (intentL != null) {
                try {
                    getContext().startActivity(intentL);
                } catch (RuntimeException e11) {
                    Log.e("SearchView", "Failed launch activity: " + intentL, e11);
                }
            }
        }
        this.f1063w.setImeVisibility(false);
        this.f1063w.dismissDropDown();
        return true;
    }

    public final boolean q(int i10) {
        n nVar = this.U;
        if (nVar != null && nVar.b()) {
            return false;
        }
        Editable text = this.f1063w.getText();
        Cursor cursor = this.f1043b0.f12052j;
        if (cursor == null) {
            return true;
        }
        if (!cursor.moveToPosition(i10)) {
            setQuery(text);
            return true;
        }
        CharSequence charSequenceD = this.f1043b0.d(cursor);
        if (charSequenceD != null) {
            setQuery(charSequenceD);
            return true;
        }
        setQuery(text);
        return true;
    }

    public final void r(CharSequence charSequence) {
        setQuery(charSequence);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean requestFocus(int i10, Rect rect) {
        if (this.f1046f0 || !isFocusable()) {
            return false;
        }
        if (this.f1042a0) {
            return super.requestFocus(i10, rect);
        }
        boolean zRequestFocus = this.f1063w.requestFocus(i10, rect);
        if (zRequestFocus) {
            z(false);
        }
        return zRequestFocus;
    }

    public final void s() {
        z(false);
        this.f1063w.requestFocus();
        this.f1063w.setImeVisibility(true);
        View.OnClickListener onClickListener = this.V;
        if (onClickListener != null) {
            onClickListener.onClick(this);
        }
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1054n0 = bundle;
    }

    public void setIconified(boolean z10) {
        if (z10) {
            o();
        } else {
            s();
        }
    }

    public void setIconifiedByDefault(boolean z10) {
        if (this.W == z10) {
            return;
        }
        this.W = z10;
        z(z10);
        w();
    }

    public void setImeOptions(int i10) {
        this.f1063w.setImeOptions(i10);
    }

    public void setInputType(int i10) {
        this.f1063w.setInputType(i10);
    }

    public void setMaxWidth(int i10) {
        this.f1047g0 = i10;
        requestLayout();
    }

    public void setOnCloseListener(l lVar) {
        this.S = lVar;
    }

    public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
        this.T = onFocusChangeListener;
    }

    public void setOnQueryTextListener(m mVar) {
        this.R = mVar;
    }

    public void setOnSearchClickListener(View.OnClickListener onClickListener) {
        this.V = onClickListener;
    }

    public void setOnSuggestionListener(n nVar) {
        this.U = nVar;
    }

    public void setQueryHint(CharSequence charSequence) {
        this.d0 = charSequence;
        w();
    }

    public void setQueryRefinementEnabled(boolean z10) {
        this.f1045e0 = z10;
        o0.a aVar = this.f1043b0;
        if (aVar instanceof z0) {
            ((z0) aVar).f1489x = z10 ? 2 : 1;
        }
    }

    /* JADX WARN: Code duplicated, block: B:34:0x009f  */
    public void setSearchableInfo(SearchableInfo searchableInfo) {
        boolean z10;
        this.f1053m0 = searchableInfo;
        Intent intent = null;
        if (searchableInfo != null) {
            this.f1063w.setThreshold(searchableInfo.getSuggestThreshold());
            this.f1063w.setImeOptions(this.f1053m0.getImeOptions());
            int inputType = this.f1053m0.getInputType();
            if ((inputType & 15) == 1) {
                inputType &= -65537;
                if (this.f1053m0.getSuggestAuthority() != null) {
                    inputType = inputType | 65536 | 524288;
                }
            }
            this.f1063w.setInputType(inputType);
            o0.a aVar = this.f1043b0;
            if (aVar != null) {
                aVar.c(null);
            }
            if (this.f1053m0.getSuggestAuthority() != null) {
                z0 z0Var = new z0(getContext(), this, this.f1053m0, this.f1057q0);
                this.f1043b0 = z0Var;
                this.f1063w.setAdapter(z0Var);
                ((z0) this.f1043b0).f1489x = this.f1045e0 ? 2 : 1;
            }
            w();
        }
        SearchableInfo searchableInfo2 = this.f1053m0;
        if (searchableInfo2 != null && searchableInfo2.getVoiceSearchEnabled()) {
            if (this.f1053m0.getVoiceSearchLaunchWebSearch()) {
                intent = this.O;
            } else if (this.f1053m0.getVoiceSearchLaunchRecognizer()) {
                intent = this.P;
            }
            z10 = (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) ? false : true;
        }
        this.f1048h0 = z10;
        if (z10) {
            this.f1063w.setPrivateImeOptions("nm");
        }
        z(this.f1042a0);
    }

    public void setSubmitButtonEnabled(boolean z10) {
        this.f1044c0 = z10;
        z(this.f1042a0);
    }

    public void setSuggestionsAdapter(o0.a aVar) {
        this.f1043b0 = aVar;
        this.f1063w.setAdapter(aVar);
    }

    public final void t() {
        Editable text = this.f1063w.getText();
        if (text == null || TextUtils.getTrimmedLength(text) <= 0) {
            return;
        }
        m mVar = this.R;
        if (mVar != null) {
            text.toString();
            if (mVar.b()) {
                return;
            }
        }
        if (this.f1053m0 != null) {
            getContext().startActivity(l("android.intent.action.SEARCH", null, null, text.toString()));
        }
        this.f1063w.setImeVisibility(false);
        this.f1063w.dismissDropDown();
    }

    public final void u() {
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f1063w.getText());
        if (!z11 && (!this.W || this.f1051k0)) {
            z10 = false;
        }
        this.C.setVisibility(z10 ? 0 : 8);
        Drawable drawable = this.C.getDrawable();
        if (drawable != null) {
            drawable.setState(z11 ? ViewGroup.ENABLED_STATE_SET : ViewGroup.EMPTY_STATE_SET);
        }
    }

    public final void v() {
        int[] iArr = this.f1063w.hasFocus() ? ViewGroup.FOCUSED_STATE_SET : ViewGroup.EMPTY_STATE_SET;
        Drawable background = this.f1066y.getBackground();
        if (background != null) {
            background.setState(iArr);
        }
        Drawable background2 = this.f1067z.getBackground();
        if (background2 != null) {
            background2.setState(iArr);
        }
        invalidate();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void w() {
        CharSequence queryHint = getQueryHint();
        SearchAutoComplete searchAutoComplete = this.f1063w;
        CharSequence charSequence = queryHint;
        if (queryHint == null) {
            charSequence = "";
        }
        CharSequence charSequence2 = charSequence;
        if (this.W && this.L != null) {
            charSequence2 = charSequence;
            int textSize = (int) (((double) searchAutoComplete.getTextSize()) * 1.25d);
            this.L.setBounds(0, 0, textSize, textSize);
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
            spannableStringBuilder.setSpan(new ImageSpan(this.L), 1, 2, 33);
            spannableStringBuilder.append(charSequence);
            charSequence2 = spannableStringBuilder;
        }
        charSequence2 = charSequence;
        searchAutoComplete.setHint(charSequence2);
    }

    public final void x() {
        int i10 = 0;
        if (!((this.f1044c0 || this.f1048h0) && !this.f1042a0) || (this.B.getVisibility() != 0 && this.D.getVisibility() != 0)) {
            i10 = 8;
        }
        this.f1067z.setVisibility(i10);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0021  */
    public final void y(boolean z10) {
        boolean z11 = this.f1044c0;
        int i10 = 0;
        if (z11) {
            if (!((z11 || this.f1048h0) && !this.f1042a0) || !hasFocus() || (!z10 && this.f1048h0)) {
                i10 = 8;
            }
        } else {
            i10 = 8;
        }
        this.B.setVisibility(i10);
    }

    public final void z(boolean z10) {
        this.f1042a0 = z10;
        int i10 = z10 ? 0 : 8;
        boolean z11 = !TextUtils.isEmpty(this.f1063w.getText());
        this.A.setVisibility(i10);
        y(z11);
        this.f1065x.setVisibility(z10 ? 8 : 0);
        this.K.setVisibility((this.K.getDrawable() == null || this.W) ? 8 : 0);
        u();
        A(!z11);
        x();
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.searchViewStyle);
    }

    public SearchView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.G = new Rect();
        this.H = new Rect();
        this.I = new int[2];
        this.J = new int[2];
        this.f1055o0 = new b();
        this.f1056p0 = new c();
        this.f1057q0 = new WeakHashMap<>();
        f fVar = new f();
        this.f1058r0 = fVar;
        this.f1059s0 = new g();
        h hVar = new h();
        this.f1060t0 = hVar;
        i iVar = new i();
        this.f1061u0 = iVar;
        j jVar = new j();
        this.f1062v0 = jVar;
        this.f1064w0 = new a();
        int[] iArr = R.styleable.SearchView;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        f1 f1Var = new f1(context, typedArrayObtainStyledAttributes);
        j0.a0.o(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10);
        LayoutInflater.from(context).inflate(f1Var.l(R.styleable.SearchView_layout, R.layout.abc_search_view), (ViewGroup) this, true);
        SearchAutoComplete searchAutoComplete = (SearchAutoComplete) findViewById(R.id.search_src_text);
        this.f1063w = searchAutoComplete;
        searchAutoComplete.setSearchView(this);
        this.f1065x = findViewById(R.id.search_edit_frame);
        View viewFindViewById = findViewById(R.id.search_plate);
        this.f1066y = viewFindViewById;
        View viewFindViewById2 = findViewById(R.id.submit_area);
        this.f1067z = viewFindViewById2;
        ImageView imageView = (ImageView) findViewById(R.id.search_button);
        this.A = imageView;
        ImageView imageView2 = (ImageView) findViewById(R.id.search_go_btn);
        this.B = imageView2;
        ImageView imageView3 = (ImageView) findViewById(R.id.search_close_btn);
        this.C = imageView3;
        ImageView imageView4 = (ImageView) findViewById(R.id.search_voice_btn);
        this.D = imageView4;
        ImageView imageView5 = (ImageView) findViewById(R.id.search_mag_icon);
        this.K = imageView5;
        j0.a0.d.q(viewFindViewById, f1Var.g(R.styleable.SearchView_queryBackground));
        j0.a0.d.q(viewFindViewById2, f1Var.g(R.styleable.SearchView_submitBackground));
        int i11 = R.styleable.SearchView_searchIcon;
        imageView.setImageDrawable(f1Var.g(i11));
        imageView2.setImageDrawable(f1Var.g(R.styleable.SearchView_goIcon));
        imageView3.setImageDrawable(f1Var.g(R.styleable.SearchView_closeIcon));
        imageView4.setImageDrawable(f1Var.g(R.styleable.SearchView_voiceIcon));
        imageView5.setImageDrawable(f1Var.g(i11));
        this.L = f1Var.g(R.styleable.SearchView_searchHintIcon);
        j1.a(imageView, getResources().getString(R.string.abc_searchview_description_search));
        this.M = f1Var.l(R.styleable.SearchView_suggestionRowLayout, R.layout.abc_search_dropdown_item_icons_2line);
        this.N = f1Var.l(R.styleable.SearchView_commitIcon, 0);
        imageView.setOnClickListener(fVar);
        imageView3.setOnClickListener(fVar);
        imageView2.setOnClickListener(fVar);
        imageView4.setOnClickListener(fVar);
        searchAutoComplete.setOnClickListener(fVar);
        searchAutoComplete.addTextChangedListener(this.f1064w0);
        searchAutoComplete.setOnEditorActionListener(hVar);
        searchAutoComplete.setOnItemClickListener(iVar);
        searchAutoComplete.setOnItemSelectedListener(jVar);
        searchAutoComplete.setOnKeyListener(this.f1059s0);
        searchAutoComplete.setOnFocusChangeListener(new d());
        setIconifiedByDefault(f1Var.a(R.styleable.SearchView_iconifiedByDefault, true));
        int iF = f1Var.f(R.styleable.SearchView_android_maxWidth, -1);
        if (iF != -1) {
            setMaxWidth(iF);
        }
        this.Q = f1Var.n(R.styleable.SearchView_defaultQueryHint);
        this.d0 = f1Var.n(R.styleable.SearchView_queryHint);
        int iJ = f1Var.j(R.styleable.SearchView_android_imeOptions, -1);
        if (iJ != -1) {
            setImeOptions(iJ);
        }
        int iJ2 = f1Var.j(R.styleable.SearchView_android_inputType, -1);
        if (iJ2 != -1) {
            setInputType(iJ2);
        }
        setFocusable(f1Var.a(R.styleable.SearchView_android_focusable, true));
        f1Var.r();
        Intent intent = new Intent("android.speech.action.WEB_SEARCH");
        this.O = intent;
        intent.addFlags(268435456);
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
        Intent intent2 = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        this.P = intent2;
        intent2.addFlags(268435456);
        View viewFindViewById3 = findViewById(searchAutoComplete.getDropDownAnchor());
        this.E = viewFindViewById3;
        if (viewFindViewById3 != null) {
            viewFindViewById3.addOnLayoutChangeListener(new e());
        }
        z(this.W);
        w();
    }
}
