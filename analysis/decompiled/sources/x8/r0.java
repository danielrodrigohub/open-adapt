package x8;

import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.nike.adapt.R;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$abortAction$1", f = "ShoeControllerUiHelper.kt", l = {448}, m = "invokeSuspend")
public final class r0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public q0 f17992h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0 f17993i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public d1 f17994j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f17995k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ q0 f17996l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final /* synthetic */ long f17997m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ d1 f17998n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ boolean f17999o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(q0 q0Var, long j10, d1 d1Var, boolean z10, jd.d<? super r0> dVar) {
        super(2, dVar);
        this.f17996l = q0Var;
        this.f17997m = j10;
        this.f17998n = d1Var;
        this.f17999o = z10;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new r0(this.f17996l, this.f17997m, this.f17998n, this.f17999o, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((r0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        q0 q0Var;
        String str;
        String str2;
        q0 q0Var2;
        d1 d1Var;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f17995k;
        String str3 = "indicators";
        if (i10 == 0) {
            d3.e.p(obj);
            q0Var = this.f17996l;
            long j10 = this.f17997m;
            d1 d1Var2 = this.f17998n;
            boolean z10 = this.f17999o;
            q0Var.l();
            LinearLayout linearLayoutH = q0Var.h();
            p4.h.i(linearLayoutH, "indicators");
            int childCount = linearLayoutH.getChildCount();
            int i11 = 0;
            int i12 = 0;
            while (true) {
                str = "getChildAt(index)";
                if (i11 >= childCount) {
                    break;
                }
                View childAt = linearLayoutH.getChildAt(i11);
                p4.h.i(childAt, "getChildAt(index)");
                if (!(childAt instanceof Space)) {
                    i12++;
                }
                i11++;
            }
            int i13 = i12 - 1;
            int i14 = i13 > 0 ? -1 : 1;
            int childCount2 = linearLayoutH.getChildCount();
            int i15 = i13;
            int i16 = 0;
            while (i16 < childCount2) {
                View childAt2 = linearLayoutH.getChildAt(i16);
                p4.h.i(childAt2, str);
                if (childAt2 instanceof Space) {
                    str3 = str3;
                    i16 = i16;
                    str = str;
                    childCount2 = childCount2;
                    z10 = z10;
                    linearLayoutH = linearLayoutH;
                } else {
                    View viewFindViewById = childAt2.findViewById(R.id.view_indicator);
                    TextView textView = (TextView) childAt2.findViewById(R.id.view_indicator_percent);
                    ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                    int i17 = d1Var2.f17880b;
                    layoutParams.width = i17 == i15 ? q0Var.f17983x : q0Var.f17982w;
                    textView.setVisibility(i17 == i15 ? 0 : 8);
                    int i18 = d1Var2.f17882d;
                    long jAbs = i18 != i15 ? ((long) Math.abs(i18 - i15)) * j10 : 0L;
                    if (z10 && i15 >= d1Var2.f17880b && i15 <= d1Var2.f17882d) {
                        q0.a(q0Var, d1Var2, i15, viewFindViewById, jAbs, j10);
                    }
                    if (z10 == 0 && i15 <= d1Var2.f17880b && i15 >= d1Var2.f17882d) {
                        q0.a(q0Var, d1Var2, i15, viewFindViewById, jAbs, j10);
                    }
                    i15 += i14;
                }
                i16++;
                str3 = str3;
                str = str;
                childCount2 = childCount2;
                z10 = z10;
                linearLayoutH = linearLayoutH;
            }
            str2 = str3;
            long jAbs2 = (((long) Math.abs(d1Var2.f17880b - d1Var2.f17882d)) * j10) + j10;
            this.f17992h = q0Var;
            this.f17993i = q0Var;
            this.f17994j = d1Var2;
            this.f17995k = 1;
            if (DelayKt.delay(jAbs2, this) == aVar) {
                return aVar;
            }
            q0Var2 = q0Var;
            d1Var = d1Var2;
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d1Var = this.f17994j;
            q0Var = this.f17993i;
            q0Var2 = this.f17992h;
            d3.e.p(obj);
            str2 = "indicators";
        }
        LinearLayout linearLayoutH2 = q0Var.h();
        p4.h.i(linearLayoutH2, str2);
        f1.b.e(linearLayoutH2, false, d1Var.f17880b, q0Var.f17965f, 0L, 24);
        q0Var.u(d1Var.f17880b);
        q0Var2.r();
        return fd.o.f7408a;
    }
}
