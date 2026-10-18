package com.nike.adapt.ui.modes;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetLacingPercentResult;
import com.nike.adapt.adk.GetLedResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.ServoMoveCompleteBroadcastResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.SnapshotListUpdated;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.modes.ModeAdditionActivity;
import fd.d;
import fe.k;
import j0.a0;
import java.util.List;
import o7.f;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.n;
import p8.x;
import q7.o;
import u8.g;
import u8.q;
import yd.s;

/* JADX INFO: compiled from: ModeAdditionActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ModeAdditionActivity extends p8.a implements View.OnClickListener, TextWatcher {
    public static final /* synthetic */ int P = 0;
    public o I;
    public IDeviceController J;
    public IAdaptRequester K;
    public d9.a L;
    public d9.a M;
    public final d N = androidx.lifecycle.o.w(3, b.f5802h);
    public final List<g> O = androidx.lifecycle.o.e(new q(this, new c(), 0, 28), new u8.c(R.id.mode_addition_container, this));

    /* JADX INFO: compiled from: ModeAdditionActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5801a;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            f5801a = iArr;
        }
    }

    /* JADX INFO: compiled from: ModeAdditionActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5802h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: ModeAdditionActivity.kt */
    public static final class c extends rd.o implements qd.a<fd.o> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            ModeAdditionActivity.this.onBackPressed();
            return fd.o.f7408a;
        }
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        h.j(editable, "s");
        CharSequence charSequenceH0 = s.H0(editable);
        o oVar = this.I;
        if (oVar == null) {
            h.C("binding");
            throw null;
        }
        oVar.f13943d.setEnabled(charSequenceH0.length() > 0);
        if (h.c(charSequenceH0.toString(), editable.toString())) {
            return;
        }
        o oVar2 = this.I;
        if (oVar2 != null) {
            oVar2.f13942c.setText(new SpannableStringBuilder(charSequenceH0));
        } else {
            h.C("binding");
            throw null;
        }
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.O;
    }

    @Override // p8.a
    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        IDeviceController iDeviceController2 = this.J;
        if (iDeviceController2 == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController2.requestTo(adaptConnectionStatusResult.getShoe(), n.f13339a);
        IDeviceController iDeviceController3 = this.J;
        if (iDeviceController3 != null) {
            iDeviceController3.requestTo(adaptConnectionStatusResult.getShoe(), x.f13349a);
        } else {
            h.C("deviceController");
            throw null;
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (deviceControllerResult instanceof GetLacingPercentResult) {
            GetLacingPercentResult getLacingPercentResult = (GetLacingPercentResult) deviceControllerResult;
            int i10 = a.f5801a[getLacingPercentResult.getShoe().ordinal()];
            if (i10 == 1) {
                d9.a aVar = this.M;
                if (aVar != null) {
                    this.M = d9.a.a(aVar, null, getLacingPercentResult.getRelativePercent(), 0, 11);
                    return;
                } else {
                    h.C("leftModeSnapshot");
                    throw null;
                }
            }
            if (i10 != 2) {
                return;
            }
            d9.a aVar2 = this.L;
            if (aVar2 != null) {
                this.L = d9.a.a(aVar2, null, getLacingPercentResult.getRelativePercent(), 0, 11);
                return;
            } else {
                h.C("rightModeSnapshot");
                throw null;
            }
        }
        if (deviceControllerResult instanceof ServoMoveCompleteBroadcastResult) {
            ServoMoveCompleteBroadcastResult servoMoveCompleteBroadcastResult = (ServoMoveCompleteBroadcastResult) deviceControllerResult;
            int i11 = a.f5801a[servoMoveCompleteBroadcastResult.getShoe().ordinal()];
            if (i11 == 1) {
                d9.a aVar3 = this.M;
                if (aVar3 != null) {
                    this.M = d9.a.a(aVar3, null, servoMoveCompleteBroadcastResult.getRelativePercent(), 0, 11);
                    return;
                } else {
                    h.C("leftModeSnapshot");
                    throw null;
                }
            }
            if (i11 != 2) {
                return;
            }
            d9.a aVar4 = this.L;
            if (aVar4 != null) {
                this.L = d9.a.a(aVar4, null, servoMoveCompleteBroadcastResult.getRelativePercent(), 0, 11);
                return;
            } else {
                h.C("rightModeSnapshot");
                throw null;
            }
        }
        if (deviceControllerResult instanceof GetLedResult) {
            GetLedResult getLedResult = (GetLedResult) deviceControllerResult;
            int i12 = a.f5801a[getLedResult.getShoe().ordinal()];
            if (i12 == 1) {
                d9.a aVar5 = this.M;
                if (aVar5 != null) {
                    this.M = d9.a.a(aVar5, AdaptMarshallerKt.getAdaptKitColorPreset(getLedResult.getShoeLed()), 0, 0, 13);
                    return;
                } else {
                    h.C("leftModeSnapshot");
                    throw null;
                }
            }
            if (i12 != 2) {
                return;
            }
            d9.a aVar6 = this.L;
            if (aVar6 != null) {
                this.L = d9.a.a(aVar6, AdaptMarshallerKt.getAdaptKitColorPreset(getLedResult.getShoeLed()), 0, 0, 13);
                return;
            } else {
                h.C("rightModeSnapshot");
                throw null;
            }
        }
        if (!(deviceControllerResult instanceof SnapshotListUpdated)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                p7.b bVar = p7.b.f13281a;
                o oVar = this.I;
                if (oVar == null) {
                    h.C("binding");
                    throw null;
                }
                FrameLayout frameLayout = oVar.f13940a;
                h.i(frameLayout, "binding.activityModeAdditionBackground");
                p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                return;
            }
            return;
        }
        TrackManager trackManager = TrackManager.INSTANCE;
        d9.a aVar7 = this.M;
        if (aVar7 == null) {
            h.C("leftModeSnapshot");
            throw null;
        }
        int i13 = aVar7.f6125j;
        d9.a aVar8 = this.L;
        if (aVar8 == null) {
            h.C("rightModeSnapshot");
            throw null;
        }
        int i14 = aVar8.f6125j;
        SnapshotListUpdated snapshotListUpdated = (SnapshotListUpdated) deviceControllerResult;
        int size = h.w(snapshotListUpdated.getDevice()).size();
        o oVar2 = this.I;
        if (oVar2 == null) {
            h.C("binding");
            throw null;
        }
        trackManager.isModeAdded(i13, i14, size, oVar2.f13942c.getText().toString());
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
        if (inputMethodManager != null) {
            o oVar3 = this.I;
            if (oVar3 == null) {
                h.C("binding");
                throw null;
            }
            inputMethodManager.hideSoftInputFromWindow(oVar3.f13942c.getWindowToken(), 0);
        }
        Intent intent = new Intent();
        intent.putExtra("PARAM_MODE_UPDATED", snapshotListUpdated.getDevice());
        setResult(-1, intent);
        onBackPressed();
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
        if (inputMethodManager != null) {
            o oVar = this.I;
            if (oVar == null) {
                h.C("binding");
                throw null;
            }
            inputMethodManager.hideSoftInputFromWindow(oVar.f13942c.getWindowToken(), 0);
        }
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.j(view, TracePayload.VERSION_KEY);
        switch (view.getId()) {
            case R.id.activity_mode_addition_cancel /* 2131361891 */:
                o7.x.f12420a.a("Pressed: Mode Addition Save");
                onBackPressed();
                return;
            case R.id.activity_mode_addition_save /* 2131361893 */:
                p0();
                return;
            case R.id.view_set_selection_end /* 2131362951 */:
                o oVar = this.I;
                if (oVar == null) {
                    h.C("binding");
                    throw null;
                }
                oVar.f13942c.requestFocus();
                o oVar2 = this.I;
                if (oVar2 == null) {
                    h.C("binding");
                    throw null;
                }
                EditText editText = oVar2.f13942c;
                editText.setSelection(editText.getText().length());
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    o oVar3 = this.I;
                    if (oVar3 != null) {
                        inputMethodManager.showSoftInput(oVar3.f13942c, 2);
                        return;
                    } else {
                        h.C("binding");
                        throw null;
                    }
                }
                return;
            case R.id.view_set_selection_start /* 2131362952 */:
                o oVar4 = this.I;
                if (oVar4 == null) {
                    h.C("binding");
                    throw null;
                }
                oVar4.f13942c.requestFocus();
                o oVar5 = this.I;
                if (oVar5 == null) {
                    h.C("binding");
                    throw null;
                }
                oVar5.f13942c.setSelection(0);
                InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService(InputMethodManager.class);
                if (inputMethodManager2 != null) {
                    o oVar6 = this.I;
                    if (oVar6 != null) {
                        inputMethodManager2.showSoftInput(oVar6.f13942c, 2);
                        return;
                    } else {
                        h.C("binding");
                        throw null;
                    }
                }
                return;
            default:
                return;
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_mode_addition, (ViewGroup) null, false);
        int i10 = R.id.activity_mode_addition_background;
        FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.activity_mode_addition_background);
        if (frameLayout != null) {
            i10 = R.id.activity_mode_addition_cancel;
            TextView textView = (TextView) g7.b.d(viewInflate, R.id.activity_mode_addition_cancel);
            if (textView != null) {
                i10 = R.id.activity_mode_addition_edit_text;
                EditText editText = (EditText) g7.b.d(viewInflate, R.id.activity_mode_addition_edit_text);
                if (editText != null) {
                    i10 = R.id.activity_mode_addition_save;
                    TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.activity_mode_addition_save);
                    if (textView2 != null) {
                        i10 = R.id.activity_mode_rename_add_container;
                        if (((ConstraintLayout) g7.b.d(viewInflate, R.id.activity_mode_rename_add_container)) != null) {
                            i10 = R.id.messaging_headline_message_1;
                            if (((TextView) g7.b.d(viewInflate, R.id.messaging_headline_message_1)) != null) {
                                i10 = R.id.messaging_headline_title;
                                TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.messaging_headline_title);
                                if (textView3 != null) {
                                    ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                    int i11 = R.id.view_set_selection_end;
                                    View viewD = g7.b.d(viewInflate, R.id.view_set_selection_end);
                                    if (viewD != null) {
                                        i11 = R.id.view_set_selection_start;
                                        View viewD2 = g7.b.d(viewInflate, R.id.view_set_selection_start);
                                        if (viewD2 != null) {
                                            this.I = new o(constraintLayout, frameLayout, textView, editText, textView2, textView3, viewD, viewD2);
                                            setContentView(constraintLayout);
                                            p7.b bVar = p7.b.f13281a;
                                            o oVar = this.I;
                                            if (oVar == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            FrameLayout frameLayout2 = oVar.f13940a;
                                            h.i(frameLayout2, "binding.activityModeAdditionBackground");
                                            p7.b.f13281a.e(frameLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                                            this.K = ((f) androidx.lifecycle.o.m()).a(this, this.B, c9.d.f4258h, new c9.c(this));
                                            this.J = ((f) androidx.lifecycle.o.m()).b(this, this.B);
                                            AdaptShoeColor adaptShoeColorS = ((h8.a) this.N.getValue()).S();
                                            this.L = new d9.a(Shoe.RIGHT, AdaptMarshallerKt.getAdaptKitColorPreset(adaptShoeColorS.getLeftAdaptPreset()));
                                            this.M = new d9.a(Shoe.LEFT, AdaptMarshallerKt.getAdaptKitColorPreset(adaptShoeColorS.getRightAdaptPreset()));
                                            o oVar2 = this.I;
                                            if (oVar2 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            final EditText editText2 = oVar2.f13942c;
                                            editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: c9.a
                                                @Override // android.view.View.OnFocusChangeListener
                                                public final void onFocusChange(View view, boolean z10) {
                                                    ModeAdditionActivity modeAdditionActivity = this.f4254a;
                                                    EditText editText3 = editText2;
                                                    int i12 = ModeAdditionActivity.P;
                                                    p4.h.j(modeAdditionActivity, "this$0");
                                                    p4.h.j(editText3, "$this_apply");
                                                    if (z10) {
                                                        InputMethodManager inputMethodManager = (InputMethodManager) modeAdditionActivity.getSystemService(InputMethodManager.class);
                                                        if (inputMethodManager != null) {
                                                            inputMethodManager.toggleSoftInput(2, 0);
                                                            return;
                                                        }
                                                        return;
                                                    }
                                                    InputMethodManager inputMethodManager2 = (InputMethodManager) modeAdditionActivity.getSystemService(InputMethodManager.class);
                                                    if (inputMethodManager2 != null) {
                                                        inputMethodManager2.hideSoftInputFromWindow(editText3.getWindowToken(), 0);
                                                    }
                                                }
                                            });
                                            o oVar3 = this.I;
                                            if (oVar3 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar3.f13942c.requestFocus();
                                            editText2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: c9.b
                                                @Override // android.widget.TextView.OnEditorActionListener
                                                public final boolean onEditorAction(TextView textView4, int i12, KeyEvent keyEvent) {
                                                    ModeAdditionActivity modeAdditionActivity = this.f4256h;
                                                    int i13 = ModeAdditionActivity.P;
                                                    p4.h.j(modeAdditionActivity, "this$0");
                                                    if (i12 != 6) {
                                                        return true;
                                                    }
                                                    modeAdditionActivity.p0();
                                                    return true;
                                                }
                                            });
                                            o oVar4 = this.I;
                                            if (oVar4 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar4.f13942c.addTextChangedListener(this);
                                            o oVar5 = this.I;
                                            if (oVar5 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar5.f13943d.setOnClickListener(this);
                                            o oVar6 = this.I;
                                            if (oVar6 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar6.f13941b.setOnClickListener(this);
                                            o oVar7 = this.I;
                                            if (oVar7 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar7.f13946g.setOnClickListener(this);
                                            o oVar8 = this.I;
                                            if (oVar8 == null) {
                                                h.C("binding");
                                                throw null;
                                            }
                                            oVar8.f13945f.setOnClickListener(this);
                                            o oVar9 = this.I;
                                            if (oVar9 != null) {
                                                a0.q(oVar9.f13944e, true);
                                                return;
                                            } else {
                                                h.C("binding");
                                                throw null;
                                            }
                                        }
                                    }
                                    i10 = i11;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        boolean z10;
        o oVar = this.I;
        if (oVar == null) {
            h.C("binding");
            throw null;
        }
        EditText editText = oVar.f13942c;
        if (charSequence != null) {
            z10 = charSequence.length() > 0;
        }
        editText.setGravity(z10 ? 17 : 8388627);
    }

    public final void p0() {
        o7.x.f12420a.a("Pressed: Mode Addition Cancel");
        o oVar = this.I;
        if (oVar == null) {
            h.C("binding");
            throw null;
        }
        Editable text = oVar.f13942c.getText();
        if (text == null || text.length() == 0) {
            onBackPressed();
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        o oVar2 = this.I;
        if (oVar2 == null) {
            h.C("binding");
            throw null;
        }
        String string = oVar2.f13942c.getText().toString();
        d9.a aVar = this.M;
        if (aVar == null) {
            h.C("leftModeSnapshot");
            throw null;
        }
        d9.a aVar2 = this.L;
        if (aVar2 != null) {
            iDeviceController.requestModeTo(new p8.d(string, aVar, aVar2));
        } else {
            h.C("rightModeSnapshot");
            throw null;
        }
    }
}
