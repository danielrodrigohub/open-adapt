package u8;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;
import o7.x;
import q7.n0;
import rd.u;

/* JADX INFO: compiled from: IssuesConnectingErrorDisplay.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Activity f16066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final qd.a<fd.o> f16067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final qd.a<fd.o> f16068f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f16069g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public n0 f16070h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f16071i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public y0.t f16072j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public i8.f f16073k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public androidx.appcompat.app.d f16074l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final fd.d f16075m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f16076n;

    /* JADX WARN: Illegal instructions before constructor call */
    public q(Activity activity, qd.a aVar, long j10, int i10) {
        aVar = (i10 & 2) != 0 ? m.f16062h : aVar;
        n nVar = (i10 & 4) != 0 ? n.f16063h : null;
        o oVar = (i10 & 8) != 0 ? o.f16064h : null;
        j10 = (i10 & 16) != 0 ? 30000L : j10;
        p4.h.j(activity, "activity");
        p4.h.j(aVar, "onDismiss");
        p4.h.j(nVar, "onRetry");
        p4.h.j(oVar, "runtimeOverride");
        super(oVar);
        this.f16066d = activity;
        this.f16067e = aVar;
        this.f16068f = nVar;
        this.f16069g = j10;
        this.f16071i = new Handler(Looper.getMainLooper());
        this.f16072j = new y0.t(this, 3);
        this.f16073k = new i8.f(this, 1);
        this.f16075m = androidx.lifecycle.o.w(3, p.f16065h);
        this.f16076n = true;
    }

    @Override // u8.g
    public final void a() {
        d();
        super.a();
    }

    @Override // u8.g
    public final boolean b() {
        boolean z10 = this.f16046b;
        if (!(z10 && this.f16047c) && this.f16076n) {
            this.f16076n = false;
            this.f16071i.postDelayed(this.f16072j, this.f16069g);
        } else if (z10 && this.f16047c) {
            d();
        }
        g();
        return false;
    }

    public final void d() {
        this.f16071i.removeCallbacks(this.f16072j);
        this.f16071i.removeCallbacks(this.f16073k);
        androidx.appcompat.app.d dVar = this.f16074l;
        if (dVar != null) {
            dVar.dismiss();
        }
        this.f16076n = true;
    }

    public final h8.a e() {
        return (h8.a) this.f16075m.getValue();
    }

    public final void f(final boolean z10) {
        androidx.appcompat.app.d dVar;
        String strA;
        if (this.f16066d.isFinishing()) {
            return;
        }
        androidx.appcompat.app.d dVar2 = this.f16074l;
        int i10 = 0;
        if (dVar2 != null && dVar2.isShowing()) {
            return;
        }
        final u uVar = new u();
        b6.b bVar = new b6.b(this.f16066d, R.style.MyThemeOverlay_MaterialComponents_MaterialAlertDialog);
        AlertController.b bVar2 = bVar.f793a;
        bVar2.f771k = false;
        bVar2.f772l = new DialogInterface.OnDismissListener() { // from class: u8.h
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                boolean z11 = z10;
                u uVar2 = uVar;
                q qVar = this;
                p4.h.j(uVar2, "$userClosed");
                p4.h.j(qVar, "this$0");
                if (z11 && uVar2.f14793h) {
                    qVar.f16071i.postDelayed(qVar.f16073k, qVar.f16069g);
                }
            }
        };
        View viewInflate = LayoutInflater.from(this.f16066d).inflate(R.layout.dialog_connection_error, (ViewGroup) null, false);
        int i11 = R.id.dialog_connection_disclaimer_message;
        if (((TextView) g7.b.d(viewInflate, R.id.dialog_connection_disclaimer_message)) != null) {
            i11 = R.id.dialog_connection_error_left_button;
            Button button = (Button) g7.b.d(viewInflate, R.id.dialog_connection_error_left_button);
            if (button != null) {
                i11 = R.id.dialog_connection_error_message;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.dialog_connection_error_message);
                if (textView != null) {
                    i11 = R.id.dialog_connection_error_right_button;
                    Button button2 = (Button) g7.b.d(viewInflate, R.id.dialog_connection_error_right_button);
                    if (button2 != null) {
                        i11 = R.id.dialog_connection_error_title;
                        TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.dialog_connection_error_title);
                        if (textView2 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                            this.f16070h = new n0(constraintLayout, button, textView, button2, textView2);
                            bVar.h(constraintLayout);
                            if (z10) {
                                n0 n0Var = this.f16070h;
                                if (n0Var == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                n0Var.f13936e.setText(androidx.lifecycle.o.r(R.string.adapt_alert_connection_timeout_title));
                                x xVar = x.f12420a;
                                xVar.a("DialogShowing: CONNECTION_ERROR");
                                if (e().f()) {
                                    e().I(false);
                                    xVar.b("IssuesConnectingErrorDisplay", "isConnectAttemptAfterFirmwareUpgrade=false addFatalFailureFWUpgradeRecordBreadCrumb");
                                    v7.d dVarW = e().W();
                                    if (dVarW != null) {
                                        dVarW.f16384j = true;
                                        strA = dVarW.a();
                                    } else {
                                        strA = null;
                                    }
                                    if (strA != null) {
                                        xVar.a(strA);
                                        e().B(null);
                                    }
                                }
                                n0 n0Var2 = this.f16070h;
                                if (n0Var2 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                Button button3 = n0Var2.f13933b;
                                button3.setText(androidx.lifecycle.o.r(R.string.adapt_dismiss_button_title));
                                button3.setOnClickListener(new View.OnClickListener() { // from class: u8.l
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        u uVar2 = uVar;
                                        q qVar = this;
                                        p4.h.j(uVar2, "$userClosed");
                                        p4.h.j(qVar, "this$0");
                                        x.f12420a.a("Pressed: Dismissed");
                                        uVar2.f14793h = true;
                                        androidx.appcompat.app.d dVar3 = qVar.f16074l;
                                        if (dVar3 != null) {
                                            dVar3.dismiss();
                                        }
                                        qVar.f16067e.invoke();
                                    }
                                });
                                n0 n0Var3 = this.f16070h;
                                if (n0Var3 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                Button button4 = n0Var3.f13935d;
                                button4.setText(androidx.lifecycle.o.r(R.string.adapt_try_again_button_title));
                                button4.setOnClickListener(new j(uVar, this, i10));
                            } else {
                                n0 n0Var4 = this.f16070h;
                                if (n0Var4 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                n0Var4.f13936e.setText(androidx.lifecycle.o.r(R.string.adapt_connection_failed_cta_cta_title));
                                x.f12420a.a("DialogShowing: CONNECTION_ERROR");
                                n0 n0Var5 = this.f16070h;
                                if (n0Var5 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                Button button5 = n0Var5.f13933b;
                                button5.setText(androidx.lifecycle.o.r(R.string.adapt_dismiss_button_title));
                                button5.setOnClickListener(new i(uVar, this, i10));
                                n0 n0Var6 = this.f16070h;
                                if (n0Var6 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                Button button6 = n0Var6.f13935d;
                                button6.setText(androidx.lifecycle.o.r(R.string.adapt_connection_failed_cta_cta_title));
                                button6.setOnClickListener(new k(uVar, this, i10));
                            }
                            if (this.f16070h == null) {
                                p4.h.C("binding");
                                throw null;
                            }
                            this.f16074l = bVar.create();
                            if (!this.f16066d.isFinishing() && (dVar = this.f16074l) != null) {
                                dVar.show();
                            }
                            g();
                            return;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    public final void g() {
        if ((this.f16046b && this.f16047c) || this.f16070h == null) {
            return;
        }
        androidx.appcompat.app.d dVar = this.f16074l;
        if (dVar != null && dVar.isShowing()) {
            boolean z10 = this.f16046b;
            if (!z10 && !this.f16047c) {
                n0 n0Var = this.f16070h;
                if (n0Var != null) {
                    n0Var.f13934c.setText(androidx.lifecycle.o.r(R.string.aos_adapt_alert_connection_timeout_body));
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            }
            if (z10) {
                n0 n0Var2 = this.f16070h;
                if (n0Var2 != null) {
                    n0Var2.f13934c.setText(androidx.lifecycle.o.r(R.string.aos_adapt_right_connection_failed_description));
                    return;
                } else {
                    p4.h.C("binding");
                    throw null;
                }
            }
            n0 n0Var3 = this.f16070h;
            if (n0Var3 != null) {
                n0Var3.f13934c.setText(androidx.lifecycle.o.r(R.string.aos_adapt_left_connection_failed_description));
            } else {
                p4.h.C("binding");
                throw null;
            }
        }
    }
}
