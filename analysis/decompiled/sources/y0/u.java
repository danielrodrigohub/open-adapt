package y0;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import b7.j1;
import java.util.Collections;
import java.util.Objects;
import n3.s0;
import q7.o0;
import x8.i1;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class u implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f18277h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f18278i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Object f18279j;

    public /* synthetic */ u(Object obj, Object obj2, int i10) {
        this.f18277h = i10;
        this.f18278i = obj;
        this.f18279j = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f18277h) {
            case 0:
                d0.d dVar = ((w) this.f18278i).f18283h;
                Collections.emptyList();
                dVar.a();
                return;
            case 1:
                r3.b.e eVar = (r3.b.e) this.f18278i;
                s0 s0Var = (s0) this.f18279j;
                r3.b bVar = r3.b.this;
                if (bVar.f14457p == 0 || eVar.f14471d) {
                    return;
                }
                Looper looper = bVar.f14461t;
                Objects.requireNonNull(looper);
                eVar.f14470c = bVar.g(looper, eVar.f14469b, s0Var, false);
                r3.b.this.f14455n.add(eVar);
                return;
            case 2:
                i8.a aVar = (i8.a) this.f18278i;
                androidx.fragment.app.r rVar = (androidx.fragment.app.r) this.f18279j;
                p4.h.j(aVar, "$request");
                p4.h.j(rVar, "this$0");
                if (aVar instanceof j8.e) {
                    j8.e eVar2 = (j8.e) aVar;
                    o7.x.f12420a.a(eVar2.getClass().getSimpleName() + "  " + eVar2);
                } else if (aVar instanceof k8.f) {
                    k8.f fVar = (k8.f) aVar;
                    o7.x.f12420a.a(fVar.getClass().getSimpleName() + "  " + fVar);
                }
                try {
                    rVar.j(aVar);
                    return;
                } catch (Throwable th) {
                    o7.x xVar = o7.x.f12420a;
                    o7.x.f12420a.j(rVar.getClass().getSimpleName(), androidx.recyclerview.widget.d.c("Prevented fatal: ", th.getMessage()), th);
                    return;
                }
            case 3:
                x8.w wVar = (x8.w) this.f18278i;
                View view = (View) this.f18279j;
                fd.d<float[]> dVar2 = x8.w.C;
                p4.h.j(wVar, "this$0");
                p4.h.j(view, "$view");
                wVar.f18022b = view.getY();
                int[] iArr = new int[2];
                view.getLocationInWindow(iArr);
                float f10 = iArr[0];
                Context context = view.getContext();
                p4.h.i(context, "view.context");
                wVar.f18023c = f10 - i1.b(context, wVar.f18039s);
                float width = f10 + view.getWidth();
                Context context2 = view.getContext();
                p4.h.i(context2, "view.context");
                wVar.f18024d = width + i1.b(context2, wVar.f18039s);
                Object parent = view.getParent();
                p4.h.h(parent, "null cannot be cast to non-null type android.view.View");
                Context context3 = view.getContext();
                p4.h.i(context3, "view.context");
                wVar.f18032l = i1.b(context3, wVar.f18025e);
                int measuredHeight = ((View) parent).getMeasuredHeight() - view.getMeasuredHeight();
                Context context4 = view.getContext();
                p4.h.i(context4, "view.context");
                int iB = measuredHeight - i1.b(context4, wVar.f18026f);
                wVar.f18031k = iB;
                Context context5 = view.getContext();
                p4.h.i(context5, "view.context");
                wVar.f18036p = i1.b(context5, wVar.f18026f) + iB;
                wVar.f18042v = true;
                return;
            case 4:
                LinearLayout linearLayout = (LinearLayout) this.f18278i;
                i9.g gVar = (i9.g) this.f18279j;
                i9.g.a aVar2 = i9.g.K0;
                p4.h.j(linearLayout, "$layoutView");
                p4.h.j(gVar, "this$0");
                j1.c(linearLayout);
                o0 o0Var = gVar.f8890i0;
                if (o0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                TextView textView = o0Var.f13949c.f13903e;
                p4.h.i(textView, "binding.itemPresetCreati…presetCreationStatusTitle");
                j1.c(textView);
                return;
            default:
                qd.l lVar = (qd.l) this.f18278i;
                ha.a aVar3 = (ha.a) this.f18279j;
                p4.h.j(lVar, "$this_run");
                p4.h.j(aVar3, "$error");
                lVar.invoke(aVar3);
                return;
        }
    }
}
