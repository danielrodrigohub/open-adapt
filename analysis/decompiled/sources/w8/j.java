package w8;

import android.widget.TextView;
import com.nike.adapt.ui.gestures.GesturesTutorialActivity;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f17251h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f17252i;

    public /* synthetic */ j(Object obj, int i10) {
        this.f17251h = i10;
        this.f17252i = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f17251h) {
            case 0:
                GesturesTutorialActivity gesturesTutorialActivity = (GesturesTutorialActivity) this.f17252i;
                int i10 = GesturesTutorialActivity.d0;
                p4.h.j(gesturesTutorialActivity, "this$0");
                q7.h hVar = gesturesTutorialActivity.I;
                if (hVar != null) {
                    hVar.f13835i.setVisibility(8);
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            case 1:
                TextView textView = (TextView) this.f17252i;
                p4.h.j(textView, "$this_with");
                textView.setText("");
                return;
            default:
                qd.a aVar = (qd.a) this.f17252i;
                p4.h.j(aVar, "$tmp0");
                aVar.invoke();
                return;
        }
    }
}
