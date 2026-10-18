package e9;

import android.graphics.Canvas;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.t;
import com.nike.adapt.analytics.TrackManager;
import java.util.Collections;
import o7.x;

/* JADX INFO: compiled from: ItemTouchHelperCallback.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends t.d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final d f6557d;

    /* JADX INFO: renamed from: e9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ItemTouchHelperCallback.kt */
    public interface InterfaceC0119a {
        void a();

        void b();
    }

    public a(d dVar) {
        p4.h.j(dVar, "modeEditAdapter");
        this.f6557d = dVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.t.d
    public final void a(RecyclerView recyclerView, RecyclerView.b0 b0Var) {
        p4.h.j(recyclerView, "recyclerView");
        p4.h.j(b0Var, "viewHolder");
        super.a(recyclerView, b0Var);
        if (b0Var instanceof InterfaceC0119a) {
            ((InterfaceC0119a) b0Var).a();
        }
    }

    @Override // androidx.recyclerview.widget.t.d
    public final void e(RecyclerView recyclerView, RecyclerView.b0 b0Var) {
        p4.h.j(recyclerView, "recyclerView");
        p4.h.j(b0Var, "viewHolder");
    }

    @Override // androidx.recyclerview.widget.t.d
    public final void g(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var, float f10, float f11, int i10, boolean z10) {
        p4.h.j(canvas, "c");
        p4.h.j(recyclerView, "recyclerView");
        p4.h.j(b0Var, "viewHolder");
        float y7 = recyclerView.getY();
        float y10 = b0Var.f2453a.getY();
        float height = (recyclerView.getHeight() - y7) - 110;
        if ((y10 >= 200.0f && y10 <= height) || i10 != 2) {
            super.g(canvas, recyclerView, b0Var, f10, f11, i10, z10);
            return;
        }
        RecyclerView.e adapter = recyclerView.getAdapter();
        if (adapter != null) {
            adapter.d();
        }
    }

    @Override // androidx.recyclerview.widget.t.d
    public final void h(RecyclerView recyclerView, RecyclerView.b0 b0Var, RecyclerView.b0 b0Var2) {
        p4.h.j(recyclerView, "recyclerView");
        p4.h.j(b0Var, "viewHolder");
        d dVar = this.f6557d;
        int iH = b0Var.h();
        int iH2 = b0Var2.h();
        if (iH >= iH2) {
            int i10 = iH2 + 1;
            if (i10 <= iH) {
                int i11 = iH;
                while (true) {
                    int i12 = i11 - 1;
                    Collections.swap(dVar.f6565g, i11, i12);
                    if (i11 == i10) {
                        break;
                    } else {
                        i11 = i12;
                    }
                }
            }
        } else {
            int i13 = iH;
            while (i13 < iH2) {
                int i14 = i13 + 1;
                Collections.swap(dVar.f6565g, i13, i14);
                i13 = i14;
            }
        }
        dVar.f2473a.c(iH, iH2);
        RecyclerView recyclerView2 = dVar.f6564f;
        if (recyclerView2 == null) {
            p4.h.C("modeRecyclerView");
            throw null;
        }
        recyclerView2.performHapticFeedback(3);
        TrackManager.INSTANCE.modesReordered();
        x.f12420a.a("Pressed : Mode Re -Ordered");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.t.d
    public final void i(RecyclerView.b0 b0Var, int i10) {
        if (i10 == 0 || !(b0Var instanceof InterfaceC0119a)) {
            return;
        }
        ((InterfaceC0119a) b0Var).b();
    }

    @Override // androidx.recyclerview.widget.t.d
    public final void j(RecyclerView.b0 b0Var) {
        p4.h.j(b0Var, "viewHolder");
        this.f6557d.m(b0Var.h());
    }
}
