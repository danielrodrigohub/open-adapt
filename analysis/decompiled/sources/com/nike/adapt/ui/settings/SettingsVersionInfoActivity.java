package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.Barrier;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetSerialNumberResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import ea.m;
import fe.k;
import g7.b;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import m9.d0;
import m9.e0;
import o7.f;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import q7.b0;
import q7.e2;
import s9.e;
import s9.p;
import s9.r;
import u8.c;
import u8.g;
import u8.q;
import v7.n;

/* JADX INFO: compiled from: SettingsVersionInfoActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SettingsVersionInfoActivity extends p8.a {
    public m I;
    public IDeviceController J;
    public IAdaptRequester K;
    public b0 L;
    public n M;
    public final List<g> N = (ArrayList) o.C(new q(this, new a(), 0, 28), new c(R.id.activity_settings_version_info_container, this));

    /* JADX INFO: compiled from: SettingsVersionInfoActivity.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            SettingsVersionInfoActivity.this.onBackPressed();
            return fd.o.f7408a;
        }
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.N;
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B) || !(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        this.I = adaptConnectionStatusResult.getDevice();
        IDeviceController iDeviceController2 = this.J;
        if (iDeviceController2 != null) {
            iDeviceController2.requestTo(Shoe.BOTH, p8.b0.f13313a);
        } else {
            h.C("deviceController");
            throw null;
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        TextView textView;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetSerialNumberResult) {
            GetSerialNumberResult getSerialNumberResult = (GetSerialNumberResult) deviceControllerResult;
            boolean z10 = getSerialNumberResult.getShoe() == Shoe.LEFT;
            String serialNumber = getSerialNumberResult.getSerialNumber();
            if (p0() == n.MODEL_INFO) {
                b0 b0Var = this.L;
                if (z10) {
                    if (b0Var == null) {
                        h.C("binding");
                        throw null;
                    }
                    textView = b0Var.f13721e;
                } else {
                    if (b0Var == null) {
                        h.C("binding");
                        throw null;
                    }
                    textView = b0Var.f13722f;
                }
                h.i(textView, "if (isLeft) binding.acti…ttingsVersionInfoSubtext2");
                textView.setText(e.b(getString(z10 ? R.string.adapt_model_info_left_engine_label : R.string.adapt_model_info_right_engine_label), new Pair("number", serialNumber)));
                if (z10) {
                    InMemoryCache.INSTANCE.getLeftDevice().setSerialNumber(serialNumber);
                } else {
                    InMemoryCache.INSTANCE.getRightDevice().setSerialNumber(serialNumber);
                }
            }
        }
        p pVar = p.f15222a;
        b0 b0Var2 = this.L;
        if (b0Var2 == null) {
            h.C("binding");
            throw null;
        }
        ImageView imageView = b0Var2.f13717a;
        h.i(imageView, "binding.activitySettingVersionModelIcon");
        m mVar = this.I;
        pVar.o(imageView, mVar != null ? mVar.f6670n : null, 1);
        int iOrdinal = p0().ordinal();
        if (iOrdinal == 1) {
            b0 b0Var3 = this.L;
            if (b0Var3 == null) {
                h.C("binding");
                throw null;
            }
            TextView textView2 = b0Var3.f13718b;
            m mVar2 = this.I;
            textView2.setText(pVar.h(mVar2 != null ? mVar2.f6670n : null));
            b0 b0Var4 = this.L;
            if (b0Var4 == null) {
                h.C("binding");
                throw null;
            }
            TextView textView3 = b0Var4.f13718b;
            m mVar3 = this.I;
            textView3.setContentDescription(pVar.g(mVar3 != null ? mVar3.f6670n : null));
            return;
        }
        if (iOrdinal != 2) {
            return;
        }
        m mVar4 = this.I;
        r rVarK = pVar.k(mVar4 != null ? mVar4.f6670n : null);
        if (rVarK == null) {
            rVarK = r.ADAPT_BB;
        }
        int iE = pVar.e(rVarK, true);
        int iE2 = pVar.e(rVarK, false);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        String version = inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion();
        String version2 = inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion();
        String strB = e.b(getString(iE), new Pair("number", version));
        String strB2 = e.b(getString(iE2), new Pair("number", version2));
        b0 b0Var5 = this.L;
        if (b0Var5 == null) {
            h.C("binding");
            throw null;
        }
        b0Var5.f13721e.setText(strB);
        b0 b0Var6 = this.L;
        if (b0Var6 != null) {
            b0Var6.f13722f.setText(strB2);
        } else {
            h.C("binding");
            throw null;
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        if (p0() == n.MODEL_INFO) {
            TrackManager.INSTANCE.multipairModelInformationBackSelected();
        } else if (p0() == n.FIRMWARE_VERSION) {
            TrackManager.INSTANCE.multipairFirmwareVersionBackSelected();
        }
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        n nVar;
        n nVar2 = n.ABOUT_THIS_VERSION;
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_version_info, (ViewGroup) null, false);
        int i10 = R.id.activity_setting_version_model_icon;
        ImageView imageView = (ImageView) b.d(viewInflate, R.id.activity_setting_version_model_icon);
        if (imageView != null) {
            i10 = R.id.activity_settings_version_info_bold_title;
            TextView textView = (TextView) b.d(viewInflate, R.id.activity_settings_version_info_bold_title);
            if (textView != null) {
                i10 = R.id.activity_settings_version_info_container;
                if (((FrameLayout) b.d(viewInflate, R.id.activity_settings_version_info_container)) != null) {
                    i10 = R.id.activity_settings_version_info_copyright_label_1;
                    TextView textView2 = (TextView) b.d(viewInflate, R.id.activity_settings_version_info_copyright_label_1);
                    if (textView2 != null) {
                        i10 = R.id.activity_settings_version_info_icon;
                        ImageView imageView2 = (ImageView) b.d(viewInflate, R.id.activity_settings_version_info_icon);
                        if (imageView2 != null) {
                            i10 = R.id.activity_settings_version_info_subtext_1;
                            TextView textView3 = (TextView) b.d(viewInflate, R.id.activity_settings_version_info_subtext_1);
                            if (textView3 != null) {
                                i10 = R.id.activity_settings_version_info_subtext_2;
                                TextView textView4 = (TextView) b.d(viewInflate, R.id.activity_settings_version_info_subtext_2);
                                if (textView4 != null) {
                                    i10 = R.id.image_constraint;
                                    if (((Barrier) b.d(viewInflate, R.id.image_constraint)) != null) {
                                        i10 = R.id.vactivity_settings_version_info_copyright_label_2;
                                        if (((TextView) b.d(viewInflate, R.id.vactivity_settings_version_info_copyright_label_2)) != null) {
                                            i10 = R.id.view_toolbar;
                                            View viewD = b.d(viewInflate, R.id.view_toolbar);
                                            if (viewD != null) {
                                                e2.a(viewD);
                                                LinearLayout linearLayout = (LinearLayout) viewInflate;
                                                this.L = new b0(linearLayout, imageView, textView, textView2, imageView2, textView3, textView4);
                                                setContentView(linearLayout);
                                                this.K = ((f) o.m()).a(this, this.B, e0.f10863h, new d0(this));
                                                this.J = ((f) o.m()).b(this, this.B);
                                                if (bundle == null) {
                                                    nVar = (n) getIntent().getParcelableExtra("version_info_type");
                                                    if (nVar == null) {
                                                        nVar = nVar2;
                                                    }
                                                } else {
                                                    Parcelable parcelable = bundle.getParcelable("version_info_type");
                                                    h.h(parcelable, "null cannot be cast to non-null type com.nike.adapt.model.SettingsNavigation.VersionInfo");
                                                    nVar = (n) parcelable;
                                                }
                                                this.M = nVar;
                                                if (p0() == nVar2) {
                                                    this.N.clear();
                                                }
                                                String strB = e.b(getString(R.string.adapt_version_number_title), new Pair("number", "1.29.3"));
                                                String strB2 = e.b(getString(R.string.adapt_copyright_label), new Pair("year", String.valueOf(Calendar.getInstance().get(1))));
                                                String strB3 = e.b(getString(R.string.adapt_build_number_label), new Pair("number", "2017062198"));
                                                int iOrdinal = p0().ordinal();
                                                if (iOrdinal == 0) {
                                                    b0 b0Var = this.L;
                                                    if (b0Var == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var.f13717a.setVisibility(8);
                                                    b0 b0Var2 = this.L;
                                                    if (b0Var2 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var2.f13720d.setVisibility(0);
                                                    b0 b0Var3 = this.L;
                                                    if (b0Var3 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var3.f13718b.setText(strB);
                                                    b0 b0Var4 = this.L;
                                                    if (b0Var4 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var4.f13721e.setText(strB3);
                                                    b0 b0Var5 = this.L;
                                                    if (b0Var5 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var5.f13722f.setVisibility(8);
                                                    b0 b0Var6 = this.L;
                                                    if (b0Var6 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var6.f13719c.setText(strB2);
                                                } else if (iOrdinal == 1) {
                                                    b0 b0Var7 = this.L;
                                                    if (b0Var7 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var7.f13717a.setVisibility(0);
                                                    b0 b0Var8 = this.L;
                                                    if (b0Var8 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var8.f13720d.setVisibility(8);
                                                    b0 b0Var9 = this.L;
                                                    if (b0Var9 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var9.f13719c.setText(strB2);
                                                } else if (iOrdinal == 2) {
                                                    b0 b0Var10 = this.L;
                                                    if (b0Var10 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var10.f13720d.setVisibility(8);
                                                    b0 b0Var11 = this.L;
                                                    if (b0Var11 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var11.f13717a.setVisibility(8);
                                                    b0 b0Var12 = this.L;
                                                    if (b0Var12 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var12.f13718b.setVisibility(8);
                                                    b0 b0Var13 = this.L;
                                                    if (b0Var13 == null) {
                                                        h.C("binding");
                                                        throw null;
                                                    }
                                                    b0Var13.f13719c.setText(strB2);
                                                }
                                                CharSequence charSequenceR = o.r(p0().f16439h);
                                                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                k0((Toolbar) viewFindViewById);
                                                f.a aVarI0 = i0();
                                                if (aVarI0 != null) {
                                                    aVarI0.o(charSequenceR);
                                                    aVarI0.m(true);
                                                    return;
                                                }
                                                return;
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

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("version_info_type", p0());
    }

    public final n p0() {
        n nVar = this.M;
        if (nVar != null) {
            return nVar;
        }
        h.C("state");
        throw null;
    }
}
