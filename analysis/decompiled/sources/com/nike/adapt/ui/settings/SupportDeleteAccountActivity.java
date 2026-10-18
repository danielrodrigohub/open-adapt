package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.app.d;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import b6.b;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.coroutine.MainCoroutineScope;
import com.nike.adapt.ui.settings.SupportDeleteAccountActivity;
import d8.c;
import e9.f;
import f.e;
import p4.h;
import q7.e2;
import q7.v;
import qd.l;
import rd.o;
import s9.m;
import u8.j;

/* JADX INFO: compiled from: SupportDeleteAccountActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SupportDeleteAccountActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int E = 0;
    public v A;
    public c B;
    public boolean C;
    public final MainCoroutineScope D = new MainCoroutineScope();

    /* JADX INFO: compiled from: SupportDeleteAccountActivity.kt */
    public static final class a extends o implements l<d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5868h = new a();

        public a() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(d dVar) {
            d dVar2 = dVar;
            h.j(dVar2, "it");
            m.f15208a.c(true, 2000L);
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    public final void l0() {
        this.C = true;
        TrackManager.INSTANCE.farewellModalPresented();
        m mVar = m.f15208a;
        m.b(true, false, 4);
        v vVar = this.A;
        if (vVar == null) {
            h.C("binding");
            throw null;
        }
        vVar.f14033e.animate().alpha(1.0f).setDuration(350L).start();
        a aVar = a.f5868h;
        h.j(aVar, "positiveAction");
        b bVar = new b(this, R.style.MyModalDialog_MaterialComponents_MaterialAlertDialog);
        bVar.f793a.f771k = false;
        bVar.g(R.layout.dialog_modal_message);
        d dVarCreate = bVar.create();
        if (!isFinishing()) {
            dVarCreate.show();
        }
        ImageView imageView = (ImageView) dVarCreate.findViewById(R.id.header_image);
        ImageView imageView2 = (ImageView) dVarCreate.findViewById(R.id.body_image);
        TextView textView = (TextView) dVarCreate.findViewById(R.id.title);
        TextView textView2 = (TextView) dVarCreate.findViewById(R.id.description);
        Button button = (Button) dVarCreate.findViewById(R.id.button_positive);
        if (imageView != null) {
            Object obj = y.a.f18143a;
            imageView.setImageDrawable(y.a.b.b(this, R.drawable.ic_nike_orange));
        }
        if (imageView2 != null) {
            Object obj2 = y.a.f18143a;
            imageView2.setImageDrawable(y.a.b.b(this, R.drawable.holding_white_shoe));
        }
        if (textView != null) {
            textView.setText(R.string.adapt_farewell_modal_title);
        }
        if (textView2 != null) {
            textView2.setText(R.string.adapt_farewell_modal_copy);
        }
        if (button != null) {
            button.setText(R.string.adapt_accessibility_close);
        }
        if (button != null) {
            button.setOnClickListener(new j(aVar, dVarCreate, 2));
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SupportDeleteAccountActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SupportDeleteAccountActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_delete_account, (ViewGroup) null, false);
        int i10 = R.id.delete_account_button;
        Button button = (Button) g7.b.d(viewInflate, R.id.delete_account_button);
        if (button != null) {
            i10 = R.id.delete_account_button_cancel;
            Button button2 = (Button) g7.b.d(viewInflate, R.id.delete_account_button_cancel);
            if (button2 != null) {
                i10 = R.id.delete_account_button_container;
                if (((ConstraintLayout) g7.b.d(viewInflate, R.id.delete_account_button_container)) != null) {
                    i10 = R.id.delete_account_checkbox;
                    CheckBox checkBox = (CheckBox) g7.b.d(viewInflate, R.id.delete_account_checkbox);
                    if (checkBox != null) {
                        i10 = R.id.delete_account_legal_copy;
                        if (((TextView) g7.b.d(viewInflate, R.id.delete_account_legal_copy)) != null) {
                            i10 = R.id.delete_account_list_item_container_1;
                            if (((ConstraintLayout) g7.b.d(viewInflate, R.id.delete_account_list_item_container_1)) != null) {
                                i10 = R.id.delete_account_list_item_container_2;
                                if (((ConstraintLayout) g7.b.d(viewInflate, R.id.delete_account_list_item_container_2)) != null) {
                                    i10 = R.id.delete_account_list_item_container_3;
                                    if (((ConstraintLayout) g7.b.d(viewInflate, R.id.delete_account_list_item_container_3)) != null) {
                                        i10 = R.id.delete_account_scrollview;
                                        if (((ScrollView) g7.b.d(viewInflate, R.id.delete_account_scrollview)) != null) {
                                            i10 = R.id.delete_account_spinner;
                                            ProgressBar progressBar = (ProgressBar) g7.b.d(viewInflate, R.id.delete_account_spinner);
                                            if (progressBar != null) {
                                                i10 = R.id.transparent_overlay;
                                                View viewD = g7.b.d(viewInflate, R.id.transparent_overlay);
                                                if (viewD != null) {
                                                    i10 = R.id.view_toolbar;
                                                    View viewD2 = g7.b.d(viewInflate, R.id.view_toolbar);
                                                    if (viewD2 != null) {
                                                        e2.a(viewD2);
                                                        FrameLayout frameLayout = (FrameLayout) viewInflate;
                                                        this.A = new v(frameLayout, button, button2, checkBox, progressBar, viewD);
                                                        setContentView(frameLayout);
                                                        int i11 = 4;
                                                        CharSequence charSequenceR = androidx.lifecycle.o.r(R.string.adapt_support_delete_account_title);
                                                        View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                        h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                        k0((Toolbar) viewFindViewById);
                                                        f.a aVarI0 = i0();
                                                        if (aVarI0 != null) {
                                                            aVarI0.o(charSequenceR);
                                                            aVarI0.m(true);
                                                        }
                                                        boolean z10 = bundle != null ? bundle.getBoolean("HAS_ALREADY_DELETED") : false;
                                                        this.C = z10;
                                                        if (z10) {
                                                            v vVar = this.A;
                                                            if (vVar == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            vVar.f14033e.setVisibility(0);
                                                            v vVar2 = this.A;
                                                            if (vVar2 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            vVar2.f14033e.setAlpha(1.0f);
                                                            l0();
                                                        } else {
                                                            TrackManager.INSTANCE.settingsDeleteAccountPageViewed();
                                                            v vVar3 = this.A;
                                                            if (vVar3 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            vVar3.f14030b.setOnClickListener(new f(this, 3));
                                                            v vVar4 = this.A;
                                                            if (vVar4 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            vVar4.f14031c.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: m9.n0
                                                                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                                                                public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                                                                    SupportDeleteAccountActivity supportDeleteAccountActivity = this.f10892h;
                                                                    int i12 = SupportDeleteAccountActivity.E;
                                                                    p4.h.j(supportDeleteAccountActivity, "this$0");
                                                                    q7.v vVar5 = supportDeleteAccountActivity.A;
                                                                    if (vVar5 != null) {
                                                                        vVar5.f14029a.setEnabled(z11);
                                                                    } else {
                                                                        p4.h.C("binding");
                                                                        throw null;
                                                                    }
                                                                }
                                                            });
                                                            v vVar5 = this.A;
                                                            if (vVar5 == null) {
                                                                h.C("binding");
                                                                throw null;
                                                            }
                                                            vVar5.f14029a.setOnClickListener(new o8.f(this, i11));
                                                        }
                                                        TraceMachine.exitMethod();
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
        bundle.putBoolean("HAS_ALREADY_DELETED", this.C);
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
