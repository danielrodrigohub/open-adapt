package m9;

import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.FirmwareInProgressResult;
import com.nike.adapt.adk.FirmwareUpdateResult;
import com.nike.adapt.adk.IAdaptRequester;
import org.greenrobot.eventbus.ThreadMode;
import q7.z0;

/* JADX INFO: compiled from: FirmwareUpdatingFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class u extends p8.b {

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final a f10918l0 = new a();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public IAdaptRequester f10920i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public z0 f10921j0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f10919h0 = "FirmwareUpdatingFragment";

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public final h8.c f10922k0 = h8.c.f8298b;

    /* JADX INFO: compiled from: FirmwareUpdatingFragment.kt */
    public static final class a {
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f10920i0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_software_updating, viewGroup, false);
        int i10 = R.id.firmware_page_description;
        if (((TextView) g7.b.d(viewInflate, R.id.firmware_page_description)) != null) {
            i10 = R.id.firmware_updating_bullet_one_description;
            if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_one_description)) != null) {
                i10 = R.id.firmware_updating_bullet_one_dot;
                if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_one_dot)) != null) {
                    i10 = R.id.firmware_updating_bullet_one_parent;
                    if (((LinearLayout) g7.b.d(viewInflate, R.id.firmware_updating_bullet_one_parent)) != null) {
                        i10 = R.id.firmware_updating_bullet_three_description;
                        if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_three_description)) != null) {
                            i10 = R.id.firmware_updating_bullet_three_dot;
                            if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_three_dot)) != null) {
                                i10 = R.id.firmware_updating_bullet_three_parent;
                                if (((LinearLayout) g7.b.d(viewInflate, R.id.firmware_updating_bullet_three_parent)) != null) {
                                    i10 = R.id.firmware_updating_bullet_two_description;
                                    if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_two_description)) != null) {
                                        i10 = R.id.firmware_updating_bullet_two_dot;
                                        if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_bullet_two_dot)) != null) {
                                            i10 = R.id.firmware_updating_bullet_two_parent;
                                            if (((LinearLayout) g7.b.d(viewInflate, R.id.firmware_updating_bullet_two_parent)) != null) {
                                                i10 = R.id.firmware_updating_eta;
                                                TextView textView = (TextView) g7.b.d(viewInflate, R.id.firmware_updating_eta);
                                                if (textView != null) {
                                                    i10 = R.id.firmware_updating_page_title;
                                                    if (((TextView) g7.b.d(viewInflate, R.id.firmware_updating_page_title)) != null) {
                                                        i10 = R.id.fw_progress_update_label;
                                                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.fw_progress_update_label);
                                                        if (textView2 != null) {
                                                            i10 = R.id.fw_progress_update_stage;
                                                            if (((TextView) g7.b.d(viewInflate, R.id.fw_progress_update_stage)) != null) {
                                                                i10 = R.id.fw_update_progress_bar;
                                                                ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.fw_update_progress_bar);
                                                                if (progressBar != null) {
                                                                    i10 = R.id.fw_upload_cancel_cta;
                                                                    TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.fw_upload_cancel_cta);
                                                                    if (textView3 != null) {
                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                                                        this.f10921j0 = new z0(constraintLayout, textView, textView2, progressBar, textView3);
                                                                        p4.h.i(constraintLayout, "binding.root");
                                                                        z0 z0Var = this.f10921j0;
                                                                        if (z0Var == null) {
                                                                            p4.h.C("binding");
                                                                            throw null;
                                                                        }
                                                                        z0Var.f14074d.setOnClickListener(new w8.b(this, 4));
                                                                        z0 z0Var2 = this.f10921j0;
                                                                        if (z0Var2 == null) {
                                                                            p4.h.C("binding");
                                                                            throw null;
                                                                        }
                                                                        z0Var2.f14071a.setText(s9.g.f15195a.i(0.0f, 0L));
                                                                        z0 z0Var3 = this.f10921j0;
                                                                        if (z0Var3 == null) {
                                                                            p4.h.C("binding");
                                                                            throw null;
                                                                        }
                                                                        z0Var3.f14072b.setText(s9.e.b(d0().getString(R.string.adapt_settings_firmware_updating_realtime_progress_copy), new Pair("percent", "0.0")));
                                                                        return constraintLayout;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(FirmwareUpdateResult firmwareUpdateResult) {
        p4.h.j(firmwareUpdateResult, "result");
        if ((firmwareUpdateResult instanceof FirmwareInProgressResult) && B()) {
            z0 z0Var = this.f10921j0;
            if (z0Var == null) {
                p4.h.C("binding");
                throw null;
            }
            FirmwareInProgressResult firmwareInProgressResult = (FirmwareInProgressResult) firmwareUpdateResult;
            z0Var.f14073c.setProgress((int) (firmwareInProgressResult.getPercent() * 10));
            z0 z0Var2 = this.f10921j0;
            if (z0Var2 == null) {
                p4.h.C("binding");
                throw null;
            }
            z0Var2.f14072b.setText(s9.e.b(d0().getString(R.string.adapt_settings_firmware_updating_realtime_progress_copy), new Pair("percent", String.valueOf(firmwareInProgressResult.getPercent()))));
            z0 z0Var3 = this.f10921j0;
            if (z0Var3 != null) {
                z0Var3.f14071a.setText(s9.g.f15195a.i(firmwareInProgressResult.getPercent(), this.f10922k0.m0().getLong("PREF_FIRMWARE_UPGRADE_START_TIME", 0L)));
            } else {
                p4.h.C("binding");
                throw null;
            }
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f10919h0;
    }
}
