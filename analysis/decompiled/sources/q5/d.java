package q5;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: compiled from: ViewOffsetBehavior.java */
/* JADX INFO: loaded from: classes.dex */
public class d<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public e f13639a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13640b;

    public d() {
        this.f13640b = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean h(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        t(coordinatorLayout, v10, i10);
        if (this.f13639a == null) {
            this.f13639a = new e(v10);
        }
        e eVar = this.f13639a;
        eVar.f13642b = eVar.f13641a.getTop();
        eVar.f13643c = eVar.f13641a.getLeft();
        this.f13639a.a();
        int i11 = this.f13640b;
        if (i11 == 0) {
            return true;
        }
        e eVar2 = this.f13639a;
        if (eVar2.f13644d != i11) {
            eVar2.f13644d = i11;
            eVar2.a();
        }
        this.f13640b = 0;
        return true;
    }

    public final int s() {
        e eVar = this.f13639a;
        if (eVar != null) {
            return eVar.f13644d;
        }
        return 0;
    }

    public void t(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        coordinatorLayout.s(v10, i10);
    }

    public final boolean u(int i10) {
        e eVar = this.f13639a;
        if (eVar == null) {
            this.f13640b = i10;
            return false;
        }
        if (eVar.f13644d == i10) {
            return false;
        }
        eVar.f13644d = i10;
        eVar.a();
        return true;
    }

    public d(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13640b = 0;
    }
}
