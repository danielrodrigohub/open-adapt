package w4;

import android.os.HandlerThread;
import android.view.View;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import s9.r;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17180h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17181i;

    public /* synthetic */ h(Object obj, int i10) {
        this.f17180h = i10;
        this.f17181i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17180h) {
            case 0:
                ((HandlerThread) this.f17181i).quit();
                break;
            case 1:
                ((com.google.android.exoplayer2.ui.d) this.f17181i).c();
                break;
            case 2:
                qd.a aVar = (qd.a) this.f17181i;
                o7.b bVar = o7.b.IO;
                p4.h.j(aVar, "$execute");
                aVar.invoke();
                break;
            default:
                ShoeControllerActivity shoeControllerActivity = (ShoeControllerActivity) this.f17181i;
                int i10 = ShoeControllerActivity.f5872s0;
                p4.h.j(shoeControllerActivity, "this$0");
                r shoeType = shoeControllerActivity.u0().getShoeType();
                p4.h.j(shoeType, "<this>");
                if ((shoeType == r.JORDAN || shoeType == r.JORDAN_2) && !shoeControllerActivity.u0().r()) {
                    BottomSheet bottomSheet = shoeControllerActivity.v0().f13773o;
                    p4.h.i(bottomSheet, "binding.jordanAppIconBottomSheet");
                    View view = shoeControllerActivity.v0().f13778t;
                    p4.h.i(view, "binding.shadedBackground");
                    bottomSheet.C = view;
                    bottomSheet.D = true;
                    bottomSheet.B = new o9.k(shoeControllerActivity);
                    bottomSheet.x();
                } else {
                    x8.n nVar = shoeControllerActivity.X;
                    if (nVar != null) {
                        x8.n.a(nVar, x8.n.a.JordanAppIcon);
                    }
                }
                break;
        }
    }
}
