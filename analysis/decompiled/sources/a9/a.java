package a9;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import b9.c;
import com.nike.adapt.R;
import o8.f;
import p8.h;
import q7.g1;
import q7.i1;
import q7.l0;
import x8.j0;

/* JADX INFO: compiled from: MessagingCenterFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends h {

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final C0011a f543h0 = new C0011a();

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final String f544b0 = "MessagingCenterFragment";

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public l0 f545c0;
    public i1 d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public g1 f546e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public c f547f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public v8.a f548g0;

    /* JADX INFO: renamed from: a9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: MessagingCenterFragment.kt */
    public static final class C0011a {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.m
    public final void G(Context context) {
        p4.h.j(context, "context");
        super.G(context);
        if (context instanceof v8.a) {
            this.f548g0 = (v8.a) context;
        }
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        c cVar;
        p4.h.j(layoutInflater, "inflater");
        l0 l0VarA = l0.a(o().inflate(R.layout.content_messaging_headline_with_cta, viewGroup, false));
        this.f545c0 = l0VarA;
        this.d0 = i1.a(l0VarA.f13915a);
        l0 l0Var = this.f545c0;
        if (l0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        this.f546e0 = g1.a(l0Var.f13915a);
        if (bundle != null) {
            Parcelable parcelable = bundle.getParcelable("PARAM_BIGFOOT_MESSAGE_TYPE");
            p4.h.h(parcelable, "null cannot be cast to non-null type com.nike.adapt.ui.model.BigfootMessageType");
            cVar = (c) parcelable;
        } else {
            Bundle bundle2 = this.f1971n;
            cVar = bundle2 != null ? (c) bundle2.getParcelable("PARAM_BIGFOOT_MESSAGE_TYPE") : null;
            p4.h.h(cVar, "null cannot be cast to non-null type com.nike.adapt.ui.model.BigfootMessageType");
        }
        this.f547f0 = cVar;
        i1 i1Var = this.d0;
        if (i1Var == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var.f13858c.setText(cVar.f());
        i1 i1Var2 = this.d0;
        if (i1Var2 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        TextView textView = i1Var2.f13856a;
        c cVar2 = this.f547f0;
        if (cVar2 == null) {
            p4.h.C("messageType");
            throw null;
        }
        textView.setText(cVar2.a());
        g1 g1Var = this.f546e0;
        if (g1Var == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        Button button = g1Var.f13825a;
        c cVar3 = this.f547f0;
        if (cVar3 == null) {
            p4.h.C("messageType");
            throw null;
        }
        button.setText(cVar3.b());
        g1 g1Var2 = this.f546e0;
        if (g1Var2 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        int i10 = 1;
        g1Var2.f13825a.setOnClickListener(new f(this, i10));
        g1 g1Var3 = this.f546e0;
        if (g1Var3 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var3.f13825a.setVisibility(0);
        c cVar4 = this.f547f0;
        if (cVar4 == null) {
            p4.h.C("messageType");
            throw null;
        }
        String strD = cVar4.d();
        if (strD != null) {
            g1 g1Var4 = this.f546e0;
            if (g1Var4 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var4.f13826b.setText(strD);
            g1 g1Var5 = this.f546e0;
            if (g1Var5 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var5.f13826b.setOnClickListener(new j0(this, i10));
            g1 g1Var6 = this.f546e0;
            if (g1Var6 == null) {
                p4.h.C("itemMessagingCtaBinding");
                throw null;
            }
            g1Var6.f13826b.setVisibility(0);
        }
        l0 l0Var2 = this.f545c0;
        if (l0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        LinearLayout linearLayout = l0Var2.f13915a;
        i1 i1Var3 = this.d0;
        if (i1Var3 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var3.f13858c.setTextColor(linearLayout.getContext().getColor(R.color.text_color_black));
        i1 i1Var4 = this.d0;
        if (i1Var4 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var4.f13856a.setTextColor(linearLayout.getContext().getColor(R.color.text_color_black));
        i1 i1Var5 = this.d0;
        if (i1Var5 == null) {
            p4.h.C("itemMessagingHeadlineBinding");
            throw null;
        }
        i1Var5.f13857b.setTextColor(linearLayout.getContext().getColor(R.color.text_color_black));
        g1 g1Var7 = this.f546e0;
        if (g1Var7 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var7.f13825a.setTextColor(linearLayout.getContext().getColor(R.color.text_color_white));
        g1 g1Var8 = this.f546e0;
        if (g1Var8 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var8.f13825a.setBackground(linearLayout.getContext().getDrawable(R.drawable.background_dark_pill_button));
        g1 g1Var9 = this.f546e0;
        if (g1Var9 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var9.f13826b.setTextColor(linearLayout.getContext().getColor(R.color.text_color_black));
        g1 g1Var10 = this.f546e0;
        if (g1Var10 == null) {
            p4.h.C("itemMessagingCtaBinding");
            throw null;
        }
        g1Var10.f13826b.setBackground(linearLayout.getContext().getDrawable(R.drawable.text_selector_pill_button));
        l0 l0Var3 = this.f545c0;
        if (l0Var3 != null) {
            return l0Var3.f13915a;
        }
        p4.h.C("binding");
        throw null;
    }

    @Override // androidx.fragment.app.m
    public final void R(Bundle bundle) {
        c cVar = this.f547f0;
        if (cVar != null) {
            bundle.putParcelable("PARAM_BIGFOOT_MESSAGE_TYPE", cVar);
        } else {
            p4.h.C("messageType");
            throw null;
        }
    }

    @Override // p8.h
    public final String p0() {
        return this.f544b0;
    }
}
