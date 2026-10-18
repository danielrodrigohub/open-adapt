package androidx.preference;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import j0.a0;
import j0.g0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: PreferenceGroupAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends RecyclerView.e<g> implements Preference.c {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final PreferenceGroup f2332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<Preference> f2333e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<Preference> f2334f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<b> f2335g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f2337i = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Handler f2336h = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: PreferenceGroupAdapter.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            d.this.q();
        }
    }

    /* JADX INFO: compiled from: PreferenceGroupAdapter.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2339a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2340b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f2341c;

        public b(Preference preference) {
            this.f2341c = preference.getClass().getName();
            this.f2339a = preference.K;
            this.f2340b = preference.L;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2339a == bVar.f2339a && this.f2340b == bVar.f2340b && TextUtils.equals(this.f2341c, bVar.f2341c);
        }

        public final int hashCode() {
            return this.f2341c.hashCode() + ((((527 + this.f2339a) * 31) + this.f2340b) * 31);
        }
    }

    public d(PreferenceGroup preferenceGroup) {
        this.f2332d = preferenceGroup;
        preferenceGroup.M = this;
        this.f2333e = new ArrayList();
        this.f2334f = new ArrayList();
        this.f2335g = new ArrayList();
        l(((PreferenceScreen) preferenceGroup).f2296b0);
        q();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f2334f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final long b(int i10) {
        if (this.f2474b) {
            return o(i10).i();
        }
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int c(int i10) {
        b bVar = new b(o(i10));
        int iIndexOf = this.f2335g.indexOf(bVar);
        if (iIndexOf != -1) {
            return iIndexOf;
        }
        int size = this.f2335g.size();
        this.f2335g.add(bVar);
        return size;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        g gVar = (g) b0Var;
        Preference preferenceO = o(i10);
        Drawable background = gVar.f2453a.getBackground();
        Drawable drawable = gVar.f2355u;
        if (background != drawable) {
            View view = gVar.f2453a;
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(view, drawable);
        }
        TextView textView = (TextView) gVar.A(android.R.id.title);
        if (textView != null && gVar.f2356v != null && !textView.getTextColors().equals(gVar.f2356v)) {
            textView.setTextColor(gVar.f2356v);
        }
        preferenceO.x(gVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        b bVar = (b) this.f2335g.get(i10);
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(viewGroup.getContext());
        TypedArray typedArrayObtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, R.styleable.BackgroundStyle);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(R.styleable.BackgroundStyle_android_selectableItemBackground);
        if (drawable == null) {
            drawable = g.a.b(viewGroup.getContext(), android.R.drawable.list_selector_background);
        }
        typedArrayObtainStyledAttributes.recycle();
        View viewInflate = layoutInflaterFrom.inflate(bVar.f2339a, viewGroup, false);
        if (viewInflate.getBackground() == null) {
            WeakHashMap<View, g0> weakHashMap = a0.f9147a;
            a0.d.q(viewInflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) viewInflate.findViewById(android.R.id.widget_frame);
        if (viewGroup2 != null) {
            int i11 = bVar.f2340b;
            if (i11 != 0) {
                layoutInflaterFrom.inflate(i11, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new g(viewInflate);
    }

    public final List<Preference> m(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iN = preferenceGroup.N();
        int i10 = 0;
        for (int i11 = 0; i11 < iN; i11++) {
            Preference preferenceM = preferenceGroup.M(i11);
            if (preferenceM.C) {
                if (!p(preferenceGroup) || i10 < preferenceGroup.Z) {
                    arrayList.add(preferenceM);
                } else {
                    arrayList2.add(preferenceM);
                }
                if (preferenceM instanceof PreferenceGroup) {
                    PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceM;
                    if (!(!(preferenceGroup2 instanceof PreferenceScreen))) {
                        continue;
                    } else {
                        if (p(preferenceGroup) && p(preferenceGroup2)) {
                            throw new IllegalStateException("Nesting an expandable group inside of another expandable group is not supported!");
                        }
                        for (Preference preference : (ArrayList) m(preferenceGroup2)) {
                            if (!p(preferenceGroup) || i10 < preferenceGroup.Z) {
                                arrayList.add(preference);
                            } else {
                                arrayList2.add(preference);
                            }
                            i10++;
                        }
                    }
                } else {
                    i10++;
                }
            }
        }
        if (p(preferenceGroup) && i10 > preferenceGroup.Z) {
            androidx.preference.a aVar = new androidx.preference.a(preferenceGroup.f2272h, arrayList2, preferenceGroup.f2274j);
            aVar.f2276l = new e(this, preferenceGroup);
            arrayList.add(aVar);
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList, java.util.List<androidx.preference.d$b>] */
    public final void n(List<Preference> list, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.V);
        }
        int iN = preferenceGroup.N();
        for (int i10 = 0; i10 < iN; i10++) {
            Preference preferenceM = preferenceGroup.M(i10);
            list.add(preferenceM);
            b bVar = new b(preferenceM);
            if (!this.f2335g.contains(bVar)) {
                this.f2335g.add(bVar);
            }
            if (preferenceM instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) preferenceM;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    n(list, preferenceGroup2);
                }
            }
            preferenceM.M = this;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final Preference o(int i10) {
        if (i10 < 0 || i10 >= a()) {
            return null;
        }
        return (Preference) this.f2334f.get(i10);
    }

    public final boolean p(PreferenceGroup preferenceGroup) {
        return preferenceGroup.Z != Integer.MAX_VALUE;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    public final void q() {
        Iterator it = this.f2333e.iterator();
        while (it.hasNext()) {
            ((Preference) it.next()).M = null;
        }
        ArrayList arrayList = new ArrayList(this.f2333e.size());
        this.f2333e = arrayList;
        n(arrayList, this.f2332d);
        this.f2334f = (ArrayList) m(this.f2332d);
        f fVar = this.f2332d.f2273i;
        d();
        Iterator it2 = this.f2333e.iterator();
        while (it2.hasNext()) {
            Objects.requireNonNull((Preference) it2.next());
        }
    }
}
