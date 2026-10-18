package m9;

import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import q7.w0;

/* JADX INFO: compiled from: FirmwareUpdateToDateFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class t extends p8.h {
    public static final a d0 = new a();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f10916b0 = "FirmwareUpdateToDateFragment";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public w0 f10917c0;

    /* JADX INFO: compiled from: FirmwareUpdateToDateFragment.kt */
    public static final class a {
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_software_up_to_date, viewGroup, false);
        int i10 = R.id.current_fw_version;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.current_fw_version);
        if (textView != null) {
            i10 = R.id.firmware_available_description;
            if (((TextView) g7.b.d(viewInflate, R.id.firmware_available_description)) != null) {
                i10 = R.id.firmware_available_title;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.firmware_available_title);
                if (textView2 != null) {
                    i10 = R.id.firmware_update_available_adapt_icon;
                    if (((ImageView) g7.b.d(viewInflate, R.id.firmware_update_available_adapt_icon)) != null) {
                        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                        this.f10917c0 = new w0(constraintLayout, textView, textView2);
                        p4.h.i(constraintLayout, "binding.root");
                        o7.x.f12420a.a("Firmware UpToDate : FW_STATS");
                        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                        String version = inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion();
                        String version2 = inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion();
                        if (!s9.g.f15195a.g(version2, version)) {
                            version = version2;
                        }
                        w0 w0Var = this.f10917c0;
                        if (w0Var == null) {
                            p4.h.C("binding");
                            throw null;
                        }
                        TextView textView3 = w0Var.f14045a;
                        androidx.fragment.app.p pVarI = i();
                        p4.h.h(pVarI, "null cannot be cast to non-null type com.nike.adapt.ui.settings.FirmwareUpdateActivity");
                        textView3.setText(s9.e.b(((FirmwareUpdateActivity) pVarI).getString(R.string.adapt_settings_firmware_view_version_number_label), new Pair("version", version)));
                        w0 w0Var2 = this.f10917c0;
                        if (w0Var2 != null) {
                            j0.a0.q(w0Var2.f14046b, true);
                            return constraintLayout;
                        }
                        p4.h.C("binding");
                        throw null;
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // p8.h
    public final String p0() {
        return this.f10916b0;
    }
}
