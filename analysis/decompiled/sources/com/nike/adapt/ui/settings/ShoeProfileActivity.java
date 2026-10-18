package com.nike.adapt.ui.settings;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetFirmwareVersionResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.network.assets.model.Colorway;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import ea.m;
import fe.k;
import g7.b;
import h8.c;
import java.util.List;
import m9.h0;
import m9.m0;
import o7.f;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import q7.e2;
import q7.f0;
import s9.p;
import t9.d;
import u8.g;
import u8.q;
import x8.n;

/* JADX INFO: compiled from: ShoeProfileActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShoeProfileActivity extends p8.a implements View.OnClickListener, TextView.OnEditorActionListener, TextWatcher {
    public static final /* synthetic */ int V = 0;
    public IDeviceController I;
    public IAdaptRequester J;
    public f0 K;
    public m L;
    public n M;
    public n N;
    public n O;
    public String P = "";
    public d Q;
    public d R;
    public final List<g> S;
    public final c T;
    public boolean U;

    /* JADX INFO: compiled from: ShoeProfileActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5867a;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            f5867a = iArr;
            int[] iArr2 = new int[d.values().length];
            iArr2[0] = 1;
            iArr2[1] = 2;
            iArr2[2] = 3;
        }
    }

    public ShoeProfileActivity() {
        d dVar = d.DISCONNECTED;
        this.Q = dVar;
        this.R = dVar;
        this.S = o.e(new q(this, null, 0L, 30), new u8.c(R.id.activity_shoe_profile_frame_layout, this));
        this.T = c.f8298b;
        this.U = s9.g.f15195a.f();
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.S;
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        m mVar = intent != null ? (m) intent.getParcelableExtra("PARAM_MODE_UPDATED") : null;
        if (mVar != null) {
            this.L = mVar;
            p0(mVar.f6670n);
        }
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        d dVar = d.CONNECTED;
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) {
            if (adaptConnectionStatusResult.getDevice() == null) {
                return;
            }
            IDeviceController iDeviceController = this.I;
            if (iDeviceController == null) {
                h.C("deviceController");
                throw null;
            }
            iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
            IDeviceController iDeviceController2 = this.I;
            if (iDeviceController2 == null) {
                h.C("deviceController");
                throw null;
            }
            iDeviceController2.requestTo(Shoe.BOTH, p8.k.f13336a);
            this.P = adaptConnectionStatusResult.getDevice().f6665i;
            m device = adaptConnectionStatusResult.getDevice();
            this.L = device;
            if (device != null) {
                String str = device.f6665i;
                this.P = str;
                f0 f0Var = this.K;
                if (f0Var == null) {
                    h.C("binding");
                    throw null;
                }
                f0Var.f13805l.setText(str);
                f0 f0Var2 = this.K;
                if (f0Var2 == null) {
                    h.C("binding");
                    throw null;
                }
                f0Var2.f13805l.setHint(this.P);
                p0(device.f6670n);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(p.f15222a.h(device.f6670n));
                }
            }
            int i10 = a.f5867a[adaptConnectionStatusResult.getShoe().ordinal()];
            if (i10 == 1) {
                this.Q = dVar;
            } else if (i10 == 2) {
                this.R = dVar;
            } else if (i10 == 3) {
                this.Q = dVar;
                this.R = dVar;
            }
        }
        int iOrdinal = g7.c.i(this.Q, this.R).ordinal();
        if (iOrdinal == 0) {
            f0 f0Var3 = this.K;
            if (f0Var3 == null) {
                h.C("binding");
                throw null;
            }
            f0Var3.f13799f.setText(R.string.adapt_myshoes_connection_status_connected);
            f0 f0Var4 = this.K;
            if (f0Var4 == null) {
                h.C("binding");
                throw null;
            }
            TextView textView = f0Var4.f13799f;
            Object obj = y.a.f18143a;
            textView.setTextColor(y.a.c.a(this, R.color.light_green));
            return;
        }
        if (iOrdinal == 1) {
            f0 f0Var5 = this.K;
            if (f0Var5 == null) {
                h.C("binding");
                throw null;
            }
            f0Var5.f13799f.setText(R.string.adapt_myshoes_connection_status_connecting);
            f0 f0Var6 = this.K;
            if (f0Var6 == null) {
                h.C("binding");
                throw null;
            }
            TextView textView2 = f0Var6.f13799f;
            Object obj2 = y.a.f18143a;
            textView2.setTextColor(y.a.c.a(this, R.color.grey));
            return;
        }
        if (iOrdinal != 2) {
            return;
        }
        f0 f0Var7 = this.K;
        if (f0Var7 == null) {
            h.C("binding");
            throw null;
        }
        f0Var7.f13799f.setText(R.string.adapt_myshoes_connection_status_notconnected);
        f0 f0Var8 = this.K;
        if (f0Var8 == null) {
            h.C("binding");
            throw null;
        }
        TextView textView3 = f0Var8.f13799f;
        Object obj3 = y.a.f18143a;
        textView3.setTextColor(y.a.c.a(this, R.color.grey));
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (!AdaptEventResponderKt.block(deviceControllerResult, this.B) && (deviceControllerResult instanceof GetFirmwareVersionResult)) {
            n nVar = this.N;
            if (nVar != null) {
                n.a(nVar, n.a.FirmwareUpdate);
            }
            this.U = s9.g.f15195a.f();
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        TrackManager.INSTANCE.multipairShoePreferenceBackSelected();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:41:0x010f  */
    /* JADX WARN: Code duplicated, block: B:45:0x011e  */
    /* JADX WARN: Code duplicated, block: B:51:0x0133  */
    /* JADX WARN: Code duplicated, block: B:54:0x0141  */
    /* JADX WARN: Code duplicated, block: B:56:0x014c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0160  */
    /* JADX WARN: Code duplicated, block: B:59:0x0164  */
    /* JADX WARN: Code duplicated, block: B:61:0x0168  */
    /* JADX WARN: Code duplicated, block: B:63:0x0171  */
    /* JADX WARN: Code duplicated, block: B:64:0x0180  */
    /* JADX WARN: Code duplicated, block: B:84:0x012e A[SYNTHETIC] */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v11 java.lang.Object, still in use, count: 2, list:
          (r5v11 java.lang.Object) from 0x00f5: PHI (r5 I:??) = (r5v5 java.lang.Object), (r5v11 java.lang.Object) binds: [B:33:0x00f4, B:82:0x00f5] A[DONT_GENERATE, DONT_INLINE]
          (r5v11 java.lang.Object) from 0x00e9: CHECK_CAST (v7.k) (r5v11 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View r17) {
        /*
            Method dump skipped, instruction units count: 532
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nike.adapt.ui.settings.ShoeProfileActivity.onClick(android.view.View):void");
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_shoe_profile, (ViewGroup) null, false);
        int i10 = R.id.activity_shoe_profile_auto_lace;
        Button button = (Button) b.d(viewInflate, R.id.activity_shoe_profile_auto_lace);
        if (button != null) {
            i10 = R.id.activity_shoe_profile_calibrate_fit;
            Button button2 = (Button) b.d(viewInflate, R.id.activity_shoe_profile_calibrate_fit);
            if (button2 != null) {
                i10 = R.id.activity_shoe_profile_color;
                if (((Button) b.d(viewInflate, R.id.activity_shoe_profile_color)) != null) {
                    i10 = R.id.activity_shoe_profile_color_selectable;
                    View viewD = b.d(viewInflate, R.id.activity_shoe_profile_color_selectable);
                    if (viewD != null) {
                        i10 = R.id.activity_shoe_profile_color_value;
                        TextView textView = (TextView) b.d(viewInflate, R.id.activity_shoe_profile_color_value);
                        if (textView != null) {
                            i10 = R.id.activity_shoe_profile_connection_status;
                            TextView textView2 = (TextView) b.d(viewInflate, R.id.activity_shoe_profile_connection_status);
                            if (textView2 != null) {
                                i10 = R.id.activity_shoe_profile_constraint_layout;
                                if (((ConstraintLayout) b.d(viewInflate, R.id.activity_shoe_profile_constraint_layout)) != null) {
                                    i10 = R.id.activity_shoe_profile_divider_2;
                                    if (b.d(viewInflate, R.id.activity_shoe_profile_divider_2) != null) {
                                        i10 = R.id.activity_shoe_profile_divider_3;
                                        if (b.d(viewInflate, R.id.activity_shoe_profile_divider_3) != null) {
                                            i10 = R.id.activity_shoe_profile_divider_4;
                                            if (b.d(viewInflate, R.id.activity_shoe_profile_divider_4) != null) {
                                                i10 = R.id.activity_shoe_profile_divider_5;
                                                if (b.d(viewInflate, R.id.activity_shoe_profile_divider_5) != null) {
                                                    i10 = R.id.activity_shoe_profile_divider_6;
                                                    if (b.d(viewInflate, R.id.activity_shoe_profile_divider_6) != null) {
                                                        i10 = R.id.activity_shoe_profile_divider_7;
                                                        if (b.d(viewInflate, R.id.activity_shoe_profile_divider_7) != null) {
                                                            i10 = R.id.activity_shoe_profile_divider_gesture;
                                                            View viewD2 = b.d(viewInflate, R.id.activity_shoe_profile_divider_gesture);
                                                            if (viewD2 != null) {
                                                                i10 = R.id.activity_shoe_profile_firmware;
                                                                Button button3 = (Button) b.d(viewInflate, R.id.activity_shoe_profile_firmware);
                                                                if (button3 != null) {
                                                                    i10 = R.id.activity_shoe_profile_frame_layout;
                                                                    if (((FrameLayout) b.d(viewInflate, R.id.activity_shoe_profile_frame_layout)) != null) {
                                                                        i10 = R.id.activity_shoe_profile_gesture;
                                                                        Button button4 = (Button) b.d(viewInflate, R.id.activity_shoe_profile_gesture);
                                                                        if (button4 != null) {
                                                                            i10 = R.id.activity_shoe_profile_image;
                                                                            ImageView imageView = (ImageView) b.d(viewInflate, R.id.activity_shoe_profile_image);
                                                                            if (imageView != null) {
                                                                                i10 = R.id.activity_shoe_profile_model_information;
                                                                                Button button5 = (Button) b.d(viewInflate, R.id.activity_shoe_profile_model_information);
                                                                                if (button5 != null) {
                                                                                    i10 = R.id.activity_shoe_profile_nickname;
                                                                                    if (((TextView) b.d(viewInflate, R.id.activity_shoe_profile_nickname)) != null) {
                                                                                        i10 = R.id.activity_shoe_profile_nickname_value;
                                                                                        EditText editText = (EditText) b.d(viewInflate, R.id.activity_shoe_profile_nickname_value);
                                                                                        if (editText != null) {
                                                                                            i10 = R.id.activity_shoe_profile_notification_toast;
                                                                                            NotificationToast notificationToast = (NotificationToast) b.d(viewInflate, R.id.activity_shoe_profile_notification_toast);
                                                                                            if (notificationToast != null) {
                                                                                                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
                                                                                                i10 = R.id.activity_shoe_profile_remove_button;
                                                                                                Button button6 = (Button) b.d(viewInflate, R.id.activity_shoe_profile_remove_button);
                                                                                                if (button6 != null) {
                                                                                                    i10 = R.id.activity_shoe_profile_scroll_view;
                                                                                                    if (((NestedScrollView) b.d(viewInflate, R.id.activity_shoe_profile_scroll_view)) != null) {
                                                                                                        i10 = R.id.activity_shoe_profile_shaded_background;
                                                                                                        View viewD3 = b.d(viewInflate, R.id.activity_shoe_profile_shaded_background);
                                                                                                        if (viewD3 != null) {
                                                                                                            i10 = R.id.data_opt_in_setting_divider;
                                                                                                            if (b.d(viewInflate, R.id.data_opt_in_setting_divider) != null) {
                                                                                                                i10 = R.id.gestures_shoe_profile_bottom_sheet;
                                                                                                                BottomSheet bottomSheet = (BottomSheet) b.d(viewInflate, R.id.gestures_shoe_profile_bottom_sheet);
                                                                                                                if (bottomSheet != null) {
                                                                                                                    i10 = R.id.shoe_profile_auto_lace_badge;
                                                                                                                    TextView textView3 = (TextView) b.d(viewInflate, R.id.shoe_profile_auto_lace_badge);
                                                                                                                    if (textView3 != null) {
                                                                                                                        i10 = R.id.shoe_profile_firmware_badge;
                                                                                                                        TextView textView4 = (TextView) b.d(viewInflate, R.id.shoe_profile_firmware_badge);
                                                                                                                        if (textView4 != null) {
                                                                                                                            i10 = R.id.shoe_profile_gestures_badge;
                                                                                                                            TextView textView5 = (TextView) b.d(viewInflate, R.id.shoe_profile_gestures_badge);
                                                                                                                            if (textView5 != null) {
                                                                                                                                i10 = R.id.view_toolbar;
                                                                                                                                View viewD4 = b.d(viewInflate, R.id.view_toolbar);
                                                                                                                                if (viewD4 != null) {
                                                                                                                                    e2.a(viewD4);
                                                                                                                                    this.K = new f0(coordinatorLayout, button, button2, viewD, textView, textView2, viewD2, button3, button4, imageView, button5, editText, notificationToast, button6, viewD3, bottomSheet, textView3, textView4, textView5);
                                                                                                                                    View viewInflate2 = getLayoutInflater().inflate(R.layout.bottom_sheet_layout, (ViewGroup) null, false);
                                                                                                                                    int i11 = R.id.bottom_sheet_button;
                                                                                                                                    if (((Button) b.d(viewInflate2, R.id.bottom_sheet_button)) != null) {
                                                                                                                                        i11 = R.id.bottom_sheet_description;
                                                                                                                                        if (((TextView) b.d(viewInflate2, R.id.bottom_sheet_description)) != null) {
                                                                                                                                            i11 = R.id.bottom_sheet_image;
                                                                                                                                            if (((ImageView) b.d(viewInflate2, R.id.bottom_sheet_image)) != null) {
                                                                                                                                                i11 = R.id.bottom_sheet_title;
                                                                                                                                                if (((TextView) b.d(viewInflate2, R.id.bottom_sheet_title)) != null) {
                                                                                                                                                    f0 f0Var = this.K;
                                                                                                                                                    if (f0Var == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    setContentView(f0Var.f13794a);
                                                                                                                                                    String strR = o.r(R.string.adapt_nike_bb_title);
                                                                                                                                                    View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                                                                                                                    h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                                                                                                                    k0((Toolbar) viewFindViewById);
                                                                                                                                                    f.a aVarI0 = i0();
                                                                                                                                                    if (aVarI0 != null) {
                                                                                                                                                        aVarI0.o(strR);
                                                                                                                                                        aVarI0.m(true);
                                                                                                                                                    }
                                                                                                                                                    this.J = ((f) o.m()).a(this, this.B, m0.f10890h, new h0(this));
                                                                                                                                                    this.I = ((f) o.m()).b(this, this.B);
                                                                                                                                                    f0 f0Var2 = this.K;
                                                                                                                                                    if (f0Var2 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    TextView textView6 = f0Var2.f13810q;
                                                                                                                                                    h.i(textView6, "binding.shoeProfileAutoLaceBadge");
                                                                                                                                                    this.M = new n(textView6);
                                                                                                                                                    f0 f0Var3 = this.K;
                                                                                                                                                    if (f0Var3 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    TextView textView7 = f0Var3.f13811r;
                                                                                                                                                    h.i(textView7, "binding.shoeProfileFirmwareBadge");
                                                                                                                                                    this.N = new n(textView7);
                                                                                                                                                    f0 f0Var4 = this.K;
                                                                                                                                                    if (f0Var4 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    TextView textView8 = f0Var4.f13812s;
                                                                                                                                                    h.i(textView8, "binding.shoeProfileGesturesBadge");
                                                                                                                                                    this.O = new n(textView8);
                                                                                                                                                    f0 f0Var5 = this.K;
                                                                                                                                                    if (f0Var5 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var5.f13805l.addTextChangedListener(this);
                                                                                                                                                    f0 f0Var6 = this.K;
                                                                                                                                                    if (f0Var6 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var6.f13805l.setOnEditorActionListener(this);
                                                                                                                                                    f0 f0Var7 = this.K;
                                                                                                                                                    if (f0Var7 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var7.f13805l.setOnClickListener(this);
                                                                                                                                                    f0 f0Var8 = this.K;
                                                                                                                                                    if (f0Var8 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var8.f13797d.setOnClickListener(this);
                                                                                                                                                    f0 f0Var9 = this.K;
                                                                                                                                                    if (f0Var9 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var9.f13801h.setOnClickListener(this);
                                                                                                                                                    f0 f0Var10 = this.K;
                                                                                                                                                    if (f0Var10 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var10.f13804k.setOnClickListener(this);
                                                                                                                                                    f0 f0Var11 = this.K;
                                                                                                                                                    if (f0Var11 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var11.f13796c.setOnClickListener(this);
                                                                                                                                                    f0 f0Var12 = this.K;
                                                                                                                                                    if (f0Var12 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var12.f13807n.setOnClickListener(this);
                                                                                                                                                    f0 f0Var13 = this.K;
                                                                                                                                                    if (f0Var13 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var13.f13795b.setOnClickListener(this);
                                                                                                                                                    f0 f0Var14 = this.K;
                                                                                                                                                    if (f0Var14 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var14.f13802i.setOnClickListener(this);
                                                                                                                                                    f0 f0Var15 = this.K;
                                                                                                                                                    if (f0Var15 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var15.f13802i.setVisibility(0);
                                                                                                                                                    f0 f0Var16 = this.K;
                                                                                                                                                    if (f0Var16 == null) {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                    f0Var16.f13812s.setVisibility(0);
                                                                                                                                                    f0 f0Var17 = this.K;
                                                                                                                                                    if (f0Var17 != null) {
                                                                                                                                                        f0Var17.f13800g.setVisibility(0);
                                                                                                                                                        return;
                                                                                                                                                    } else {
                                                                                                                                                        h.C("binding");
                                                                                                                                                        throw null;
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    throw new NullPointerException("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i11)));
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

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
        if (i10 != 6) {
            return false;
        }
        q0();
        return false;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onPause() {
        q0();
        super.onPause();
    }

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        n nVar = this.M;
        if (nVar != null) {
            n.a(nVar, n.a.AutoLaceIntro);
        }
        n nVar2 = this.N;
        if (nVar2 != null) {
            n.a(nVar2, n.a.FirmwareUpdate);
        }
        n nVar3 = this.O;
        if (nVar3 != null) {
            n.a(nVar3, n.a.Gestures);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        this.P = String.valueOf(charSequence);
    }

    public final void p0(String str) {
        String strR;
        p pVar = p.f15222a;
        f0 f0Var = this.K;
        if (f0Var == null) {
            h.C("binding");
            throw null;
        }
        ImageView imageView = f0Var.f13803j;
        h.i(imageView, "binding.activityShoeProfileImage");
        boolean z10 = true;
        pVar.o(imageView, str, 1);
        f0 f0Var2 = this.K;
        if (f0Var2 == null) {
            h.C("binding");
            throw null;
        }
        TextView textView = f0Var2.f13798e;
        Colorway colorwayC = pVar.c(str);
        if (colorwayC == null || (strR = colorwayC.getColorName()) == null) {
            strR = o.r(R.string.adapt_myshoes_shoecolor_empty_value);
        }
        textView.setText(strR);
        if (str != null && str.length() != 0) {
            z10 = false;
        }
        if (z10) {
            return;
        }
        f0 f0Var3 = this.K;
        if (f0Var3 != null) {
            f0Var3.f13798e.setTextColor(o.o(R.color.black));
        } else {
            h.C("binding");
            throw null;
        }
    }

    public final void q0() {
        m mVar = this.L;
        if (mVar != null) {
            if (!(this.P.length() > 0) || h.c(this.P, mVar.f6665i)) {
                return;
            }
            m mVarA = m.a(mVar, this.P, false, null, null, null, null, null, 0L, false, 8189);
            IDeviceController iDeviceController = this.I;
            if (iDeviceController != null) {
                iDeviceController.updatePair(mVarA);
            } else {
                h.C("deviceController");
                throw null;
            }
        }
    }
}
