package u;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import j0.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MotionLayout.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends ConstraintLayout implements o {
    public static final /* synthetic */ int T = 0;
    public int A;
    public int B;
    public int C;
    public float D;
    public float E;
    public long F;
    public float G;
    public c H;
    public u.b I;
    public boolean J;
    public ArrayList<u.c> K;
    public ArrayList<u.c> L;
    public CopyOnWriteArrayList<c> M;
    public int N;
    public float O;
    public boolean P;
    public b Q;
    public boolean R;
    public EnumC0268d S;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public float f15603z;

    /* JADX INFO: compiled from: MotionLayout.java */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            d.this.Q.a();
        }
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    public class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f15605a = Float.NaN;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f15606b = Float.NaN;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f15607c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f15608d = -1;

        public b() {
        }

        public final void a() {
            int iA;
            EnumC0268d enumC0268d = EnumC0268d.SETUP;
            int i10 = this.f15607c;
            if (i10 != -1 || this.f15608d != -1) {
                if (i10 == -1) {
                    d.this.x(this.f15608d);
                } else {
                    int i11 = this.f15608d;
                    if (i11 == -1) {
                        d dVar = d.this;
                        dVar.setState(enumC0268d);
                        dVar.B = i10;
                        dVar.A = -1;
                        dVar.C = -1;
                        androidx.constraintlayout.widget.c cVar = dVar.f1524r;
                        if (cVar != null) {
                            float f10 = -1;
                            int i12 = cVar.f1600b;
                            if (i12 == i10) {
                                androidx.constraintlayout.widget.c.a aVarValueAt = i10 == -1 ? cVar.f1602d.valueAt(0) : cVar.f1602d.get(i12);
                                int i13 = cVar.f1601c;
                                if ((i13 == -1 || !aVarValueAt.f1605b.get(i13).a(f10, f10)) && cVar.f1601c != (iA = aVarValueAt.a(f10, f10))) {
                                    androidx.constraintlayout.widget.d dVar2 = iA == -1 ? null : aVarValueAt.f1605b.get(iA).f1613f;
                                    if (iA != -1) {
                                        int i14 = aVarValueAt.f1605b.get(iA).f1612e;
                                    }
                                    if (dVar2 != null) {
                                        cVar.f1601c = iA;
                                        dVar2.a(cVar.f1599a);
                                    }
                                }
                            } else {
                                cVar.f1600b = i10;
                                androidx.constraintlayout.widget.c.a aVar = cVar.f1602d.get(i10);
                                int iA2 = aVar.a(f10, f10);
                                androidx.constraintlayout.widget.d dVar3 = iA2 == -1 ? aVar.f1607d : aVar.f1605b.get(iA2).f1613f;
                                if (iA2 != -1) {
                                    int i15 = aVar.f1605b.get(iA2).f1612e;
                                }
                                if (dVar3 == null) {
                                    Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i10 + ", dim =" + f10 + ", " + f10);
                                } else {
                                    cVar.f1601c = iA2;
                                    dVar3.a(cVar.f1599a);
                                }
                            }
                        }
                    } else {
                        d.this.w(i10, i11);
                    }
                }
                d.this.setState(enumC0268d);
            }
            if (Float.isNaN(this.f15606b)) {
                if (Float.isNaN(this.f15605a)) {
                    return;
                }
                d.this.setProgress(this.f15605a);
            } else {
                d.this.v(this.f15605a, this.f15606b);
                this.f15605a = Float.NaN;
                this.f15606b = Float.NaN;
                this.f15607c = -1;
                this.f15608d = -1;
            }
        }
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    public interface c {
        void a();

        void b();
    }

    /* JADX INFO: renamed from: u.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MotionLayout.java */
    public enum EnumC0268d {
        /* JADX INFO: Fake field, exist only in values array */
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        s();
        super.dispatchDraw(canvas);
    }

    public int[] getConstraintSetIds() {
        return null;
    }

    public int getCurrentState() {
        return this.B;
    }

    public ArrayList<e.a> getDefinedTransitions() {
        return null;
    }

    public u.b getDesignTool() {
        if (this.I == null) {
            this.I = new u.b();
        }
        return this.I;
    }

    public int getEndState() {
        return this.C;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.E;
    }

    public e getScene() {
        return null;
    }

    public int getStartState() {
        return this.A;
    }

    public float getTargetPosition() {
        return this.G;
    }

    public Bundle getTransitionState() {
        if (this.Q == null) {
            this.Q = new b();
        }
        b bVar = this.Q;
        d dVar = d.this;
        bVar.f15608d = dVar.C;
        bVar.f15607c = dVar.A;
        bVar.f15606b = dVar.getVelocity();
        bVar.f15605a = d.this.getProgress();
        b bVar2 = this.Q;
        Objects.requireNonNull(bVar2);
        Bundle bundle = new Bundle();
        bundle.putFloat("motion.progress", bVar2.f15605a);
        bundle.putFloat("motion.velocity", bVar2.f15606b);
        bundle.putInt("motion.StartState", bVar2.f15607c);
        bundle.putInt("motion.EndState", bVar2.f15608d);
        return bundle;
    }

    public long getTransitionTimeMs() {
        return (long) 0.0f;
    }

    public float getVelocity() {
        return this.f15603z;
    }

    @Override // j0.n
    public final void h(View view, View view2, int i10, int i11) {
        getNanoTime();
    }

    @Override // j0.n
    public final void i(View view, int i10) {
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return super.isAttachedToWindow();
    }

    @Override // j0.n
    public final void j(View view, int i10, int i11, int[] iArr, int i12) {
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    public final void k(int i10) {
        this.f1524r = null;
    }

    @Override // j0.o
    public final void m(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (i10 == 0 && i11 == 0) {
            return;
        }
        iArr[0] = iArr[0] + i12;
        iArr[1] = iArr[1] + i13;
    }

    @Override // j0.n
    public final void n(View view, int i10, int i11, int i12, int i13, int i14) {
    }

    @Override // j0.n
    public final boolean o(View view, View view2, int i10, int i11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Display display = getDisplay();
        if (display != null) {
            display.getRotation();
        }
        b bVar = this.Q;
        if (bVar != null) {
            if (this.R) {
                post(new a());
            } else {
                bVar.a();
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.P = true;
        try {
            super.onLayout(z10, i10, i11, i12, i13);
        } finally {
            this.P = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    public final void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i10) {
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof u.c) {
            u.c cVar = (u.c) view;
            if (this.M == null) {
                this.M = new CopyOnWriteArrayList<>();
            }
            this.M.add(cVar);
            if (cVar.f15599p) {
                if (this.K == null) {
                    this.K = new ArrayList<>();
                }
                this.K.add(cVar);
            }
            if (cVar.f15600q) {
                if (this.L == null) {
                    this.L = new ArrayList<>();
                }
                this.L.add(cVar);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<u.c> arrayList = this.K;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<u.c> arrayList2 = this.L;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public final void requestLayout() {
        int i10 = this.B;
        super.requestLayout();
    }

    public final void s() {
        boolean z10;
        int i10;
        EnumC0268d enumC0268d = EnumC0268d.FINISHED;
        if (this.F == -1) {
            this.F = getNanoTime();
        }
        float f10 = this.E;
        if (f10 > 0.0f && f10 < 1.0f) {
            this.B = -1;
        }
        boolean z11 = false;
        if (this.J) {
            float fSignum = Math.signum(this.G - f10);
            long nanoTime = getNanoTime();
            float f11 = (((nanoTime - this.F) * fSignum) * 1.0E-9f) / 0.0f;
            float f12 = this.E + f11;
            if ((fSignum > 0.0f && f12 >= this.G) || (fSignum <= 0.0f && f12 <= this.G)) {
                f12 = this.G;
            }
            this.E = f12;
            this.D = f12;
            this.F = nanoTime;
            this.f15603z = f11;
            if (Math.abs(f11) > 1.0E-5f) {
                setState(EnumC0268d.MOVING);
            }
            if ((fSignum > 0.0f && f12 >= this.G) || (fSignum <= 0.0f && f12 <= this.G)) {
                f12 = this.G;
            }
            if (f12 >= 1.0f || f12 <= 0.0f) {
                setState(enumC0268d);
            }
            int childCount = getChildCount();
            this.J = false;
            getNanoTime();
            if (childCount > 0) {
                getChildAt(0);
                throw null;
            }
            boolean z12 = (fSignum > 0.0f && f12 >= this.G) || (fSignum <= 0.0f && f12 <= this.G);
            if (!this.J && z12) {
                setState(enumC0268d);
            }
            boolean z13 = (!z12) | this.J;
            this.J = z13;
            if (f12 <= 0.0f && (i10 = this.A) != -1 && this.B != i10) {
                this.B = i10;
                throw null;
            }
            if (f12 >= 1.0d) {
                int i11 = this.B;
                int i12 = this.C;
                if (i11 != i12) {
                    this.B = i12;
                    throw null;
                }
            }
            if (z13) {
                invalidate();
            } else if ((fSignum > 0.0f && f12 == 1.0f) || (fSignum < 0.0f && f12 == 0.0f)) {
                setState(enumC0268d);
            }
            boolean z14 = this.J;
        }
        float f13 = this.E;
        if (f13 < 1.0f) {
            if (f13 <= 0.0f) {
                int i13 = this.B;
                int i14 = this.A;
                z10 = i13 != i14;
                this.B = i14;
            }
            if (z11 && !this.P) {
                requestLayout();
            }
            this.D = this.E;
        }
        int i15 = this.B;
        int i16 = this.C;
        z10 = i15 != i16;
        this.B = i16;
        z11 = z10;
        if (z11) {
            requestLayout();
        }
        this.D = this.E;
    }

    public void setDebugMode(int i10) {
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.R = z10;
    }

    public void setInteractionEnabled(boolean z10) {
    }

    public void setInterpolatedProgress(float f10) {
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList<u.c> arrayList = this.L;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.L.get(i10).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList<u.c> arrayList = this.K;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.K.get(i10).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10) {
        EnumC0268d enumC0268d = EnumC0268d.FINISHED;
        EnumC0268d enumC0268d2 = EnumC0268d.MOVING;
        if (f10 < 0.0f || f10 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!super.isAttachedToWindow()) {
            if (this.Q == null) {
                this.Q = new b();
            }
            this.Q.f15605a = f10;
            return;
        }
        if (f10 <= 0.0f) {
            if (this.E == 1.0f && this.B == this.C) {
                setState(enumC0268d2);
            }
            this.B = this.A;
            if (this.E == 0.0f) {
                setState(enumC0268d);
                return;
            }
            return;
        }
        if (f10 < 1.0f) {
            this.B = -1;
            setState(enumC0268d2);
            return;
        }
        if (this.E == 0.0f && this.B == this.A) {
            setState(enumC0268d2);
        }
        this.B = this.C;
        if (this.E == 1.0f) {
            setState(enumC0268d);
        }
    }

    public void setScene(e eVar) {
        g();
        throw null;
    }

    public void setStartState(int i10) {
        if (super.isAttachedToWindow()) {
            this.B = i10;
            return;
        }
        if (this.Q == null) {
            this.Q = new b();
        }
        b bVar = this.Q;
        bVar.f15607c = i10;
        bVar.f15608d = i10;
    }

    public void setState(EnumC0268d enumC0268d) {
        EnumC0268d enumC0268d2 = EnumC0268d.FINISHED;
        if (enumC0268d == enumC0268d2 && this.B == -1) {
            return;
        }
        EnumC0268d enumC0268d3 = this.S;
        this.S = enumC0268d;
        EnumC0268d enumC0268d4 = EnumC0268d.MOVING;
        if (enumC0268d3 == enumC0268d4 && enumC0268d == enumC0268d4) {
            t();
        }
        int iOrdinal = enumC0268d3.ordinal();
        if (iOrdinal != 0 && iOrdinal != 1) {
            if (iOrdinal == 2 && enumC0268d == enumC0268d2) {
                u();
                return;
            }
            return;
        }
        if (enumC0268d == enumC0268d4) {
            t();
        }
        if (enumC0268d == enumC0268d2) {
            u();
        }
    }

    public void setTransition(int i10) {
    }

    public void setTransition(e.a aVar) {
        throw null;
    }

    public void setTransitionDuration(int i10) {
        Log.e("MotionLayout", "MotionScene not defined");
    }

    public void setTransitionListener(c cVar) {
        this.H = cVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.Q == null) {
            this.Q = new b();
        }
        b bVar = this.Q;
        Objects.requireNonNull(bVar);
        bVar.f15605a = bundle.getFloat("motion.progress");
        bVar.f15606b = bundle.getFloat("motion.velocity");
        bVar.f15607c = bundle.getInt("motion.StartState");
        bVar.f15608d = bundle.getInt("motion.EndState");
        if (super.isAttachedToWindow()) {
            this.Q.a();
        }
    }

    public final void t() {
        CopyOnWriteArrayList<c> copyOnWriteArrayList;
        if ((this.H == null && ((copyOnWriteArrayList = this.M) == null || copyOnWriteArrayList.isEmpty())) || this.O == this.D) {
            return;
        }
        if (this.N != -1) {
            c cVar = this.H;
            if (cVar != null) {
                cVar.b();
            }
            CopyOnWriteArrayList<c> copyOnWriteArrayList2 = this.M;
            if (copyOnWriteArrayList2 != null) {
                Iterator<c> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().b();
                }
            }
        }
        this.N = -1;
        this.O = this.D;
        c cVar2 = this.H;
        if (cVar2 != null) {
            cVar2.a();
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList3 = this.M;
        if (copyOnWriteArrayList3 != null) {
            Iterator<c> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().a();
            }
        }
    }

    @Override // android.view.View
    public final String toString() {
        Context context = getContext();
        return u.a.a(context, this.A) + "->" + u.a.a(context, this.C) + " (pos:" + this.E + " Dpos/Dt:" + this.f15603z;
    }

    public final void u() {
        CopyOnWriteArrayList<c> copyOnWriteArrayList;
        if (!(this.H == null && ((copyOnWriteArrayList = this.M) == null || copyOnWriteArrayList.isEmpty())) && this.N == -1) {
            this.N = this.B;
            throw null;
        }
        if (this.H != null) {
            throw null;
        }
        CopyOnWriteArrayList<c> copyOnWriteArrayList2 = this.M;
        if (copyOnWriteArrayList2 != null && !copyOnWriteArrayList2.isEmpty()) {
            throw null;
        }
    }

    public final void v(float f10, float f11) {
        if (super.isAttachedToWindow()) {
            setProgress(f10);
            setState(EnumC0268d.MOVING);
            this.f15603z = f11;
        } else {
            if (this.Q == null) {
                this.Q = new b();
            }
            b bVar = this.Q;
            bVar.f15605a = f10;
            bVar.f15606b = f11;
        }
    }

    public final void w(int i10, int i11) {
        if (super.isAttachedToWindow()) {
            return;
        }
        if (this.Q == null) {
            this.Q = new b();
        }
        b bVar = this.Q;
        bVar.f15607c = i10;
        bVar.f15608d = i11;
    }

    public final void x(int i10) {
        if (!super.isAttachedToWindow()) {
            if (this.Q == null) {
                this.Q = new b();
            }
            this.Q.f15608d = i10;
            return;
        }
        int i11 = this.B;
        if (i11 == i10 || this.A == i10 || this.C == i10) {
            return;
        }
        this.C = i10;
        if (i11 != -1) {
            w(i11, i10);
            this.E = 0.0f;
            return;
        }
        this.G = 1.0f;
        this.D = 0.0f;
        this.E = 0.0f;
        this.F = getNanoTime();
        getNanoTime();
        throw null;
    }
}
