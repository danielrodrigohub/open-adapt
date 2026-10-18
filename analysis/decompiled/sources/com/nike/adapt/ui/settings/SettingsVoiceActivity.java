package com.nike.adapt.ui.settings;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.r0;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.s;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import f.e;
import fd.d;
import i8.f;
import j0.a0;
import java.util.ArrayList;
import java.util.List;
import p4.h;
import q7.c0;
import q7.e2;
import q7.s1;

/* JADX INFO: compiled from: SettingsVoiceActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsVoiceActivity extends e implements TraceFieldInterface {
    public static final /* synthetic */ int C = 0;
    public c0 A;
    public final d B = o.w(3, c.f5866h);

    /* JADX INFO: compiled from: SettingsVoiceActivity.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f5858a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f5859b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f5860c;

        public a(int i10, int i11, int i12) {
            this.f5858a = i10;
            this.f5859b = i11;
            this.f5860c = i12;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.f5858a == aVar.f5858a && this.f5859b == aVar.f5859b && this.f5860c == aVar.f5860c;
        }

        public final int hashCode() {
            return Integer.hashCode(this.f5860c) + r0.e(this.f5859b, Integer.hashCode(this.f5858a) * 31, 31);
        }

        public final String toString() {
            int i10 = this.f5858a;
            int i11 = this.f5859b;
            return s.a(s.b("VoiceOption(titleId=", i10, ", bodyId=", i11, ", imageId="), this.f5860c, ")");
        }
    }

    /* JADX INFO: compiled from: SettingsVoiceActivity.kt */
    public static final class b extends RecyclerView.e<a> {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public List<a> f5861d;

        /* JADX INFO: compiled from: SettingsVoiceActivity.kt */
        public static final class a extends RecyclerView.b0 {

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            public final TextView f5862u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            public final TextView f5863v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            public final ImageView f5864w;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            public final View f5865x;

            public a(s1 s1Var) {
                super(s1Var.f13999a);
                TextView textView = s1Var.f14003e;
                h.i(textView, "binding.voicePreferenceItemTitle");
                this.f5862u = textView;
                TextView textView2 = s1Var.f14000b;
                h.i(textView2, "binding.voicePreferenceItemBody");
                this.f5863v = textView2;
                ImageView imageView = s1Var.f14002d;
                h.i(imageView, "binding.voicePreferenceItemImage");
                this.f5864w = imageView;
                View view = s1Var.f14001c;
                h.i(view, "binding.voicePreferenceItemDivider");
                this.f5865x = view;
            }
        }

        public b(List<a> list) {
            this.f5861d = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final int a() {
            return this.f5861d.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final void h(RecyclerView.b0 b0Var, int i10) {
            a aVar = (a) b0Var;
            aVar.f5862u.setText(o.r(this.f5861d.get(i10).f5858a));
            aVar.f5863v.setText(o.r(this.f5861d.get(i10).f5859b));
            aVar.f5864w.setImageResource(this.f5861d.get(i10).f5860c);
            if (i10 == o.p(this.f5861d)) {
                aVar.f5865x.setVisibility(8);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.e
        public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
            h.j(viewGroup, "parent");
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.preference_voice_item, viewGroup, false);
            int i11 = R.id.voice_preference_barrier;
            if (((Barrier) g7.b.d(viewInflate, R.id.voice_preference_barrier)) != null) {
                i11 = R.id.voice_preference_item_body;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.voice_preference_item_body);
                if (textView != null) {
                    i11 = R.id.voice_preference_item_divider;
                    View viewD = g7.b.d(viewInflate, R.id.voice_preference_item_divider);
                    if (viewD != null) {
                        i11 = R.id.voice_preference_item_image;
                        ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.voice_preference_item_image);
                        if (imageView != null) {
                            i11 = R.id.voice_preference_item_title;
                            TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.voice_preference_item_title);
                            if (textView2 != null) {
                                return new a(new s1((ConstraintLayout) viewInflate, textView, viewD, imageView, textView2));
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
        }
    }

    /* JADX INFO: compiled from: SettingsVoiceActivity.kt */
    public static final class c extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f5866h = new c();

        public c() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("SettingsVoiceActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsVoiceActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_voice, (ViewGroup) null, false);
        LinearLayout linearLayout = (LinearLayout) viewInflate;
        int i10 = R.id.activity_settings_voice_scroll;
        if (((ScrollView) g7.b.d(viewInflate, R.id.activity_settings_voice_scroll)) != null) {
            i10 = R.id.view_toolbar;
            View viewD = g7.b.d(viewInflate, R.id.view_toolbar);
            if (viewD != null) {
                e2.a(viewD);
                i10 = R.id.voice_preference_parent;
                ConstraintLayout constraintLayout = (ConstraintLayout) g7.b.d(viewInflate, R.id.voice_preference_parent);
                if (constraintLayout != null) {
                    i10 = R.id.voice_preference_recycler_view;
                    RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.voice_preference_recycler_view);
                    if (recyclerView != null) {
                        i10 = R.id.voice_preference_title;
                        TextView textView = (TextView) g7.b.d(viewInflate, R.id.voice_preference_title);
                        if (textView != null) {
                            this.A = new c0(linearLayout, constraintLayout, recyclerView, textView);
                            setContentView(linearLayout);
                            TrackManager.INSTANCE.settingsVoiceScreenViewed();
                            int i11 = 4;
                            CharSequence charSequenceR = o.r(R.string.adapt_settings_voice_title);
                            View viewFindViewById = findViewById(R.id.bgf_toolbar);
                            h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                            k0((Toolbar) viewFindViewById);
                            f.a aVarI0 = i0();
                            if (aVarI0 != null) {
                                aVarI0.o(charSequenceR);
                                aVarI0.m(true);
                            }
                            c0 c0Var = this.A;
                            if (c0Var == null) {
                                h.C("binding");
                                throw null;
                            }
                            c0Var.f13737b.setLayoutManager(new LinearLayoutManager(1));
                            c0 c0Var2 = this.A;
                            if (c0Var2 == null) {
                                h.C("binding");
                                throw null;
                            }
                            RecyclerView recyclerView2 = c0Var2.f13737b;
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(new a(R.string.adapt_settings_voice_option1_title, R.string.adapt_settings_voice_option1_body, R.drawable.voice_preference_unlace));
                            arrayList.add(new a(R.string.adapt_settings_voice_option2_title, R.string.adapt_settings_voice_option2_body, R.drawable.voice_preference_loosen));
                            arrayList.add(new a(R.string.adapt_settings_voice_option3_title, R.string.adapt_settings_voice_option3_body, R.drawable.voice_preference_tighten));
                            arrayList.add(new a(R.string.adapt_settings_voice_option4_title, R.string.adapt_settings_voice_option4_body, R.drawable.voice_preference_batteries));
                            arrayList.add(new a(R.string.adapt_settings_voice_option5_title, R.string.adapt_settings_voice_option5_body, R.drawable.voice_preference_lights));
                            recyclerView2.setAdapter(new b(arrayList));
                            if (!((h8.a) this.B.getValue()).D()) {
                                c0 c0Var3 = this.A;
                                if (c0Var3 == null) {
                                    h.C("binding");
                                    throw null;
                                }
                                c0Var3.f13736a.post(new f(this, i11));
                                ((h8.a) this.B.getValue()).m();
                            }
                            c0 c0Var4 = this.A;
                            if (c0Var4 == null) {
                                h.C("binding");
                                throw null;
                            }
                            a0.q(c0Var4.f13738c, true);
                            TraceMachine.exitMethod();
                            return;
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
