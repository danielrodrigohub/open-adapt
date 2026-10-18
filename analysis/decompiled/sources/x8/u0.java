package x8;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.nike.adapt.R;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$incrementalAction$1", f = "ShoeControllerUiHelper.kt", l = {HttpStatusCodesKt.HTTP_PRECONDITION_FAILED, HttpStatusCodesKt.HTTP_REQ_TOO_LONG}, m = "invokeSuspend")
public final class u0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q0 f18011h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0 f18012i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d1 f18013j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f18014k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ q0 f18015l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ d1 f18016m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(q0 q0Var, d1 d1Var, jd.d<? super u0> dVar) {
        super(2, dVar);
        this.f18015l = q0Var;
        this.f18016m = d1Var;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new u0(this.f18015l, this.f18016m, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((u0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q0 q0Var;
        d1 d1Var;
        q0 q0Var2;
        q0 q0Var3;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f18014k;
        if (i10 != 0) {
            if (i10 == 1) {
                d1 d1Var2 = this.f18013j;
                q0Var2 = this.f18012i;
                q0 q0Var4 = this.f18011h;
                d3.e.p(obj);
                d1Var = d1Var2;
                q0Var = q0Var4;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                q0Var3 = this.f18011h;
                d3.e.p(obj);
            }
            q0Var3.r();
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        q0 q0Var5 = this.f18015l;
        q0.a aVar2 = q0Var5.f17963d;
        if (aVar2 != null) {
            aVar2.W(q0Var5.f17961b);
        }
        q0 q0Var6 = this.f18015l;
        q0Var6.f17960a.requestTo(q0Var6.f17961b, new p8.d0((int) q0Var6.f17985z[this.f18016m.f17882d], 1));
        this.f18015l.u(this.f18016m.f17882d);
        q0Var = this.f18015l;
        d1Var = this.f18016m;
        q0Var.l();
        LinearLayout linearLayoutH = q0Var.h();
        p4.h.i(linearLayoutH, "indicators");
        int childCount = linearLayoutH.getChildCount();
        int i11 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = linearLayoutH.getChildAt(i12);
            p4.h.i(childAt, "getChildAt(index)");
            if (!(childAt instanceof Space)) {
                i11++;
            }
        }
        int i13 = i11 - 1;
        int i14 = i13 <= 0 ? 1 : -1;
        int childCount2 = linearLayoutH.getChildCount();
        for (int i15 = 0; i15 < childCount2; i15++) {
            View childAt2 = linearLayoutH.getChildAt(i15);
            p4.h.i(childAt2, "getChildAt(index)");
            if (!(childAt2 instanceof Space)) {
                View viewFindViewById = childAt2.findViewById(R.id.view_indicator);
                TextView textView = (TextView) childAt2.findViewById(R.id.view_indicator_percent);
                if (i13 == d1Var.f17882d) {
                    p4.h.i(viewFindViewById, "indicatorView");
                    f1.b.a(viewFindViewById, q0Var.f17972m, q0Var.f17971l, 0L, 0L, false, false, 48);
                    viewFindViewById.getLayoutParams().width = q0Var.f17983x;
                    textView.setVisibility(0);
                } else if (i13 == d1Var.f17881c) {
                    p4.h.i(viewFindViewById, "indicatorView");
                    f1.b.a(viewFindViewById, q0Var.f17972m, q0Var.f17971l, 0L, 0L, true, false, 32);
                    viewFindViewById.getLayoutParams().width = q0Var.f17982w;
                    textView.setVisibility(8);
                } else {
                    viewFindViewById.setBackgroundColor(q0Var.f17972m);
                }
                i13 += i14;
            }
        }
        if (d1Var.f17881c == 0 && d1Var.f17882d > 0 && q0Var.f17964e != 1) {
            q0.b(q0Var);
        }
        long j10 = q0Var.f17969j;
        this.f18011h = q0Var;
        this.f18012i = q0Var;
        this.f18013j = d1Var;
        this.f18014k = 1;
        if (DelayKt.delay(j10, this) == aVar) {
            return aVar;
        }
        q0Var2 = q0Var;
        LinearLayout linearLayoutH2 = q0Var2.h();
        p4.h.i(linearLayoutH2, "indicators");
        f1.b.e(linearLayoutH2, false, d1Var.f17882d, q0Var2.f17965f, q0Var2.f17969j, 16);
        long j11 = q0Var2.f17969j * ((long) 2);
        this.f18011h = q0Var;
        this.f18012i = null;
        this.f18013j = null;
        this.f18014k = 2;
        if (DelayKt.delay(j11, this) == aVar) {
            return aVar;
        }
        q0Var3 = q0Var;
        q0Var3.r();
        return fd.o.f7408a;
    }
}
