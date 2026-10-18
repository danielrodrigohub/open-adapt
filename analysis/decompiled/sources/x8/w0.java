package x8;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class w0 extends rd.m implements qd.l<d1, fd.o> {
    public w0(Object obj) {
        super(1, obj, q0.class, "reporter", "reporter(Lcom/nike/adapt/ui/helper/ShoeLocationReporter;)V", 0);
    }

    @Override // qd.l
    public final fd.o invoke(d1 d1Var) {
        d1 d1Var2 = d1Var;
        p4.h.j(d1Var2, "p0");
        q0 q0Var = (q0) this.receiver;
        q0Var.f17969j = Math.abs(((long) ((q0Var.f17970k ? InMemoryCache.INSTANCE.getRightDevice().getMaxTightness() : InMemoryCache.INSTANCE.getLeftDevice().getMaxTightness()) * 87)) / ((long) 21));
        if (!d1Var2.f17885g && d1Var2.f17882d != d1Var2.f17881c) {
            Context context = q0Var.f17967h;
            p4.h.i(context, "context");
            long j10 = 5;
            c3.d.r(context, (((long) d1Var2.f17882d) * j10) + j10);
        }
        b0 b0Var = d1Var2.f17883e;
        if (b0Var instanceof f1) {
            LinearLayout linearLayoutH = q0Var.h();
            p4.h.i(linearLayoutH, "indicators");
            f1.b.e(linearLayoutH, true, d1Var2.f17880b, q0Var.f17965f, 0L, 24);
        } else if (b0Var instanceof l0) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new a1(q0Var, d1Var2, null), 2, null);
        } else if (b0Var instanceof a) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new r0(q0Var, b0Var.a(), d1Var2, d1Var2.f17880b < d1Var2.f17882d, null), 2, null);
        } else if (b0Var instanceof u) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new u0(q0Var, d1Var2, null), 2, null);
        } else if (b0Var instanceof h1) {
            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new y0(d1Var2, q0Var, d1Var2.f17882d > d1Var2.f17880b, null), 2, null);
        } else if (b0Var instanceof g1) {
            LinearLayout linearLayoutH2 = q0Var.h();
            p4.h.i(linearLayoutH2, "indicators");
            int childCount = linearLayoutH2.getChildCount();
            int i10 = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = linearLayoutH2.getChildAt(i11);
                p4.h.i(childAt, "getChildAt(index)");
                if (!(childAt instanceof Space)) {
                    i10++;
                }
            }
            int i12 = i10 - 1;
            int i13 = i12 > 0 ? -1 : 1;
            int childCount2 = linearLayoutH2.getChildCount();
            for (int i14 = 0; i14 < childCount2; i14++) {
                View childAt2 = linearLayoutH2.getChildAt(i14);
                p4.h.i(childAt2, "getChildAt(index)");
                if (!(childAt2 instanceof Space)) {
                    View viewFindViewById = childAt2.findViewById(R.id.view_indicator);
                    TextView textView = (TextView) childAt2.findViewById(R.id.view_indicator_percent);
                    if (i12 == d1Var2.f17882d) {
                        p4.h.i(viewFindViewById, "indicatorView");
                        f1.b.a(viewFindViewById, q0Var.f17972m, q0Var.f17971l, 0L, 0L, false, false, 48);
                        viewFindViewById.getLayoutParams().width = q0Var.f17983x;
                        textView.setVisibility(0);
                    } else if (i12 == d1Var2.f17881c) {
                        p4.h.i(viewFindViewById, "indicatorView");
                        f1.b.a(viewFindViewById, q0Var.f17972m, q0Var.f17971l, 0L, 0L, true, false, 32);
                        viewFindViewById.getLayoutParams().width = q0Var.f17982w;
                        textView.setVisibility(8);
                    } else {
                        viewFindViewById.setBackgroundColor(q0Var.f17972m);
                    }
                    i12 += i13;
                }
            }
        }
        return fd.o.f7408a;
    }
}
