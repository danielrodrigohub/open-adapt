package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import j5.p;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import n3.c2;
import p4.t0;
import u6.v;

/* JADX INFO: loaded from: classes.dex */
public class TrackSelectionView extends LinearLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f4856h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final LayoutInflater f4857i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CheckedTextView f4858j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CheckedTextView f4859k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final a f4860l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<c2.a> f4861m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Map<t0, p> f4862n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f4863o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f4864p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public k5.f f4865q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public CheckedTextView[][] f4866r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f4867s;

    public class a implements View.OnClickListener {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r6v0, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r6v8, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
        /* JADX WARN: Type inference failed for: r9v11, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v12, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v14, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v15, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v16, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v3, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v5, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v8, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        /* JADX WARN: Type inference failed for: r9v9, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            TrackSelectionView trackSelectionView = TrackSelectionView.this;
            boolean z10 = true;
            if (view == trackSelectionView.f4858j) {
                trackSelectionView.f4867s = true;
                trackSelectionView.f4862n.clear();
            } else if (view == trackSelectionView.f4859k) {
                trackSelectionView.f4867s = false;
                trackSelectionView.f4862n.clear();
            } else {
                trackSelectionView.f4867s = false;
                Object tag = view.getTag();
                Objects.requireNonNull(tag);
                b bVar = (b) tag;
                t0 t0Var = bVar.f4869a.f11341i;
                int i10 = bVar.f4870b;
                p pVar = (p) trackSelectionView.f4862n.get(t0Var);
                if (pVar == null) {
                    if (!trackSelectionView.f4864p && trackSelectionView.f4862n.size() > 0) {
                        trackSelectionView.f4862n.clear();
                    }
                    trackSelectionView.f4862n.put(t0Var, new p(t0Var, v.v(Integer.valueOf(i10))));
                } else {
                    ArrayList arrayList = new ArrayList(pVar.f9389i);
                    boolean zIsChecked = ((CheckedTextView) view).isChecked();
                    boolean z11 = trackSelectionView.f4863o && bVar.f4869a.f11342j;
                    if (!z11) {
                        if (!(trackSelectionView.f4864p && trackSelectionView.f4861m.size() > 1)) {
                            z10 = false;
                        }
                    }
                    if (zIsChecked && z10) {
                        arrayList.remove(Integer.valueOf(i10));
                        if (arrayList.isEmpty()) {
                            trackSelectionView.f4862n.remove(t0Var);
                        } else {
                            trackSelectionView.f4862n.put(t0Var, new p(t0Var, arrayList));
                        }
                    } else if (!zIsChecked) {
                        if (z11) {
                            arrayList.add(Integer.valueOf(i10));
                            trackSelectionView.f4862n.put(t0Var, new p(t0Var, arrayList));
                        } else {
                            trackSelectionView.f4862n.put(t0Var, new p(t0Var, v.v(Integer.valueOf(i10))));
                        }
                    }
                }
            }
            trackSelectionView.a();
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c2.a f4869a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f4870b;

        public b(c2.a aVar, int i10) {
            this.f4869a = aVar;
            this.f4870b = i10;
        }
    }

    public TrackSelectionView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setOrientation(1);
        setSaveFromParentEnabled(false);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.selectableItemBackground});
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        this.f4856h = resourceId;
        typedArrayObtainStyledAttributes.recycle();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        this.f4857i = layoutInflaterFrom;
        a aVar = new a();
        this.f4860l = aVar;
        this.f4865q = new c(getResources());
        this.f4861m = new ArrayList();
        this.f4862n = new HashMap();
        CheckedTextView checkedTextView = (CheckedTextView) layoutInflaterFrom.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f4858j = checkedTextView;
        checkedTextView.setBackgroundResource(resourceId);
        checkedTextView.setText(R.string.exo_track_selection_none);
        checkedTextView.setEnabled(false);
        checkedTextView.setFocusable(true);
        checkedTextView.setOnClickListener(aVar);
        checkedTextView.setVisibility(8);
        addView(checkedTextView);
        addView(layoutInflaterFrom.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
        CheckedTextView checkedTextView2 = (CheckedTextView) layoutInflaterFrom.inflate(android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
        this.f4859k = checkedTextView2;
        checkedTextView2.setBackgroundResource(resourceId);
        checkedTextView2.setText(R.string.exo_track_selection_auto);
        checkedTextView2.setEnabled(false);
        checkedTextView2.setFocusable(true);
        checkedTextView2.setOnClickListener(aVar);
        addView(checkedTextView2);
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.util.HashMap, java.util.Map<p4.t0, j5.p>] */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    public final void a() {
        this.f4858j.setChecked(this.f4867s);
        this.f4859k.setChecked(!this.f4867s && this.f4862n.size() == 0);
        for (int i10 = 0; i10 < this.f4866r.length; i10++) {
            p pVar = (p) this.f4862n.get(((c2.a) this.f4861m.get(i10)).f11341i);
            int i11 = 0;
            while (true) {
                CheckedTextView[][] checkedTextViewArr = this.f4866r;
                if (i11 < checkedTextViewArr[i10].length) {
                    if (pVar != null) {
                        Object tag = checkedTextViewArr[i10][i11].getTag();
                        Objects.requireNonNull(tag);
                        this.f4866r[i10][i11].setChecked(pVar.f9389i.contains(Integer.valueOf(((b) tag).f4870b)));
                    } else {
                        checkedTextViewArr[i10][i11].setChecked(false);
                    }
                    i11++;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList, java.util.List<n3.c2$a>] */
    public final void b() {
        for (int childCount = getChildCount() - 1; childCount >= 3; childCount--) {
            removeViewAt(childCount);
        }
        if (this.f4861m.isEmpty()) {
            this.f4858j.setEnabled(false);
            this.f4859k.setEnabled(false);
            return;
        }
        this.f4858j.setEnabled(true);
        this.f4859k.setEnabled(true);
        this.f4866r = new CheckedTextView[this.f4861m.size()][];
        boolean z10 = this.f4864p && this.f4861m.size() > 1;
        for (int i10 = 0; i10 < this.f4861m.size(); i10++) {
            c2.a aVar = (c2.a) this.f4861m.get(i10);
            boolean z11 = this.f4863o && aVar.f11342j;
            CheckedTextView[][] checkedTextViewArr = this.f4866r;
            int i11 = aVar.f11340h;
            checkedTextViewArr[i10] = new CheckedTextView[i11];
            b[] bVarArr = new b[i11];
            for (int i12 = 0; i12 < aVar.f11340h; i12++) {
                bVarArr[i12] = new b(aVar, i12);
            }
            for (int i13 = 0; i13 < i11; i13++) {
                if (i13 == 0) {
                    addView(this.f4857i.inflate(R.layout.exo_list_divider, (ViewGroup) this, false));
                }
                CheckedTextView checkedTextView = (CheckedTextView) this.f4857i.inflate((z11 || z10) ? android.R.layout.simple_list_item_multiple_choice : android.R.layout.simple_list_item_single_choice, (ViewGroup) this, false);
                checkedTextView.setBackgroundResource(this.f4856h);
                k5.f fVar = this.f4865q;
                b bVar = bVarArr[i13];
                checkedTextView.setText(fVar.a(bVar.f4869a.f11341i.f13224k[bVar.f4870b]));
                checkedTextView.setTag(bVarArr[i13]);
                if (aVar.f11343k[i13] == 4) {
                    checkedTextView.setFocusable(true);
                    checkedTextView.setOnClickListener(this.f4860l);
                } else {
                    checkedTextView.setFocusable(false);
                    checkedTextView.setEnabled(false);
                }
                this.f4866r[i10][i13] = checkedTextView;
                addView(checkedTextView);
            }
        }
        a();
    }

    public boolean getIsDisabled() {
        return this.f4867s;
    }

    public Map<t0, p> getOverrides() {
        return this.f4862n;
    }

    public void setAllowAdaptiveSelections(boolean z10) {
        if (this.f4863o != z10) {
            this.f4863o = z10;
            b();
        }
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public void setAllowMultipleOverrides(boolean z10) {
        if (this.f4864p != z10) {
            this.f4864p = z10;
            if (!z10 && this.f4862n.size() > 1) {
                Map<t0, p> map = this.f4862n;
                List<c2.a> list = this.f4861m;
                HashMap map2 = new HashMap();
                for (int i10 = 0; i10 < list.size(); i10++) {
                    p pVar = map.get(list.get(i10).f11341i);
                    if (pVar != null && map2.isEmpty()) {
                        map2.put(pVar.f9388h, pVar);
                    }
                }
                this.f4862n.clear();
                this.f4862n.putAll(map2);
            }
            b();
        }
    }

    public void setShowDisableOption(boolean z10) {
        this.f4858j.setVisibility(z10 ? 0 : 8);
    }

    public void setTrackNameProvider(k5.f fVar) {
        Objects.requireNonNull(fVar);
        this.f4865q = fVar;
        b();
    }
}
