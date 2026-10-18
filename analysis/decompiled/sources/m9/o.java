package m9;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.BatteryUpdateBroadCastNotificationResult;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.service.FirmwareUpdateService;
import com.nike.adapt.ui.settings.FirmwareUpdateActivity;
import okhttp3.internal.http.HttpStatusCodesKt;
import org.greenrobot.eventbus.ThreadMode;
import q7.x0;

/* JADX INFO: compiled from: FirmwareUpdateAvailableFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o extends p8.b {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final a f10893p0 = new a();

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public b f10895i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public IDeviceController f10896j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public IAdaptRequester f10897k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public x0 f10898l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ea.m f10899m0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f10894h0 = "FirmwareUpdateAvailableFragment";

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final h8.c f10900n0 = h8.c.f8298b;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final c f10901o0 = new c();

    /* JADX INFO: compiled from: FirmwareUpdateAvailableFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: FirmwareUpdateAvailableFragment.kt */
    public interface b {
        void G(s9.z zVar);
    }

    /* JADX INFO: compiled from: FirmwareUpdateAvailableFragment.kt */
    public static final class c implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            p4.h.j(iBinder, "service");
            BigfootApplication.f5638p.a().f5650k = FirmwareUpdateService.this;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            BigfootApplication.f5638p.a().f5650k = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        this.f10895i0 = (b) context;
    }

    @Override // p8.r, p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.f10897k0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.d0, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
        this.f10896j0 = ((o7.f) androidx.lifecycle.o.m()).b(this, this.d0);
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        this.f10900n0.h0(false);
        View viewInflate = layoutInflater.inflate(R.layout.fragment_software_update_available, viewGroup, false);
        int i10 = R.id.btn_install;
        Button button = (Button) g7.b.d(viewInflate, R.id.btn_install);
        if (button != null) {
            i10 = R.id.current_fw_version;
            TextView textView = (TextView) g7.b.d(viewInflate, R.id.current_fw_version);
            if (textView != null) {
                i10 = R.id.firmware_available_before_update;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.firmware_available_before_update);
                if (textView2 != null) {
                    i10 = R.id.firmware_available_description;
                    if (((TextView) g7.b.d(viewInflate, R.id.firmware_available_description)) != null) {
                        i10 = R.id.firmware_available_title;
                        TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.firmware_available_title);
                        if (textView3 != null) {
                            i10 = R.id.firmware_update_available_adapt_icon;
                            if (((ImageView) g7.b.d(viewInflate, R.id.firmware_update_available_adapt_icon)) != null) {
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
                                                                    i10 = R.id.starting_update_progress;
                                                                    ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.starting_update_progress);
                                                                    if (progressBar != null) {
                                                                        i10 = R.id.update_to_fw_version;
                                                                        TextView textView4 = (TextView) g7.b.d(viewInflate, R.id.update_to_fw_version);
                                                                        if (textView4 != null) {
                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                                                            this.f10898l0 = new x0(constraintLayout, button, textView, textView2, textView3, progressBar, textView4);
                                                                            p4.h.i(constraintLayout, "binding.root");
                                                                            x0 x0Var = this.f10898l0;
                                                                            if (x0Var == null) {
                                                                                p4.h.C("binding");
                                                                                throw null;
                                                                            }
                                                                            TextView textView5 = x0Var.f14054b;
                                                                            androidx.fragment.app.p pVarI = i();
                                                                            p4.h.h(pVarI, "null cannot be cast to non-null type com.nike.adapt.ui.settings.FirmwareUpdateActivity");
                                                                            s9.g gVar = s9.g.f15195a;
                                                                            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                                                                            textView5.setText(s9.e.b(((FirmwareUpdateActivity) pVarI).getString(R.string.adapt_settings_firmware_view_version_number_label), new Pair("version", gVar.c(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion()))));
                                                                            x0 x0Var2 = this.f10898l0;
                                                                            if (x0Var2 == null) {
                                                                                p4.h.C("binding");
                                                                                throw null;
                                                                            }
                                                                            x0Var2.f14058f.setText(s9.e.b(d0().getString(R.string.adapt_settings_firmware_view_version_number_label), new Pair("version", inMemoryCache.getUpdateToFirmwareVersion())));
                                                                            x0 x0Var3 = this.f10898l0;
                                                                            if (x0Var3 == null) {
                                                                                p4.h.C("binding");
                                                                                throw null;
                                                                            }
                                                                            j0.a0.q(x0Var3.f14056d, true);
                                                                            x0 x0Var4 = this.f10898l0;
                                                                            if (x0Var4 != null) {
                                                                                j0.a0.q(x0Var4.f14055c, true);
                                                                                return constraintLayout;
                                                                            }
                                                                            p4.h.C("binding");
                                                                            throw null;
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        x0 x0Var = this.f10898l0;
        if (x0Var != null) {
            x0Var.f14053a.setOnClickListener(new o8.k(this, 2));
        } else {
            p4.h.C("binding");
            throw null;
        }
    }

    @Override // p8.b
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.d0)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        this.f13309e0.b(adaptConnectionStatusResult);
        v0();
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        this.f10899m0 = adaptConnectionStatusResult.getDevice();
        IDeviceController iDeviceController = this.f10896j0;
        if (iDeviceController == null) {
            p4.h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.f10896j0;
        if (iDeviceController2 != null) {
            iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), p8.g.f13328a);
        } else {
            p4.h.C("deviceController");
            throw null;
        }
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        p4.h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.d0)) {
            return;
        }
        if (deviceControllerResult instanceof GetBatteryPercentResult) {
            v0();
        } else if (deviceControllerResult instanceof BatteryUpdateBroadCastNotificationResult) {
            v0();
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f10894h0;
    }

    public final void u0() {
        fd.o oVar;
        s9.g gVar = s9.g.f15195a;
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        TrackManager.INSTANCE.softwareUpdateStarted(gVar.c(inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion(), inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion()), inMemoryCache.getUpdateToFirmwareVersion());
        o7.x.f12420a.a("FirmwareUpdateCrumb Pressed: Install : FW_STATS");
        s9.g.f15196b = 20;
        x0 x0Var = this.f10898l0;
        if (x0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        x0Var.f14057e.setVisibility(0);
        x0 x0Var2 = this.f10898l0;
        if (x0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        x0Var2.f14053a.setText("");
        BigfootApplication.e eVar = BigfootApplication.f5638p;
        BigfootApplication bigfootApplicationA = eVar.a();
        ea.m mVar = this.f10899m0;
        if (mVar != null) {
            if (this.f13309e0.a() && bigfootApplicationA.f5650k == null) {
                h8.c cVar = this.f10900n0;
                long jCurrentTimeMillis = System.currentTimeMillis();
                SharedPreferences.Editor editorEdit = cVar.m0().edit();
                p4.h.i(editorEdit, "editor");
                editorEdit.putLong("PREF_FIRMWARE_UPGRADE_START_TIME", jCurrentTimeMillis);
                editorEdit.commit();
                androidx.fragment.app.p pVarD0 = d0();
                if (eVar.a().f5650k == null) {
                    FirmwareUpdateService.a aVar = FirmwareUpdateService.f5688s;
                    Intent intent = new Intent(pVarD0, (Class<?>) FirmwareUpdateService.class);
                    intent.putExtra("FIRMWARE_UPDATE_SERVICE_PAIRED_DEVICE", mVar);
                    intent.putExtra("com.nike.adapt.PARAM_FIRMWARE_SERVICE_PI", PendingIntent.getActivity(pVarD0, HttpStatusCodesKt.HTTP_ACCEPTED, new Intent(pVarD0, (Class<?>) FirmwareUpdateActivity.class), 67108864));
                    pVarD0.startService(intent);
                    pVarD0.bindService(intent, this.f10901o0, 1);
                }
            }
            oVar = fd.o.f7408a;
        } else {
            oVar = null;
        }
        if (oVar == null) {
            b bVar = this.f10895i0;
            if (bVar != null) {
                bVar.G(s9.z.CHECK_FOR_UPDATE);
            } else {
                p4.h.C("listener");
                throw null;
            }
        }
    }

    public final void v0() {
        if (this.f13309e0.a()) {
            s9.g gVar = s9.g.f15195a;
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if ((inMemoryCache.getLeftDevice().getBattery().getPercent() > 30) && (inMemoryCache.getRightDevice().getBattery().getPercent() > 30)) {
                x0 x0Var = this.f10898l0;
                if (x0Var == null) {
                    p4.h.C("binding");
                    throw null;
                }
                Button button = x0Var.f14053a;
                button.setEnabled(true);
                button.setClickable(true);
                button.setAlpha(1.0f);
                o7.x.f12420a.a("FirmwareUpdateCrumb Update Available : FW_STATS");
                return;
            }
        }
        x0 x0Var2 = this.f10898l0;
        if (x0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        Button button2 = x0Var2.f14053a;
        button2.setEnabled(false);
        button2.setClickable(false);
        button2.setAlpha(0.15f);
    }
}
