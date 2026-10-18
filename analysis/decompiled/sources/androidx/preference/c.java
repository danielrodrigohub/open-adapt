package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.m;
import androidx.fragment.app.x;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Objects;

/* JADX INFO: compiled from: PreferenceFragmentCompat.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends m implements androidx.preference.f.c, androidx.preference.f.a, androidx.preference.f.b, DialogPreference.a {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public androidx.preference.f f2320b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public RecyclerView f2321c0;
    public boolean d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f2322e0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final C0030c f2319a0 = new C0030c();

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f2323f0 = R.layout.preference_list_fragment;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final a f2324g0 = new a(Looper.getMainLooper());

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final b f2325h0 = new b();

    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            c cVar = c.this;
            PreferenceScreen preferenceScreen = cVar.f2320b0.f2351h;
            if (preferenceScreen != null) {
                cVar.f2321c0.setAdapter(new androidx.preference.d(preferenceScreen));
                preferenceScreen.u();
            }
        }
    }

    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public class b implements Runnable {
        public b() {
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
        @Override // java.lang.Runnable
        public final void run() {
            RecyclerView recyclerView = c.this.f2321c0;
            recyclerView.focusableViewAvailable(recyclerView);
        }
    }

    /* JADX INFO: renamed from: androidx.preference.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public class C0030c extends RecyclerView.l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Drawable f2328a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2329b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2330c = true;

        public C0030c() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public final void f(Rect rect, View view, RecyclerView recyclerView, RecyclerView.y yVar) {
            if (i(view, recyclerView)) {
                rect.bottom = this.f2329b;
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.l
        public final void h(Canvas canvas, RecyclerView recyclerView) {
            if (this.f2328a == null) {
                return;
            }
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = recyclerView.getChildAt(i10);
                if (i(childAt, recyclerView)) {
                    int height = childAt.getHeight() + ((int) childAt.getY());
                    this.f2328a.setBounds(0, height, width, this.f2329b + height);
                    this.f2328a.draw(canvas);
                }
            }
        }

        public final boolean i(View view, RecyclerView recyclerView) {
            RecyclerView.b0 b0VarJ = recyclerView.J(view);
            boolean z10 = false;
            if (!((b0VarJ instanceof g) && ((g) b0VarJ).f2359y)) {
                return false;
            }
            boolean z11 = this.f2330c;
            int iIndexOfChild = recyclerView.indexOfChild(view);
            if (iIndexOfChild >= recyclerView.getChildCount() - 1) {
                return z11;
            }
            RecyclerView.b0 b0VarJ2 = recyclerView.J(recyclerView.getChildAt(iIndexOfChild + 1));
            if ((b0VarJ2 instanceof g) && ((g) b0VarJ2).f2358x) {
                z10 = true;
            }
            return z10;
        }
    }

    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public interface d {
        boolean a();
    }

    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public interface e {
        boolean a();
    }

    /* JADX INFO: compiled from: PreferenceFragmentCompat.java */
    public interface f {
        void q(c cVar, PreferenceScreen preferenceScreen);
    }

    @Override // androidx.fragment.app.m
    public void H(Bundle bundle) {
        super.H(bundle);
        TypedValue typedValue = new TypedValue();
        f0().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i10 = typedValue.resourceId;
        if (i10 == 0) {
            i10 = R.style.PreferenceThemeOverlay;
        }
        f0().getTheme().applyStyle(i10, false);
        androidx.preference.f fVar = new androidx.preference.f(f0());
        this.f2320b0 = fVar;
        fVar.f2354k = this;
        Bundle bundle2 = this.f1971n;
        p0(bundle2 != null ? bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT") : null);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        RecyclerView recyclerView;
        TypedArray typedArrayObtainStyledAttributes = f0().obtainStyledAttributes(null, R.styleable.PreferenceFragmentCompat, R.attr.preferenceFragmentCompatStyle, 0);
        this.f2323f0 = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PreferenceFragmentCompat_android_layout, this.f2323f0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.PreferenceFragmentCompat_android_divider);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.PreferenceFragmentCompat_android_dividerHeight, -1);
        boolean z10 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PreferenceFragmentCompat_allowDividerAfterLastItem, true);
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(f0());
        View viewInflate = layoutInflaterCloneInContext.inflate(this.f2323f0, viewGroup, false);
        View viewFindViewById = viewInflate.findViewById(android.R.id.list_container);
        if (!(viewFindViewById instanceof ViewGroup)) {
            throw new IllegalStateException("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        }
        ViewGroup viewGroup2 = (ViewGroup) viewFindViewById;
        if (!f0().getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
            recyclerView = (RecyclerView) layoutInflaterCloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
            f0();
            recyclerView.setLayoutManager(new LinearLayoutManager(1));
            recyclerView.setAccessibilityDelegateCompat(new x0.e(recyclerView));
        }
        this.f2321c0 = recyclerView;
        recyclerView.g(this.f2319a0);
        q0(drawable);
        if (dimensionPixelSize != -1) {
            C0030c c0030c = this.f2319a0;
            c0030c.f2329b = dimensionPixelSize;
            c.this.f2321c0.P();
        }
        this.f2319a0.f2330c = z10;
        if (this.f2321c0.getParent() == null) {
            viewGroup2.addView(this.f2321c0);
        }
        this.f2324g0.post(this.f2325h0);
        return viewInflate;
    }

    @Override // androidx.fragment.app.m
    public final void K() {
        this.f2324g0.removeCallbacks(this.f2325h0);
        this.f2324g0.removeMessages(1);
        if (this.d0) {
            this.f2321c0.setAdapter(null);
            PreferenceScreen preferenceScreen = this.f2320b0.f2351h;
            if (preferenceScreen != null) {
                preferenceScreen.z();
            }
        }
        this.f2321c0 = null;
        this.K = true;
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        PreferenceScreen preferenceScreen = this.f2320b0.f2351h;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.g(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }

    @Override // androidx.fragment.app.m
    public void S() {
        this.K = true;
        androidx.preference.f fVar = this.f2320b0;
        fVar.f2352i = this;
        fVar.f2353j = this;
    }

    @Override // androidx.fragment.app.m
    public void T() {
        this.K = true;
        androidx.preference.f fVar = this.f2320b0;
        fVar.f2352i = null;
        fVar.f2353j = null;
    }

    @Override // androidx.fragment.app.m
    public void U(View view, Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = this.f2320b0.f2351h) != null) {
            preferenceScreen2.b(bundle2);
        }
        if (this.d0 && (preferenceScreen = this.f2320b0.f2351h) != null) {
            this.f2321c0.setAdapter(new androidx.preference.d(preferenceScreen));
            preferenceScreen.u();
        }
        this.f2322e0 = true;
    }

    @Override // androidx.preference.DialogPreference.a
    public final <T extends Preference> T b(CharSequence charSequence) {
        androidx.preference.f fVar = this.f2320b0;
        if (fVar == null) {
            return null;
        }
        return (T) fVar.a(charSequence);
    }

    @Override // androidx.preference.f.c
    public boolean c(Preference preference) {
        boolean zA = false;
        if (preference.f2284t == null) {
            return false;
        }
        for (m mVar = this; !zA && mVar != null; mVar = mVar.C) {
            if (mVar instanceof e) {
                zA = ((e) mVar).a();
            }
        }
        if (!zA && (l() instanceof e)) {
            zA = ((e) l()).a();
        }
        if (!zA && (i() instanceof e)) {
            zA = ((e) i()).a();
        }
        if (!zA) {
            Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
            x xVarR = r();
            if (preference.f2285u == null) {
                preference.f2285u = new Bundle();
            }
            Bundle bundle = preference.f2285u;
            m mVarA = xVarR.H().a(d0().getClassLoader(), preference.f2284t);
            mVarA.j0(bundle);
            mVarA.n0(this);
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(xVarR);
            aVar.f(((View) g0().getParent()).getId(), mVarA, null);
            if (!aVar.f1895h) {
                throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
            }
            aVar.f1894g = true;
            aVar.f1896i = null;
            aVar.i();
        }
        return true;
    }

    public abstract void p0(String str);

    public final void q0(Drawable drawable) {
        C0030c c0030c = this.f2319a0;
        Objects.requireNonNull(c0030c);
        if (drawable != null) {
            c0030c.f2329b = drawable.getIntrinsicHeight();
        } else {
            c0030c.f2329b = 0;
        }
        c0030c.f2328a = drawable;
        c.this.f2321c0.P();
    }

    public final void r0(PreferenceScreen preferenceScreen) {
        boolean z10;
        androidx.preference.f fVar = this.f2320b0;
        PreferenceScreen preferenceScreen2 = fVar.f2351h;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.z();
            }
            fVar.f2351h = preferenceScreen;
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 || preferenceScreen == null) {
            return;
        }
        this.d0 = true;
        if (!this.f2322e0 || this.f2324g0.hasMessages(1)) {
            return;
        }
        this.f2324g0.obtainMessage(1).sendToTarget();
    }
}
