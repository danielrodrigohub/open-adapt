package g6;

import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.chip.ChipGroup;
import g6.i;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: CheckableGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<T extends i<T>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<Integer, T> f7703a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<Integer> f7704b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f7705c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7707e;

    /* JADX INFO: compiled from: CheckableGroup.java */
    public interface a {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public final boolean a(i<T> iVar) {
        int id2 = iVar.getId();
        if (this.f7704b.contains(Integer.valueOf(id2))) {
            return false;
        }
        i<T> iVar2 = (i) this.f7703a.get(Integer.valueOf(c()));
        if (iVar2 != null) {
            e(iVar2, false);
        }
        boolean zAdd = this.f7704b.add(Integer.valueOf(id2));
        if (!iVar.isChecked()) {
            iVar.setChecked(true);
        }
        return zAdd;
    }

    public final List<Integer> b(ViewGroup viewGroup) {
        HashSet hashSet = new HashSet(this.f7704b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof i) && hashSet.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public final int c() {
        if (!this.f7706d || this.f7704b.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f7704b.iterator().next()).intValue();
    }

    public final void d() {
        a aVar = this.f7705c;
        if (aVar != null) {
            new HashSet(this.f7704b);
            ChipGroup chipGroup = ((com.google.android.material.chip.b) aVar).f5169a;
            ChipGroup.d dVar = chipGroup.f5136n;
            if (dVar != null) {
                chipGroup.f5137o.b(chipGroup);
                ChipGroup.a aVar2 = (ChipGroup.a) dVar;
                ChipGroup chipGroup2 = ChipGroup.this;
                if (chipGroup2.f5137o.f7706d) {
                    ChipGroup.c cVar = aVar2.f5140a;
                    chipGroup2.getCheckedChipId();
                    cVar.a();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r6v1, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.util.HashSet, java.util.Set<java.lang.Integer>] */
    public final boolean e(i<T> iVar, boolean z10) {
        int id2 = iVar.getId();
        if (!this.f7704b.contains(Integer.valueOf(id2))) {
            return false;
        }
        if (z10 && this.f7704b.size() == 1 && this.f7704b.contains(Integer.valueOf(id2))) {
            iVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.f7704b.remove(Integer.valueOf(id2));
        if (iVar.isChecked()) {
            iVar.setChecked(false);
        }
        return zRemove;
    }
}
