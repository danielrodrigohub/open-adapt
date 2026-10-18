package com.nike.adapt.ui.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.preference.Preference;
import androidx.preference.g;
import com.nike.adapt.R;
import com.nike.adapt.presenter.profile.AdaptUser;
import fd.d;
import h8.c;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import p4.h;
import rd.o;
import s9.e;
import t7.b;

/* JADX INFO: compiled from: ProfilePreference.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ProfilePreference extends Preference {
    public final SimpleDateFormat T;
    public final d U;

    /* JADX INFO: compiled from: ProfilePreference.kt */
    public static final class a extends o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f5836h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return c.f8298b;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProfilePreference(Context context) {
        this(context, null, 0, 6, null);
        h.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ProfilePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        h.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProfilePreference(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        h.j(context, "context");
        this.T = new SimpleDateFormat("yyyy", Locale.getDefault());
        this.U = androidx.lifecycle.o.w(3, a.f5836h);
        this.K = R.layout.settings_profile_stats;
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        View view = gVar.f2453a;
        View viewA = gVar.A(R.id.setting_profile_avatar);
        h.h(viewA, "null cannot be cast to non-null type android.widget.ImageView");
        ImageView imageView = (ImageView) viewA;
        View viewA2 = gVar.A(R.id.settings_profile_stats_name);
        h.h(viewA2, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView = (TextView) viewA2;
        View viewA3 = gVar.A(R.id.settings_profile_stats_age_plus_city);
        h.h(viewA3, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView2 = (TextView) viewA3;
        View viewA4 = gVar.A(R.id.settings_profile_stats_member_since);
        h.h(viewA4, "null cannot be cast to non-null type android.widget.TextView");
        TextView textView3 = (TextView) viewA4;
        AdaptUser adaptUserR = ((h8.a) this.U.getValue()).R();
        if (adaptUserR == null) {
            return;
        }
        String avatarUrl = adaptUserR.getAvatarUrl();
        if (avatarUrl != null) {
            b bVarA = b.f15557a.a();
            h3.g gVarC = h3.g.C();
            h.i(gVarC, "circleCropTransform()");
            bVarA.d(avatarUrl, gVarC, imageView);
        }
        StringBuilder sb2 = new StringBuilder();
        String firstName = adaptUserR.getFirstName();
        if (firstName != null) {
            sb2.append(firstName);
        }
        String lastName = adaptUserR.getLastName();
        if (lastName != null) {
            if (sb2.length() > 0) {
                sb2.append(" ");
            }
            sb2.append(lastName);
        }
        textView.setText(sb2.toString());
        Integer dob = adaptUserR.getDob();
        String hometown = adaptUserR.getHometown();
        if (!(hometown == null || hometown.length() == 0)) {
            textView2.setVisibility(0);
            textView2.setText(dob + ", " + hometown);
        }
        Long registrationTimestamp = adaptUserR.getRegistrationTimestamp();
        if (registrationTimestamp != null) {
            String str = this.T.format(new Date(registrationTimestamp.longValue()));
            h.i(str, "registrationYear");
            if (str.length() > 0) {
                textView3.setVisibility(0);
                textView3.setText(e.a(view.getContext(), R.string.adapt_user_member_since, new Pair("year", str)));
            }
        }
    }

    public /* synthetic */ ProfilePreference(Context context, AttributeSet attributeSet, int i10, int i11, rd.h hVar) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }
}
