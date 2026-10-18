package androidx.fragment.app;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.R;

/* JADX INFO: compiled from: FragmentLayoutInflaterFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class v implements LayoutInflater.Factory2 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final x f2040h;

    /* JADX INFO: compiled from: FragmentLayoutInflaterFactory.java */
    public class a implements View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ e0 f2041h;

        public a(e0 e0Var) {
            this.f2041h = e0Var;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            e0 e0Var = this.f2041h;
            m mVar = e0Var.f1874c;
            e0Var.k();
            p0.f((ViewGroup) mVar.M.getParent(), v.this.f2040h).e();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    public v(x xVar) {
        this.f2040h = xVar;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean zIsAssignableFrom;
        e0 e0VarF;
        if (FragmentContainerView.class.getName().equals(str)) {
            return new FragmentContainerView(context, attributeSet, this.f2040h);
        }
        if (!"fragment".equals(str)) {
            return null;
        }
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Fragment);
        if (attributeValue == null) {
            attributeValue = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_name);
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.Fragment_android_id, -1);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.Fragment_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        if (attributeValue != null) {
            ClassLoader classLoader = context.getClassLoader();
            p.g<ClassLoader, p.g<String, Class<?>>> gVar = t.f2035a;
            try {
                zIsAssignableFrom = m.class.isAssignableFrom(t.b(classLoader, attributeValue));
            } catch (ClassNotFoundException unused) {
                zIsAssignableFrom = false;
            }
            if (zIsAssignableFrom) {
                int id2 = view != null ? view.getId() : 0;
                if (id2 == -1 && resourceId == -1 && string == null) {
                    throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                }
                m mVarE = resourceId != -1 ? this.f2040h.E(resourceId) : null;
                if (mVarE == null && string != null) {
                    mVarE = this.f2040h.F(string);
                }
                if (mVarE == null && id2 != -1) {
                    mVarE = this.f2040h.E(id2);
                }
                if (mVarE == null) {
                    mVarE = this.f2040h.H().a(context.getClassLoader(), attributeValue);
                    mVarE.f1978u = true;
                    mVarE.D = resourceId != 0 ? resourceId : id2;
                    mVarE.E = id2;
                    mVarE.F = string;
                    mVarE.f1979v = true;
                    x xVar = this.f2040h;
                    mVarE.f1983z = xVar;
                    u<?> uVar = xVar.f2061q;
                    mVarE.A = uVar;
                    Context context2 = uVar.f2037i;
                    mVarE.N();
                    e0VarF = this.f2040h.a(mVarE);
                    if (x.L(2)) {
                        Log.v("FragmentManager", "Fragment " + mVarE + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                } else {
                    if (mVarE.f1979v) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(resourceId) + ", tag " + string + ", or parent id 0x" + Integer.toHexString(id2) + " with another fragment for " + attributeValue);
                    }
                    mVarE.f1979v = true;
                    x xVar2 = this.f2040h;
                    mVarE.f1983z = xVar2;
                    u<?> uVar2 = xVar2.f2061q;
                    mVarE.A = uVar2;
                    Context context3 = uVar2.f2037i;
                    mVarE.N();
                    e0VarF = this.f2040h.f(mVarE);
                    if (x.L(2)) {
                        Log.v("FragmentManager", "Retained Fragment " + mVarE + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                    }
                }
                mVarE.L = (ViewGroup) view;
                e0VarF.k();
                e0VarF.j();
                View view2 = mVarE.M;
                if (view2 == null) {
                    throw new IllegalStateException(a0.d.c("Fragment ", attributeValue, " did not create a view."));
                }
                if (resourceId != 0) {
                    view2.setId(resourceId);
                }
                if (mVarE.M.getTag() == null) {
                    mVarE.M.setTag(string);
                }
                mVarE.M.addOnAttachStateChangeListener(new a(e0VarF));
                return mVarE.M;
            }
        }
        return null;
    }
}
