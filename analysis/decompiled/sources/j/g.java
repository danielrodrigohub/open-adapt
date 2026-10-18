package j;

import android.view.View;
import android.view.animation.Interpolator;
import j0.g0;
import j0.h0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Interpolator f9135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public h0 f9136d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9137e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f9134b = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final a f9138f = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList<g0> f9133a = new ArrayList<>();

    /* JADX INFO: compiled from: ViewPropertyAnimatorCompatSet.java */
    public class a extends i0.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f9139a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9140b = 0;

        public a() {
        }

        @Override // j0.h0
        public final void a() {
            int i10 = this.f9140b + 1;
            this.f9140b = i10;
            if (i10 == g.this.f9133a.size()) {
                h0 h0Var = g.this.f9136d;
                if (h0Var != null) {
                    h0Var.a();
                }
                this.f9140b = 0;
                this.f9139a = false;
                g.this.f9137e = false;
            }
        }

        @Override // i0.b, j0.h0
        public final void c() {
            if (this.f9139a) {
                return;
            }
            this.f9139a = true;
            h0 h0Var = g.this.f9136d;
            if (h0Var != null) {
                h0Var.c();
            }
        }
    }

    public final void a() {
        if (this.f9137e) {
            Iterator<g0> it = this.f9133a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.f9137e = false;
        }
    }

    public final g b(g0 g0Var) {
        if (!this.f9137e) {
            this.f9133a.add(g0Var);
        }
        return this;
    }

    public final void c() {
        View view;
        if (this.f9137e) {
            return;
        }
        for (g0 g0Var : this.f9133a) {
            long j10 = this.f9134b;
            if (j10 >= 0) {
                g0Var.c(j10);
            }
            Interpolator interpolator = this.f9135c;
            if (interpolator != null && (view = g0Var.f9190a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.f9136d != null) {
                g0Var.d(this.f9138f);
            }
            View view2 = g0Var.f9190a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.f9137e = true;
    }
}
