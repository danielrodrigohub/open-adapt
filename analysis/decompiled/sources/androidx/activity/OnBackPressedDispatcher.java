package androidx.activity;

import android.annotation.SuppressLint;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import java.util.ArrayDeque;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class OnBackPressedDispatcher {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Runnable f683a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque<i> f684b = new ArrayDeque<>();

    public class LifecycleOnBackPressedCancellable implements n, androidx.activity.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final androidx.lifecycle.i f685h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final i f686i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public a f687j;

        public LifecycleOnBackPressedCancellable(androidx.lifecycle.i iVar, i iVar2) {
            this.f685h = iVar;
            this.f686i = iVar2;
            iVar.a(this);
        }

        @Override // androidx.lifecycle.n
        public final void a(q qVar, androidx.lifecycle.i.b bVar) {
            if (bVar == androidx.lifecycle.i.b.ON_START) {
                OnBackPressedDispatcher onBackPressedDispatcher = OnBackPressedDispatcher.this;
                i iVar = this.f686i;
                onBackPressedDispatcher.f684b.add(iVar);
                a aVar = onBackPressedDispatcher.new a(iVar);
                iVar.f706b.add(aVar);
                this.f687j = aVar;
                return;
            }
            if (bVar != androidx.lifecycle.i.b.ON_STOP) {
                if (bVar == androidx.lifecycle.i.b.ON_DESTROY) {
                    cancel();
                }
            } else {
                a aVar2 = this.f687j;
                if (aVar2 != null) {
                    aVar2.cancel();
                }
            }
        }

        @Override // androidx.activity.a
        public final void cancel() {
            this.f685h.c(this);
            this.f686i.f706b.remove(this);
            a aVar = this.f687j;
            if (aVar != null) {
                aVar.cancel();
                this.f687j = null;
            }
        }
    }

    public class a implements androidx.activity.a {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final i f689h;

        public a(i iVar) {
            this.f689h = iVar;
        }

        @Override // androidx.activity.a
        public final void cancel() {
            OnBackPressedDispatcher.this.f684b.remove(this.f689h);
            this.f689h.f706b.remove(this);
        }
    }

    public OnBackPressedDispatcher(Runnable runnable) {
        this.f683a = runnable;
    }

    @SuppressLint({"LambdaLast"})
    public final void a(q qVar, i iVar) {
        androidx.lifecycle.i iVarA = qVar.a();
        if (iVarA.b() == androidx.lifecycle.i.c.DESTROYED) {
            return;
        }
        iVar.f706b.add(new LifecycleOnBackPressedCancellable(iVarA, iVar));
    }

    public final void b() {
        Iterator<i> itDescendingIterator = this.f684b.descendingIterator();
        while (itDescendingIterator.hasNext()) {
            i next = itDescendingIterator.next();
            if (next.f705a) {
                next.a();
                return;
            }
        }
        Runnable runnable = this.f683a;
        if (runnable != null) {
            runnable.run();
        }
    }
}
