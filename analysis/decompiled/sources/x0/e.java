package x0;

import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h0;
import java.util.Objects;
import k0.f;

/* JADX INFO: compiled from: PreferenceRecyclerViewAccessibilityDelegate.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class e extends h0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final RecyclerView f17719f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h0.a f17720g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final a f17721h;

    /* JADX INFO: compiled from: PreferenceRecyclerViewAccessibilityDelegate.java */
    public class a extends j0.a {
        public a() {
        }

        @Override // j0.a
        public final void d(View view, f fVar) {
            e.this.f17720g.d(view, fVar);
            Objects.requireNonNull(e.this.f17719f);
            RecyclerView.b0 b0VarK = RecyclerView.K(view);
            int iG = b0VarK != null ? b0VarK.g() : -1;
            RecyclerView.e adapter = e.this.f17719f.getAdapter();
            if (adapter instanceof androidx.preference.d) {
                ((androidx.preference.d) adapter).o(iG);
            }
        }

        @Override // j0.a
        public final boolean g(View view, int i10, Bundle bundle) {
            return e.this.f17720g.g(view, i10, bundle);
        }
    }

    public e(RecyclerView recyclerView) {
        super(recyclerView);
        this.f17720g = this.f2633e;
        this.f17721h = new a();
        this.f17719f = recyclerView;
    }

    @Override // androidx.recyclerview.widget.h0
    public final j0.a j() {
        return this.f17721h;
    }
}
