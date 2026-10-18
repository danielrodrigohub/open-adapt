package com.nike.adapt.ui.battery;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.BatteryUpdateBroadCastNotificationResult;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.Disconnected;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.adk.model.BatteryState;
import com.nike.adapt.analytics.TrackManager;
import fe.k;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import o7.f;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p7.b;
import p8.a;
import p8.g;
import q7.b1;
import q7.c;
import q8.d;
import q8.e;
import q8.i;

/* JADX INFO: compiled from: BatteryStateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BatteryStateActivity extends a {
    public c I;
    public IAdaptRequester J;
    public IDeviceController K;
    public e L;
    public e M;
    public d N;

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair)) {
            if (adaptConnectionStatusResult instanceof Disconnected) {
                q0(adaptConnectionStatusResult.getShoe(), new Battery(0, BatteryState.ERROR));
            }
        } else {
            if (adaptConnectionStatusResult.getDevice() == null) {
                return;
            }
            IDeviceController iDeviceController = this.K;
            if (iDeviceController == null) {
                h.C("deviceController");
                throw null;
            }
            iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
            IDeviceController iDeviceController2 = this.K;
            if (iDeviceController2 != null) {
                iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), g.f13328a);
            } else {
                h.C("deviceController");
                throw null;
            }
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetBatteryPercentResult) {
            GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) deviceControllerResult;
            q0(getBatteryPercentResult.getShoe(), getBatteryPercentResult.getBattery());
        } else if (deviceControllerResult instanceof BatteryUpdateBroadCastNotificationResult) {
            BatteryUpdateBroadCastNotificationResult batteryUpdateBroadCastNotificationResult = (BatteryUpdateBroadCastNotificationResult) deviceControllerResult;
            q0(batteryUpdateBroadCastNotificationResult.getShoe(), batteryUpdateBroadCastNotificationResult.getBattery());
        } else if (deviceControllerResult instanceof StopAnimationNotificationResult) {
            b bVar = b.f13281a;
            ConstraintLayout constraintLayout = p0().f13730a;
            h.i(constraintLayout, "binding.root");
            b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String string;
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_battery_state, (ViewGroup) null, false);
        int i10 = R.id.battery_charging_pad;
        LinearLayout linearLayout = (LinearLayout) g7.b.d(viewInflate, R.id.battery_charging_pad);
        if (linearLayout != null) {
            i10 = R.id.battery_details_left;
            View viewD = g7.b.d(viewInflate, R.id.battery_details_left);
            if (viewD != null) {
                b1 b1VarA = b1.a(viewD);
                i10 = R.id.battery_details_right;
                View viewD2 = g7.b.d(viewInflate, R.id.battery_details_right);
                if (viewD2 != null) {
                    b1 b1VarA2 = b1.a(viewD2);
                    i10 = R.id.battery_state_explanation_message;
                    TextView textView = (TextView) g7.b.d(viewInflate, R.id.battery_state_explanation_message);
                    if (textView != null) {
                        i10 = R.id.battery_state_explanation_title;
                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.battery_state_explanation_title);
                        if (textView2 != null) {
                            this.I = new c((ConstraintLayout) viewInflate, linearLayout, b1VarA, b1VarA2, textView, textView2);
                            setContentView(p0().f13730a);
                            b bVar = b.f13281a;
                            ConstraintLayout constraintLayout = p0().f13730a;
                            h.i(constraintLayout, "binding.root");
                            b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                            Bundle extras = getIntent().getExtras();
                            if (extras != null && (string = extras.getString("extra_notification_type")) != null) {
                                int iA = q.g.a(g2.e.d(string));
                                if (iA == 0) {
                                    TrackManager.INSTANCE.batteryNotificationCriticalBatteryTapped();
                                } else if (iA == 1) {
                                    TrackManager.INSTANCE.batteryNotificationLowBatteryTapped();
                                } else if (iA == 2) {
                                    TrackManager.INSTANCE.batteryNotificationFullyChargedTapped();
                                }
                            }
                            this.J = ((f) o.m()).a(this, this.B, q8.h.f14164h, new q8.g(this));
                            this.K = ((f) o.m()).b(this, this.B);
                            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                            this.L = new e(false, inMemoryCache.getLeftDevice().getBattery());
                            this.M = new e(true, inMemoryCache.getRightDevice().getBattery());
                            TrackManager trackManager = TrackManager.INSTANCE;
                            e eVar = this.L;
                            if (eVar == null) {
                                h.C("leftBatteryInfoState");
                                throw null;
                            }
                            int percent = eVar.f14160i.getPercent();
                            e eVar2 = this.M;
                            if (eVar2 == null) {
                                h.C("rightBatteryInfoState");
                                throw null;
                            }
                            trackManager.batteryAccessed(percent, eVar2.f14160i.getPercent());
                            this.N = new d(p0());
                            BuildersKt__Builders_commonKt.launch$default(this.A, null, null, new i(this, null), 3, null);
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final c p0() {
        c cVar = this.I;
        if (cVar != null) {
            return cVar;
        }
        h.C("binding");
        throw null;
    }

    public final void q0(Shoe shoe, Battery battery) {
        if (shoe == Shoe.LEFT) {
            this.L = new e(false, battery);
            InMemoryCache.INSTANCE.getLeftDevice().setBattery(battery);
        } else {
            this.M = new e(true, battery);
            InMemoryCache.INSTANCE.getRightDevice().setBattery(battery);
        }
    }
}
