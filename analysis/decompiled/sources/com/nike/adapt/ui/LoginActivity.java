package com.nike.adapt.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.activity.k;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import fd.o;
import g7.b;
import jd.d;
import kotlinx.coroutines.CoroutineScope;
import ld.e;
import ld.i;
import o8.j;
import o8.y;
import p4.h;
import q7.m;
import qd.p;

/* JADX INFO: compiled from: LoginActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LoginActivity extends y {
    public static final /* synthetic */ int C = 0;
    public m B;

    /* JADX INFO: compiled from: LoginActivity.kt */
    @e(c = "com.nike.adapt.ui.LoginActivity$onCreate$1", f = "LoginActivity.kt", l = {}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, d<? super o>, Object> {
        public a(d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final d<o> create(Object obj, d<?> dVar) {
            return LoginActivity.this.new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, d<? super o> dVar) throws Throwable {
            a aVar = (a) create(coroutineScope, dVar);
            o oVar = o.f7408a;
            aVar.invokeSuspend(oVar);
            return oVar;
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            d3.e.p(obj);
            if (BigfootApplication.f5638p.c().a()) {
                h9.i.f8334c.e(LoginActivity.this);
            }
            return o.f7408a;
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_login, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        int i10 = R.id.bigfoot_pre_login_body;
        if (((TextView) b.d(viewInflate, R.id.bigfoot_pre_login_body)) != null) {
            i10 = R.id.bigfoot_pre_login_learn_more_button;
            Button button = (Button) b.d(viewInflate, R.id.bigfoot_pre_login_learn_more_button);
            if (button != null) {
                i10 = R.id.bigfoot_pre_login_login_button;
                Button button2 = (Button) b.d(viewInflate, R.id.bigfoot_pre_login_login_button);
                if (button2 != null) {
                    i10 = R.id.bigfoot_pre_login_title;
                    if (((TextView) b.d(viewInflate, R.id.bigfoot_pre_login_title)) != null) {
                        i10 = R.id.login_half_vertical_guideline;
                        if (((Guideline) b.d(viewInflate, R.id.login_half_vertical_guideline)) != null) {
                            this.B = new m(constraintLayout, button, button2);
                            setContentView(constraintLayout);
                            m mVar = this.B;
                            if (mVar == null) {
                                h.C("binding");
                                throw null;
                            }
                            mVar.f13922a.setText(androidx.lifecycle.o.r(R.string.adapt_learn_more_title));
                            k.m(this).c(new a(null));
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // o8.y, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        TrackManager.INSTANCE.isScreenViewed(TrackManager.Screen.LOGIN);
        super.onStart();
        m mVar = this.B;
        if (mVar == null) {
            h.C("binding");
            throw null;
        }
        int i10 = 0;
        mVar.f13923b.setOnClickListener(new j(this, i10));
        m mVar2 = this.B;
        if (mVar2 != null) {
            mVar2.f13922a.setOnClickListener(new o8.k(this, i10));
        } else {
            h.C("binding");
            throw null;
        }
    }
}
