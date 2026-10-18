package x8;

import android.content.Context;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.Space;
import android.widget.TextView;
import com.nike.adapt.R;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;

/* JADX INFO: compiled from: ShoeControllerUiHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.helper.ShoeControllerUiHelper$moveCursorToLace$1", f = "ShoeControllerUiHelper.kt", l = {364, 366, 377}, m = "invokeSuspend")
public final class y0 extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public q0 f18052i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public q0 f18053j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public d1 f18054k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f18055l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f18056m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final /* synthetic */ d1 f18057n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final /* synthetic */ q0 f18058o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final /* synthetic */ boolean f18059p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y0(d1 d1Var, q0 q0Var, boolean z10, jd.d<? super y0> dVar) {
        super(2, dVar);
        this.f18057n = d1Var;
        this.f18058o = q0Var;
        this.f18059p = z10;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new y0(this.f18057n, this.f18058o, this.f18059p, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((y0) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00df  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:35:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:40:0x0108  */
    /* JADX WARN: Code duplicated, block: B:43:0x0110  */
    /* JADX WARN: Code duplicated, block: B:45:0x011b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0124  */
    /* JADX WARN: Code duplicated, block: B:60:0x013d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0145  */
    /* JADX WARN: Code duplicated, block: B:63:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x01df A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:70:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:74:0x0103 A[EDGE_INSN: B:74:0x0103->B:37:0x0103 BREAK  A[LOOP:0: B:30:0x00ed->B:36:0x00ff], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:0x00ff A[SYNTHETIC] */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        long j10;
        q0 q0Var;
        q0 q0Var2;
        d1 d1Var;
        boolean z10;
        long j11;
        d1 d1Var2;
        q0 q0Var3;
        q0 q0Var4;
        LinearLayout linearLayoutH;
        int childCount;
        int i10;
        int i11;
        String str;
        int i12;
        int i13;
        int childCount2;
        int i14;
        long jAbs;
        q0 q0Var5;
        View childAt;
        boolean z11;
        int i15;
        int i16;
        int i17;
        View childAt2;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i18 = this.f18056m;
        if (i18 != 0) {
            if (i18 == 1) {
                z10 = this.f18055l;
                j10 = this.f18051h;
                d1Var = this.f18054k;
                q0Var2 = this.f18053j;
                q0Var = this.f18052i;
                d3.e.p(obj);
            } else {
                if (i18 == 2) {
                    z10 = this.f18055l;
                    j11 = this.f18051h;
                    d1Var2 = this.f18054k;
                    q0Var3 = this.f18053j;
                    q0Var4 = this.f18052i;
                    d3.e.p(obj);
                    if (!d1Var2.f17884f) {
                        linearLayoutH = q0Var3.h();
                        p4.h.i(linearLayoutH, "indicators");
                        childCount = linearLayoutH.getChildCount();
                        i10 = 0;
                        i11 = 0;
                        while (true) {
                            str = "getChildAt(index)";
                            if (i10 < childCount) {
                                break;
                            }
                            childAt2 = linearLayoutH.getChildAt(i10);
                            p4.h.i(childAt2, "getChildAt(index)");
                            if (childAt2 instanceof Space) {
                                i11++;
                            }
                            i10++;
                        }
                        i12 = i11 - 1;
                        i13 = i12 <= 0 ? 1 : -1;
                        childCount2 = linearLayoutH.getChildCount();
                        i14 = 0;
                        while (i14 < childCount2) {
                            childAt = linearLayoutH.getChildAt(i14);
                            p4.h.i(childAt, str);
                            if (childAt instanceof Space) {
                                z11 = z10;
                                i15 = i14;
                                str = str;
                                linearLayoutH = linearLayoutH;
                            } else {
                                if ((z10 || i12 < d1Var2.f17880b || i12 > d1Var2.f17882d) && (z10 || i12 > d1Var2.f17880b || i12 < d1Var2.f17882d)) {
                                }
                                if (childAt != null) {
                                    i16 = d1Var2.f17882d;
                                    z11 = z10;
                                    i17 = d1Var2.f17880b;
                                    if (i16 != i17) {
                                        boolean z12 = q0Var3.f17965f;
                                        int i19 = i14;
                                        long jAbs2 = ((long) Math.abs(i17 - i12)) * j11;
                                        View viewFindViewById = childAt.findViewById(R.id.view_indicator);
                                        TextView textView = (TextView) childAt.findViewById(R.id.view_indicator_percent);
                                        Context context = childAt.getContext();
                                        Object obj2 = y.a.f18143a;
                                        i15 = i19;
                                        BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new k(jAbs2, childAt, z12, textView, viewFindViewById, y.a.c.a(context, R.color.indicator_active), j11, y.a.c.a(childAt.getContext(), R.color.indicator_inactive), null), 2, null);
                                    }
                                    i12 += i13;
                                } else {
                                    z11 = z10;
                                }
                                i15 = i14;
                                i12 += i13;
                            }
                            i14 = i15 + 1;
                            linearLayoutH = linearLayoutH;
                            z10 = z11;
                            str = str;
                        }
                        jAbs = (((long) Math.abs(d1Var2.f17880b - d1Var2.f17882d)) * j11) + j11;
                        this.f18052i = q0Var4;
                        this.f18053j = null;
                        this.f18054k = null;
                        this.f18056m = 3;
                        if (DelayKt.delay(jAbs, this) == aVar) {
                            return aVar;
                        }
                        q0Var5 = q0Var4;
                    }
                    q0Var4.r();
                    return fd.o.f7408a;
                }
                if (i18 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                q0Var5 = this.f18052i;
                d3.e.p(obj);
            }
            q0Var4 = q0Var5;
            q0Var4.r();
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        if (this.f18057n.f17884f) {
            j10 = 100;
        } else {
            q0 q0Var6 = this.f18058o;
            q0.a aVar2 = q0Var6.f17963d;
            if (aVar2 != null) {
                aVar2.W(q0Var6.f17961b);
            }
            q0 q0Var7 = this.f18058o;
            q0Var7.f17960a.requestTo(q0Var7.f17961b, new p8.d0((int) q0Var7.f17985z[this.f18057n.f17882d], 1));
            j10 = this.f18058o.f17969j;
        }
        this.f18058o.j();
        q0.b(this.f18058o);
        this.f18058o.j().setTag(h0.LOCK);
        q0Var = this.f18058o;
        d1 d1Var3 = this.f18057n;
        boolean z13 = this.f18059p;
        q0Var.l();
        q0Var.u(d1Var3.f17882d);
        this.f18052i = q0Var;
        this.f18053j = q0Var;
        this.f18054k = d1Var3;
        this.f18051h = j10;
        this.f18055l = z13;
        this.f18056m = 1;
        if (DelayKt.delay(10L, this) == aVar) {
            return aVar;
        }
        q0Var2 = q0Var;
        d1Var = d1Var3;
        z10 = z13;
        LinearLayout linearLayoutH2 = q0Var2.h();
        p4.h.i(linearLayoutH2, "indicators");
        f1.b.e(linearLayoutH2, false, d1Var.f17882d, q0Var2.f17965f, 200L, 16);
        this.f18052i = q0Var;
        this.f18053j = q0Var2;
        this.f18054k = d1Var;
        this.f18051h = j10;
        this.f18055l = z10;
        this.f18056m = 2;
        if (DelayKt.delay(220L, this) == aVar) {
            return aVar;
        }
        j11 = j10;
        d1Var2 = d1Var;
        q0Var3 = q0Var2;
        q0Var4 = q0Var;
        if (!d1Var2.f17884f) {
            linearLayoutH = q0Var3.h();
            p4.h.i(linearLayoutH, "indicators");
            childCount = linearLayoutH.getChildCount();
            i10 = 0;
            i11 = 0;
            while (true) {
                str = "getChildAt(index)";
                if (i10 < childCount) {
                    break;
                    break;
                }
                childAt2 = linearLayoutH.getChildAt(i10);
                p4.h.i(childAt2, "getChildAt(index)");
                if (childAt2 instanceof Space) {
                    i11++;
                }
                i10++;
            }
            i12 = i11 - 1;
            if (i12 <= 0) {
            }
            childCount2 = linearLayoutH.getChildCount();
            i14 = 0;
            while (i14 < childCount2) {
                childAt = linearLayoutH.getChildAt(i14);
                p4.h.i(childAt, str);
                if (childAt instanceof Space) {
                    z11 = z10;
                    i15 = i14;
                    str = str;
                    linearLayoutH = linearLayoutH;
                } else {
                    childAt = z10 ? null : null;
                    if (childAt != null) {
                        i16 = d1Var2.f17882d;
                        z11 = z10;
                        i17 = d1Var2.f17880b;
                        if (i16 != i17) {
                            boolean z14 = q0Var3.f17965f;
                            int i110 = i14;
                            long jAbs3 = ((long) Math.abs(i17 - i12)) * j11;
                            View viewFindViewById2 = childAt.findViewById(R.id.view_indicator);
                            TextView textView2 = (TextView) childAt.findViewById(R.id.view_indicator_percent);
                            Context context2 = childAt.getContext();
                            Object obj3 = y.a.f18143a;
                            i15 = i110;
                            BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getMain(), null, new k(jAbs3, childAt, z14, textView2, viewFindViewById2, y.a.c.a(context2, R.color.indicator_active), j11, y.a.c.a(childAt.getContext(), R.color.indicator_inactive), null), 2, null);
                        }
                        i12 += i13;
                    } else {
                        z11 = z10;
                    }
                    i15 = i14;
                    i12 += i13;
                }
                i14 = i15 + 1;
                linearLayoutH = linearLayoutH;
                z10 = z11;
                str = str;
            }
            jAbs = (((long) Math.abs(d1Var2.f17880b - d1Var2.f17882d)) * j11) + j11;
            this.f18052i = q0Var4;
            this.f18053j = null;
            this.f18054k = null;
            this.f18056m = 3;
            if (DelayKt.delay(jAbs, this) == aVar) {
                return aVar;
            }
            q0Var5 = q0Var4;
            q0Var4 = q0Var5;
        }
        q0Var4.r();
        return fd.o.f7408a;
    }
}
