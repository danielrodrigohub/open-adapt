package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.util.Pair;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import f.a;
import f.e;
import g7.b;
import h8.c;
import p4.h;
import q7.e2;
import q7.r1;
import s9.p;
import s9.r;

/* JADX INFO: compiled from: SettingsRegulatoryActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsRegulatoryActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int D = 0;
    public r1 A;
    public final String B = "Pressed: US Regulatory";
    public final String C = "Pressed: Canada Regulatory";

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsRegulatoryActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsRegulatoryActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.preference_regulatory, (ViewGroup) null, false);
        int i10 = R.id.div1;
        if (b.d(viewInflate, R.id.div1) != null) {
            i10 = R.id.div2;
            if (b.d(viewInflate, R.id.div2) != null) {
                i10 = R.id.div3;
                if (b.d(viewInflate, R.id.div3) != null) {
                    i10 = R.id.model_name;
                    TextView textView = (TextView) b.d(viewInflate, R.id.model_name);
                    if (textView != null) {
                        i10 = R.id.preference_regulatory_footnote;
                        if (((TextView) b.d(viewInflate, R.id.preference_regulatory_footnote)) != null) {
                            i10 = R.id.regulatory_canada;
                            View viewD = b.d(viewInflate, R.id.regulatory_canada);
                            if (viewD != null) {
                                i10 = R.id.regulatory_id_canada;
                                TextView textView2 = (TextView) b.d(viewInflate, R.id.regulatory_id_canada);
                                if (textView2 != null) {
                                    i10 = R.id.regulatory_id_us;
                                    TextView textView3 = (TextView) b.d(viewInflate, R.id.regulatory_id_us);
                                    if (textView3 != null) {
                                        i10 = R.id.regulatory_label_canada;
                                        if (((TextView) b.d(viewInflate, R.id.regulatory_label_canada)) != null) {
                                            i10 = R.id.regulatory_label_us;
                                            if (((TextView) b.d(viewInflate, R.id.regulatory_label_us)) != null) {
                                                i10 = R.id.regulatory_logo_us;
                                                if (((ImageView) b.d(viewInflate, R.id.regulatory_logo_us)) != null) {
                                                    i10 = R.id.regulatory_us;
                                                    View viewD2 = b.d(viewInflate, R.id.regulatory_us);
                                                    if (viewD2 != null) {
                                                        i10 = R.id.title;
                                                        if (((TextView) b.d(viewInflate, R.id.title)) != null) {
                                                            i10 = R.id.view_toolbar;
                                                            View viewD3 = b.d(viewInflate, R.id.view_toolbar);
                                                            if (viewD3 != null) {
                                                                e2.a(viewD3);
                                                                ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                                                this.A = new r1(constraintLayout, textView, viewD, textView2, textView3, viewD2);
                                                                setContentView(constraintLayout);
                                                                CharSequence charSequenceR = o.r(R.string.adapt_regulatory_label);
                                                                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                                                                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                                                                k0((Toolbar) viewFindViewById);
                                                                a aVarI0 = i0();
                                                                if (aVarI0 != null) {
                                                                    aVarI0.o(charSequenceR);
                                                                    aVarI0.m(true);
                                                                }
                                                                r shoeType = c.f8298b.getShoeType();
                                                                r1 r1Var = this.A;
                                                                if (r1Var == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                TextView textView4 = r1Var.f13988a;
                                                                p pVar = p.f15222a;
                                                                textView4.setText(pVar.l(shoeType));
                                                                r1 r1Var2 = this.A;
                                                                if (r1Var2 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                r1Var2.f13988a.setContentDescription(pVar.j(shoeType));
                                                                int i11 = shoeType == null ? -1 : p.b.f15227a[shoeType.ordinal()];
                                                                int i12 = 5;
                                                                int i13 = 3;
                                                                String str = (i11 == 2 || i11 == 3 || i11 == 4 || i11 == 5 || i11 == 6) ? "QYU-LE01" : "QYU-ADAPTBB";
                                                                r1 r1Var3 = this.A;
                                                                if (r1Var3 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                r1Var3.f13991d.setText(s9.e.b(getString(R.string.adapt_bigfoot_regulatory_fccid_label), new Pair("id", str)));
                                                                r1 r1Var4 = this.A;
                                                                if (r1Var4 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                View view = r1Var4.f13992e;
                                                                String strR = o.r(R.string.adapt_united_states_label);
                                                                r1 r1Var5 = this.A;
                                                                if (r1Var5 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                view.setContentDescription(strR + ((Object) r1Var5.f13991d.getText()));
                                                                int i14 = shoeType == null ? -1 : p.b.f15227a[shoeType.ordinal()];
                                                                String str2 = (i14 == 2 || i14 == 3 || i14 == 4 || i14 == 5 || i14 == 6) ? "4571A-LE01" : "4571A-ADAPTBB";
                                                                r1 r1Var6 = this.A;
                                                                if (r1Var6 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                r1Var6.f13990c.setText(s9.e.b(getString(R.string.adapt_bigfoot_regulatory_canada_ic_label), new Pair("id", str2)));
                                                                r1 r1Var7 = this.A;
                                                                if (r1Var7 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                View view2 = r1Var7.f13989b;
                                                                String strR2 = o.r(R.string.adapt_regulatory_canada_label);
                                                                r1 r1Var8 = this.A;
                                                                if (r1Var8 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                view2.setContentDescription(strR2 + ((Object) r1Var8.f13990c.getText()));
                                                                r1 r1Var9 = this.A;
                                                                if (r1Var9 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                r1Var9.f13992e.setOnClickListener(new i9.b(this, i13));
                                                                r1 r1Var10 = this.A;
                                                                if (r1Var10 == null) {
                                                                    h.C("binding");
                                                                    throw null;
                                                                }
                                                                r1Var10.f13989b.setOnClickListener(new w8.b(this, i12));
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
