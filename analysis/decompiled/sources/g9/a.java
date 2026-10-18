package g9;

import android.view.View;
import com.nike.adapt.ui.myshoes.autolace.AutoLaceActivity;
import com.nike.adapt.ui.settings.SettingsAboutActivity;
import h9.p0;
import q7.i0;
import v7.m;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f7868h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ f.e f7869i;

    public /* synthetic */ a(f.e eVar, int i10) {
        this.f7868h = i10;
        this.f7869i = eVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f7868h) {
            case 0:
                AutoLaceActivity autoLaceActivity = (AutoLaceActivity) this.f7869i;
                int i10 = AutoLaceActivity.U;
                p4.h.j(autoLaceActivity, "this$0");
                i0 i0Var = autoLaceActivity.T;
                if (i0Var != null) {
                    i0Var.f13847a.toggle();
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            default:
                SettingsAboutActivity settingsAboutActivity = (SettingsAboutActivity) this.f7869i;
                int i11 = SettingsAboutActivity.B;
                p4.h.j(settingsAboutActivity, "this$0");
                new p0(m.TERMS_OF_USE).e(settingsAboutActivity);
                return;
        }
    }
}
