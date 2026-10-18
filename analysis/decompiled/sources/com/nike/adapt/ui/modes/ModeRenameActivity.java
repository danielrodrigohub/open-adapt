package com.nike.adapt.ui.modes;

import a1.d;
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
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import c9.i;
import c9.j;
import com.newrelic.agent.android.distributedtracing.TracePayload;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.modes.ModeRenameActivity;
import ea.e;
import ea.m;
import fe.k;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o7.f;
import o7.x;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import q7.p;
import u8.c;
import u8.g;
import u8.q;
import yd.s;

/* JADX INFO: compiled from: ModeRenameActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ModeRenameActivity extends p8.a implements View.OnClickListener {
    public static final /* synthetic */ int P = 0;
    public p I;
    public IDeviceController J;
    public IAdaptRequester K;
    public String L;
    public String M;
    public m N;
    public final List<g> O = o.e(new q(this, new a(), 0, 28), new c(R.id.activity_mode_rename_background, this));

    /* JADX INFO: compiled from: ModeRenameActivity.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            ModeRenameActivity.this.onBackPressed();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: ModeRenameActivity.kt */
    public static final class b implements TextWatcher {
        public b() {
        }

        @Override // android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            h.j(editable, "s");
            CharSequence charSequenceH0 = s.H0(editable);
            p pVar = ModeRenameActivity.this.I;
            if (pVar == null) {
                h.C("binding");
                throw null;
            }
            pVar.f13964d.setEnabled(charSequenceH0.length() > 0);
            if (h.c(charSequenceH0.toString(), editable.toString())) {
                return;
            }
            p pVar2 = ModeRenameActivity.this.I;
            if (pVar2 != null) {
                pVar2.f13963c.setText(new SpannableStringBuilder(charSequenceH0));
            } else {
                h.C("binding");
                throw null;
            }
        }

        @Override // android.text.TextWatcher
        public final void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0018  */
        @Override // android.text.TextWatcher
        public final void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            int i13;
            p pVar = ModeRenameActivity.this.I;
            if (pVar == null) {
                h.C("binding");
                throw null;
            }
            EditText editText = pVar.f13963c;
            if (charSequence == null) {
                i13 = 8388627;
            } else {
                if (charSequence.length() > 0) {
                    i13 = 17;
                } else {
                    i13 = 8388627;
                }
            }
            editText.setGravity(i13);
        }
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
        this.N = adaptConnectionStatusResult.getDevice();
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (!AdaptEventResponderKt.block(deviceControllerResult, this.B) && (deviceControllerResult instanceof StopAnimationNotificationResult)) {
            p7.b bVar = p7.b.f13281a;
            p pVar = this.I;
            if (pVar == null) {
                h.C("binding");
                throw null;
            }
            ConstraintLayout constraintLayout = pVar.f13961a;
            h.i(constraintLayout, "binding.activityModeRenameBackground");
            p7.b.f13281a.e(constraintLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        h.j(view, TracePayload.VERSION_KEY);
        switch (view.getId()) {
            case R.id.activity_mode_rename_cancel /* 2131361897 */:
                d.d("Pressed: ", "Mode Rename Cancel", x.f12420a);
                p0(0, null);
                return;
            case R.id.activity_mode_rename_save /* 2131361900 */:
                q0();
                return;
            case R.id.view_set_selection_end /* 2131362951 */:
                p pVar = this.I;
                if (pVar == null) {
                    h.C("binding");
                    throw null;
                }
                pVar.f13963c.requestFocus();
                p pVar2 = this.I;
                if (pVar2 == null) {
                    h.C("binding");
                    throw null;
                }
                EditText editText = pVar2.f13963c;
                editText.setSelection(editText.getText().length());
                InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    p pVar3 = this.I;
                    if (pVar3 != null) {
                        inputMethodManager.showSoftInput(pVar3.f13963c, 2);
                        return;
                    } else {
                        h.C("binding");
                        throw null;
                    }
                }
                return;
            case R.id.view_set_selection_start /* 2131362952 */:
                p pVar4 = this.I;
                if (pVar4 == null) {
                    h.C("binding");
                    throw null;
                }
                pVar4.f13963c.requestFocus();
                p pVar5 = this.I;
                if (pVar5 == null) {
                    h.C("binding");
                    throw null;
                }
                pVar5.f13963c.setSelection(0);
                InputMethodManager inputMethodManager2 = (InputMethodManager) getSystemService(InputMethodManager.class);
                if (inputMethodManager2 != null) {
                    p pVar6 = this.I;
                    if (pVar6 != null) {
                        inputMethodManager2.showSoftInput(pVar6.f13963c, 2);
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
        Bundle extras;
        Bundle extras2;
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_mode_rename, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        int i10 = R.id.activity_mode_rename_cancel;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.activity_mode_rename_cancel);
        if (textView != null) {
            i10 = R.id.activity_mode_rename_edit_container;
            if (((ConstraintLayout) g7.b.d(viewInflate, R.id.activity_mode_rename_edit_container)) != null) {
                i10 = R.id.activity_mode_rename_edit_text;
                EditText editText = (EditText) g7.b.d(viewInflate, R.id.activity_mode_rename_edit_text);
                if (editText != null) {
                    i10 = R.id.activity_mode_rename_save;
                    TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.activity_mode_rename_save);
                    if (textView2 != null) {
                        i10 = R.id.view_set_selection_end;
                        View viewD = g7.b.d(viewInflate, R.id.view_set_selection_end);
                        if (viewD != null) {
                            i10 = R.id.view_set_selection_start;
                            View viewD2 = g7.b.d(viewInflate, R.id.view_set_selection_start);
                            if (viewD2 != null) {
                                this.I = new p(constraintLayout, constraintLayout, textView, editText, textView2, viewD, viewD2);
                                setContentView(constraintLayout);
                                this.K = ((f) o.m()).a(this, this.B, j.f4265h, new i(this));
                                this.J = ((f) o.m()).b(this, this.B);
                                p7.b bVar = p7.b.f13281a;
                                p pVar = this.I;
                                if (pVar == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                ConstraintLayout constraintLayout2 = pVar.f13961a;
                                h.i(constraintLayout2, "binding.activityModeRenameBackground");
                                p7.b.f13281a.e(constraintLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                                Intent intent = getIntent();
                                String string = (intent == null || (extras2 = intent.getExtras()) == null) ? null : extras2.getString("rename_device_preset_id");
                                if (string == null) {
                                    string = "";
                                }
                                this.L = string;
                                Intent intent2 = getIntent();
                                String string2 = (intent2 == null || (extras = intent2.getExtras()) == null) ? null : extras.getString("rename_device_preset_name");
                                this.M = string2 != null ? string2 : "";
                                p pVar2 = this.I;
                                if (pVar2 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                final EditText editText2 = pVar2.f13963c;
                                editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: c9.g
                                    @Override // android.view.View.OnFocusChangeListener
                                    public final void onFocusChange(View view, boolean z10) {
                                        ModeRenameActivity modeRenameActivity = this.f4261a;
                                        EditText editText3 = editText2;
                                        int i11 = ModeRenameActivity.P;
                                        p4.h.j(modeRenameActivity, "this$0");
                                        p4.h.j(editText3, "$this_apply");
                                        if (z10) {
                                            InputMethodManager inputMethodManager = (InputMethodManager) modeRenameActivity.getSystemService(InputMethodManager.class);
                                            if (inputMethodManager != null) {
                                                inputMethodManager.toggleSoftInput(2, 0);
                                                return;
                                            }
                                            return;
                                        }
                                        InputMethodManager inputMethodManager2 = (InputMethodManager) modeRenameActivity.getSystemService(InputMethodManager.class);
                                        if (inputMethodManager2 != null) {
                                            inputMethodManager2.hideSoftInputFromWindow(editText3.getWindowToken(), 0);
                                        }
                                    }
                                });
                                editText2.requestFocus();
                                String str = this.M;
                                if (str == null) {
                                    h.C("incomingPresetName");
                                    throw null;
                                }
                                editText2.setText(str);
                                String str2 = this.M;
                                if (str2 == null) {
                                    h.C("incomingPresetName");
                                    throw null;
                                }
                                editText2.setHint(str2);
                                editText2.setSelection(editText2.getText().length());
                                editText2.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: c9.h
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView3, int i11, KeyEvent keyEvent) {
                                        ModeRenameActivity modeRenameActivity = this.f4263h;
                                        int i12 = ModeRenameActivity.P;
                                        p4.h.j(modeRenameActivity, "this$0");
                                        if (i11 != 6) {
                                            return true;
                                        }
                                        modeRenameActivity.q0();
                                        return true;
                                    }
                                });
                                p pVar3 = this.I;
                                if (pVar3 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                pVar3.f13963c.addTextChangedListener(new b());
                                p pVar4 = this.I;
                                if (pVar4 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                pVar4.f13964d.setOnClickListener(this);
                                p pVar5 = this.I;
                                if (pVar5 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                pVar5.f13962b.setOnClickListener(this);
                                p pVar6 = this.I;
                                if (pVar6 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                pVar6.f13966f.setOnClickListener(this);
                                p pVar7 = this.I;
                                if (pVar7 != null) {
                                    pVar7.f13965e.setOnClickListener(this);
                                    return;
                                } else {
                                    h.C("binding");
                                    throw null;
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final void p0(int i10, Intent intent) {
        InputMethodManager inputMethodManager = (InputMethodManager) getSystemService(InputMethodManager.class);
        if (inputMethodManager != null) {
            p pVar = this.I;
            if (pVar == null) {
                h.C("binding");
                throw null;
            }
            inputMethodManager.hideSoftInputFromWindow(pVar.f13963c.getWindowToken(), 0);
        }
        setResult(i10, intent);
        finish();
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    public final void q0() {
        x.f12420a.a("Pressed: Mode Rename Save");
        p pVar = this.I;
        if (pVar == null) {
            h.C("binding");
            throw null;
        }
        String string = pVar.f13963c.getText().toString();
        if (!(string.length() == 0)) {
            String str = this.M;
            if (str == null) {
                h.C("incomingPresetName");
                throw null;
            }
            if (!h.c(string, str) && this.N != null) {
                TrackManager.INSTANCE.modeRenamed(string);
                m mVar = this.N;
                if (mVar == null) {
                    h.C("adaptKitPairedDevices");
                    throw null;
                }
                List listW = h.w(mVar);
                Iterator it = listW.iterator();
                int i10 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i10 = -1;
                        break;
                    }
                    String str2 = ((e) it.next()).f6627h;
                    String str3 = this.L;
                    if (str3 == null) {
                        h.C("incomingPresetId");
                        throw null;
                    }
                    if (h.c(str2, str3)) {
                        break;
                    } else {
                        i10++;
                    }
                }
                if (i10 == -1) {
                    p0(0, null);
                }
                e eVarA = e.a((e) listW.get(i10), string, null, 61);
                List listN0 = n.n0(listW);
                ((ArrayList) listN0).set(i10, eVarA);
                m mVar2 = this.N;
                if (mVar2 == null) {
                    h.C("adaptKitPairedDevices");
                    throw null;
                }
                m mVarA = m.a(mVar2, null, false, null, null, null, null, listN0, 0L, false, 8063);
                IDeviceController iDeviceController = this.J;
                if (iDeviceController == null) {
                    h.C("deviceController");
                    throw null;
                }
                iDeviceController.updatePair(mVarA);
                Intent intent = new Intent();
                intent.putExtra("PARAM_MODE_UPDATED", mVarA);
                setResult(-1, intent);
                p0(-1, intent);
                return;
            }
        }
        p0(0, null);
    }
}
