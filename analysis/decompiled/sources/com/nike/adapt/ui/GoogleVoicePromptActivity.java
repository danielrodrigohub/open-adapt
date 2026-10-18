package com.nike.adapt.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.airbnb.lottie.LottieAnimationView;
import com.nike.adapt.R;
import com.nike.adapt.ui.view.SecondaryButton;
import g7.b;
import h8.c;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import o8.e;
import o8.f;
import o8.h;
import p8.q;
import q7.g1;
import q7.i;
import rd.o;

/* JADX INFO: compiled from: GoogleVoicePromptActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class GoogleVoicePromptActivity extends q {
    public static final /* synthetic */ int F = 0;
    public i E;

    /* JADX INFO: compiled from: GoogleVoicePromptActivity.kt */
    public static final class a extends o implements qd.a<fd.o> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            GoogleVoicePromptActivity googleVoicePromptActivity = GoogleVoicePromptActivity.this;
            int i10 = GoogleVoicePromptActivity.F;
            BuildersKt__Builders_commonKt.launch$default(googleVoicePromptActivity.A, null, null, new h(googleVoicePromptActivity, null), 3, null);
            return fd.o.f7408a;
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i10 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_google_voice, (ViewGroup) null, false);
        int i11 = R.id.google_voice_bottom_anim_tray;
        LinearLayout linearLayout = (LinearLayout) b.d(viewInflate, R.id.google_voice_bottom_anim_tray);
        if (linearLayout != null) {
            i11 = R.id.google_voice_query;
            TextView textView = (TextView) b.d(viewInflate, R.id.google_voice_query);
            if (textView != null) {
                LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                int i12 = R.id.test;
                if (((TextView) b.d(viewInflate, R.id.test)) != null) {
                    i12 = R.id.unlace_icon;
                    LottieAnimationView lottieAnimationView = (LottieAnimationView) b.d(viewInflate, R.id.unlace_icon);
                    if (lottieAnimationView != null) {
                        i12 = R.id.unlace_icon_anim_tray;
                        LinearLayout linearLayout3 = (LinearLayout) b.d(viewInflate, R.id.unlace_icon_anim_tray);
                        if (linearLayout3 != null) {
                            this.E = new i(linearLayout2, linearLayout, textView, lottieAnimationView, linearLayout3);
                            setContentView(linearLayout2);
                            k0((Toolbar) findViewById(R.id.bgf_toolbar));
                            i iVar = this.E;
                            if (iVar == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            g1 g1VarA = g1.a(iVar.f13842a);
                            Button button = g1VarA.f13825a;
                            button.setText(R.string.google_voice_try_now_cta);
                            button.setTextColor(androidx.lifecycle.o.o(R.color.text_color_white));
                            button.setBackground(button.getResources().getDrawable(R.drawable.background_dark_pill_button, null));
                            button.setOnClickListener(new e(this, i10));
                            SecondaryButton secondaryButton = g1VarA.f13826b;
                            secondaryButton.setText(R.string.google_voice_view_all_cta);
                            secondaryButton.setTextColor(androidx.lifecycle.o.o(R.color.text_color_black));
                            secondaryButton.setVisibility(0);
                            secondaryButton.setOnClickListener(new f(this, i10));
                            i iVar2 = this.E;
                            if (iVar2 == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            LinearLayout linearLayout4 = iVar2.f13843b;
                            p4.h.i(linearLayout4, "binding.googleVoiceBottomAnimTray");
                            ViewPropertyAnimator listener = linearLayout4.animate().alpha(1.0f).setStartDelay(150L).setInterpolator(new AccelerateDecelerateInterpolator()).setDuration(400L).translationY(linearLayout4.getY() - b.c(25)).setDuration(300L).setListener(new x8.h(new a()));
                            p4.h.i(listener, "completed: () -> Unit) {…        }\n\n            })");
                            listener.start();
                            c.f8298b.d(-10);
                            return;
                        }
                    }
                }
                i11 = i12;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }
}
