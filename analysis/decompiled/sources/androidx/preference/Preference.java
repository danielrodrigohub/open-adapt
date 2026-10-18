package androidx.preference;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import z.i;

/* JADX INFO: loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public int L;
    public c M;
    public List<Preference> N;
    public PreferenceGroup O;
    public boolean P;
    public e Q;
    public f R;
    public final a S;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f2272h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public androidx.preference.f f2273i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f2274j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f2275k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public d f2276l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2277m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public CharSequence f2278n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f2279o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f2280p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Drawable f2281q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public String f2282r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Intent f2283s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public String f2284t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Bundle f2285u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f2286v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f2287w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public boolean f2288x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public String f2289y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public Object f2290z;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Preference.this.E(view);
        }
    }

    public static class b extends AbsSavedState {
        public static final Parcelable.Creator<b> CREATOR = new a();

        public class a implements Parcelable.Creator<b> {
            @Override // android.os.Parcelable.Creator
            public final b createFromParcel(Parcel parcel) {
                return new b(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final b[] newArray(int i10) {
                return new b[i10];
            }
        }

        public b(Parcel parcel) {
            super(parcel);
        }

        public b(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public interface c {
    }

    public interface d {
    }

    public static class e implements View.OnCreateContextMenuListener, MenuItem.OnMenuItemClickListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Preference f2292h;

        public e(Preference preference) {
            this.f2292h = preference;
        }

        @Override // android.view.View.OnCreateContextMenuListener
        public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
            CharSequence charSequenceN = this.f2292h.n();
            if (!this.f2292h.I || TextUtils.isEmpty(charSequenceN)) {
                return;
            }
            contextMenu.setHeaderTitle(charSequenceN);
            contextMenu.add(0, 0, 0, R.string.copy).setOnMenuItemClickListener(this);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            ClipboardManager clipboardManager = (ClipboardManager) this.f2292h.f2272h.getSystemService("clipboard");
            CharSequence charSequenceN = this.f2292h.n();
            clipboardManager.setPrimaryClip(ClipData.newPlainText("Preference", charSequenceN));
            Context context = this.f2292h.f2272h;
            Toast.makeText(context, context.getString(R.string.preference_copied, charSequenceN), 0).show();
            return true;
        }
    }

    public interface f<T extends Preference> {
        CharSequence a(T t10);
    }

    public Preference(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f2277m = Integer.MAX_VALUE;
        this.f2286v = true;
        this.f2287w = true;
        this.f2288x = true;
        this.A = true;
        this.B = true;
        this.C = true;
        this.D = true;
        this.E = true;
        this.G = true;
        this.J = true;
        int i12 = R.layout.preference;
        this.K = i12;
        this.S = new a();
        this.f2272h = context;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i10, i11);
        this.f2280p = i.c(typedArrayObtainStyledAttributes, R.styleable.Preference_icon, R.styleable.Preference_android_icon);
        this.f2282r = i.d(typedArrayObtainStyledAttributes, R.styleable.Preference_key, R.styleable.Preference_android_key);
        int i13 = R.styleable.Preference_title;
        int i14 = R.styleable.Preference_android_title;
        CharSequence text = typedArrayObtainStyledAttributes.getText(i13);
        this.f2278n = text == null ? typedArrayObtainStyledAttributes.getText(i14) : text;
        int i15 = R.styleable.Preference_summary;
        int i16 = R.styleable.Preference_android_summary;
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(i15);
        this.f2279o = text2 == null ? typedArrayObtainStyledAttributes.getText(i16) : text2;
        this.f2277m = typedArrayObtainStyledAttributes.getInt(R.styleable.Preference_order, typedArrayObtainStyledAttributes.getInt(R.styleable.Preference_android_order, Integer.MAX_VALUE));
        this.f2284t = i.d(typedArrayObtainStyledAttributes, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
        this.K = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Preference_layout, typedArrayObtainStyledAttributes.getResourceId(R.styleable.Preference_android_layout, i12));
        this.L = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Preference_widgetLayout, typedArrayObtainStyledAttributes.getResourceId(R.styleable.Preference_android_widgetLayout, 0));
        this.f2286v = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_enabled, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_enabled, true));
        this.f2287w = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_selectable, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_selectable, true));
        this.f2288x = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_persistent, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_persistent, true));
        this.f2289y = i.d(typedArrayObtainStyledAttributes, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
        int i17 = R.styleable.Preference_allowDividerAbove;
        this.D = typedArrayObtainStyledAttributes.getBoolean(i17, typedArrayObtainStyledAttributes.getBoolean(i17, this.f2287w));
        int i18 = R.styleable.Preference_allowDividerBelow;
        this.E = typedArrayObtainStyledAttributes.getBoolean(i18, typedArrayObtainStyledAttributes.getBoolean(i18, this.f2287w));
        int i19 = R.styleable.Preference_defaultValue;
        if (typedArrayObtainStyledAttributes.hasValue(i19)) {
            this.f2290z = A(typedArrayObtainStyledAttributes, i19);
        } else {
            int i20 = R.styleable.Preference_android_defaultValue;
            if (typedArrayObtainStyledAttributes.hasValue(i20)) {
                this.f2290z = A(typedArrayObtainStyledAttributes, i20);
            }
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_shouldDisableView, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_shouldDisableView, true));
        int i21 = R.styleable.Preference_singleLineTitle;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i21);
        this.F = zHasValue;
        if (zHasValue) {
            this.G = typedArrayObtainStyledAttributes.getBoolean(i21, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_singleLineTitle, true));
        }
        this.H = typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_iconSpaceReserved, typedArrayObtainStyledAttributes.getBoolean(R.styleable.Preference_android_iconSpaceReserved, false));
        int i22 = R.styleable.Preference_isPreferenceVisible;
        this.C = typedArrayObtainStyledAttributes.getBoolean(i22, typedArrayObtainStyledAttributes.getBoolean(i22, true));
        int i23 = R.styleable.Preference_enableCopying;
        this.I = typedArrayObtainStyledAttributes.getBoolean(i23, typedArrayObtainStyledAttributes.getBoolean(i23, false));
        typedArrayObtainStyledAttributes.recycle();
    }

    public Object A(TypedArray typedArray, int i10) {
        return null;
    }

    public void B(Parcelable parcelable) {
        this.P = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable C() {
        this.P = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void D(Object obj) {
    }

    public void E(View view) {
        Intent intent;
        androidx.preference.f.c cVar;
        if (p() && this.f2287w) {
            y();
            d dVar = this.f2276l;
            if (dVar != null) {
                androidx.preference.e eVar = (androidx.preference.e) dVar;
                eVar.f2342a.O(Integer.MAX_VALUE);
                androidx.preference.d dVar2 = eVar.f2343b;
                dVar2.f2336h.removeCallbacks(dVar2.f2337i);
                dVar2.f2336h.post(dVar2.f2337i);
                Objects.requireNonNull(eVar.f2342a);
                return;
            }
            androidx.preference.f fVar = this.f2273i;
            if ((fVar == null || (cVar = fVar.f2352i) == null || !cVar.c(this)) && (intent = this.f2283s) != null) {
                this.f2272h.startActivity(intent);
            }
        }
    }

    public final boolean F(String str) {
        if (!I()) {
            return false;
        }
        if (TextUtils.equals(str, l(null))) {
            return true;
        }
        SharedPreferences.Editor editorC = this.f2273i.c();
        editorC.putString(this.f2282r, str);
        J(editorC);
        return true;
    }

    public final void G(View view, boolean z10) {
        view.setEnabled(z10);
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (true) {
            childCount--;
            if (childCount < 0) {
                return;
            } else {
                G(viewGroup.getChildAt(childCount), z10);
            }
        }
    }

    public boolean H() {
        return !p();
    }

    public final boolean I() {
        return this.f2273i != null && this.f2288x && o();
    }

    public final void J(SharedPreferences.Editor editor) {
        if (!this.f2273i.f2348e) {
            editor.apply();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final void K() {
        ?? r10;
        String str = this.f2289y;
        if (str != null) {
            androidx.preference.f fVar = this.f2273i;
            Preference preferenceA = fVar == null ? null : fVar.a(str);
            if (preferenceA == null || (r10 = preferenceA.N) == 0) {
                return;
            }
            r10.remove(this);
        }
    }

    public void b(Bundle bundle) {
        Parcelable parcelable;
        if (!o() || (parcelable = bundle.getParcelable(this.f2282r)) == null) {
            return;
        }
        this.P = false;
        B(parcelable);
        if (!this.P) {
            throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i10 = this.f2277m;
        int i11 = preference2.f2277m;
        if (i10 != i11) {
            return i10 - i11;
        }
        CharSequence charSequence = this.f2278n;
        CharSequence charSequence2 = preference2.f2278n;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.f2278n.toString());
    }

    public void g(Bundle bundle) {
        if (o()) {
            this.P = false;
            Parcelable parcelableC = C();
            if (!this.P) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            }
            if (parcelableC != null) {
                bundle.putParcelable(this.f2282r, parcelableC);
            }
        }
    }

    public long i() {
        return this.f2274j;
    }

    public final boolean j(boolean z10) {
        return !I() ? z10 : this.f2273i.d().getBoolean(this.f2282r, z10);
    }

    public final int k(int i10) {
        return !I() ? i10 : this.f2273i.d().getInt(this.f2282r, i10);
    }

    public final String l(String str) {
        return !I() ? str : this.f2273i.d().getString(this.f2282r, str);
    }

    public final Set<String> m(Set<String> set) {
        return !I() ? set : this.f2273i.d().getStringSet(this.f2282r, set);
    }

    public CharSequence n() {
        f fVar = this.R;
        return fVar != null ? fVar.a(this) : this.f2279o;
    }

    public final boolean o() {
        return !TextUtils.isEmpty(this.f2282r);
    }

    public boolean p() {
        return this.f2286v && this.A && this.B;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public void q() {
        c cVar = this.M;
        if (cVar != null) {
            androidx.preference.d dVar = (androidx.preference.d) cVar;
            int iIndexOf = dVar.f2334f.indexOf(this);
            if (iIndexOf != -1) {
                dVar.f(iIndexOf, this);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public void s(boolean z10) {
        ?? r10 = this.N;
        if (r10 == 0) {
            return;
        }
        int size = r10.size();
        for (int i10 = 0; i10 < size; i10++) {
            Preference preference = (Preference) r10.get(i10);
            if (preference.A == z10) {
                preference.A = !z10;
                preference.s(preference.H());
                preference.q();
            }
        }
    }

    public final void t() {
        c cVar = this.M;
        if (cVar != null) {
            androidx.preference.d dVar = (androidx.preference.d) cVar;
            dVar.f2336h.removeCallbacks(dVar.f2337i);
            dVar.f2336h.post(dVar.f2337i);
        }
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        CharSequence charSequence = this.f2278n;
        if (!TextUtils.isEmpty(charSequence)) {
            sb2.append(charSequence);
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
        }
        CharSequence charSequenceN = n();
        if (!TextUtils.isEmpty(charSequenceN)) {
            sb2.append(charSequenceN);
            sb2.append(SafeJsonPrimitive.NULL_CHAR);
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2.toString();
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public void u() {
        if (TextUtils.isEmpty(this.f2289y)) {
            return;
        }
        String str = this.f2289y;
        androidx.preference.f fVar = this.f2273i;
        Preference preferenceA = fVar == null ? null : fVar.a(str);
        if (preferenceA == null) {
            StringBuilder sbC = a0.b.c("Dependency \"");
            sbC.append(this.f2289y);
            sbC.append("\" not found for preference \"");
            sbC.append(this.f2282r);
            sbC.append("\" (title: \"");
            sbC.append((Object) this.f2278n);
            sbC.append("\"");
            throw new IllegalStateException(sbC.toString());
        }
        if (preferenceA.N == null) {
            preferenceA.N = new ArrayList();
        }
        preferenceA.N.add(this);
        boolean zH = preferenceA.H();
        if (this.A == zH) {
            this.A = !zH;
            s(H());
            q();
        }
    }

    public final void w(androidx.preference.f fVar) {
        long j10;
        this.f2273i = fVar;
        if (!this.f2275k) {
            synchronized (fVar) {
                j10 = fVar.f2345b;
                fVar.f2345b = 1 + j10;
            }
            this.f2274j = j10;
        }
        if (I()) {
            androidx.preference.f fVar2 = this.f2273i;
            if ((fVar2 != null ? fVar2.d() : null).contains(this.f2282r)) {
                D(null);
                return;
            }
        }
        Object obj = this.f2290z;
        if (obj != null) {
            D(obj);
        }
    }

    public void x(g gVar) {
        Integer numValueOf;
        View view = gVar.f2453a;
        view.setOnClickListener(this.S);
        view.setId(0);
        TextView textView = (TextView) gVar.A(android.R.id.summary);
        if (textView != null) {
            CharSequence charSequenceN = n();
            if (TextUtils.isEmpty(charSequenceN)) {
                textView.setVisibility(8);
                numValueOf = null;
            } else {
                textView.setText(charSequenceN);
                textView.setVisibility(0);
                numValueOf = Integer.valueOf(textView.getCurrentTextColor());
            }
        } else {
            numValueOf = null;
        }
        TextView textView2 = (TextView) gVar.A(android.R.id.title);
        if (textView2 != null) {
            CharSequence charSequence = this.f2278n;
            if (TextUtils.isEmpty(charSequence)) {
                textView2.setVisibility(8);
            } else {
                textView2.setText(charSequence);
                textView2.setVisibility(0);
                if (this.F) {
                    textView2.setSingleLine(this.G);
                }
                if (!this.f2287w && p() && numValueOf != null) {
                    textView2.setTextColor(numValueOf.intValue());
                }
            }
        }
        ImageView imageView = (ImageView) gVar.A(android.R.id.icon);
        if (imageView != null) {
            int i10 = this.f2280p;
            if (i10 != 0 || this.f2281q != null) {
                if (this.f2281q == null) {
                    this.f2281q = g.a.b(this.f2272h, i10);
                }
                Drawable drawable = this.f2281q;
                if (drawable != null) {
                    imageView.setImageDrawable(drawable);
                }
            }
            if (this.f2281q != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.H ? 4 : 8);
            }
        }
        View viewA = gVar.A(R.id.icon_frame);
        if (viewA == null) {
            viewA = gVar.A(android.R.id.icon_frame);
        }
        if (viewA != null) {
            if (this.f2281q != null) {
                viewA.setVisibility(0);
            } else {
                viewA.setVisibility(this.H ? 4 : 8);
            }
        }
        if (this.J) {
            G(view, p());
        } else {
            G(view, true);
        }
        boolean z10 = this.f2287w;
        view.setFocusable(z10);
        view.setClickable(z10);
        gVar.f2358x = this.D;
        gVar.f2359y = this.E;
        boolean z11 = this.I;
        if (z11 && this.Q == null) {
            this.Q = new e(this);
        }
        view.setOnCreateContextMenuListener(z11 ? this.Q : null);
        view.setLongClickable(z11);
        if (!z11 || z10) {
            return;
        }
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        a0.d.q(view, null);
    }

    public void y() {
    }

    public void z() {
        K();
    }

    public Preference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, R.attr.preferenceStyle, android.R.attr.preferenceStyle));
    }

    public Preference(Context context) {
        this(context, null);
    }
}
