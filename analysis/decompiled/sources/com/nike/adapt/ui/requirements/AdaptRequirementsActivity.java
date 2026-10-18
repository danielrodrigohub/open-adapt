package com.nike.adapt.ui.requirements;

import aa.a;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.adk.IDeviceCacheADK;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.ui.requirements.AdaptRequirementsActivity;
import e9.f;
import f.e;
import j0.a0;
import ja.d;
import o7.h;
import o7.x;
import okhttp3.internal.http.HttpStatusCodesKt;
import q7.b;
import wa.k;
import x8.j0;

/* JADX INFO: compiled from: AdaptRequirementsActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class AdaptRequirementsActivity extends e implements h, TraceFieldInterface {
    public static final /* synthetic */ int C = 0;
    public b A;
    public final k B = k.f17583b;

    public final void l0(ja.b bVar) {
        if (a.a()) {
            b bVar2 = this.A;
            if (bVar2 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar2.f13713b.setVisibility(8);
            b bVar3 = this.A;
            if (bVar3 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar3.f13714c.setVisibility(8);
            b bVar4 = this.A;
            if (bVar4 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar4.f13712a.setEnabled(bVar.c() instanceof d);
            b bVar5 = this.A;
            if (bVar5 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar5.f13715d.setEnabled((bVar.d() instanceof d) || (bVar.e() instanceof d));
            b bVar6 = this.A;
            if (bVar6 == null) {
                p4.h.C("binding");
                throw null;
            }
            if (bVar6.f13715d.isEnabled()) {
                b bVar7 = this.A;
                if (bVar7 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                bVar7.f13712a.setVisibility(8);
            } else {
                b bVar8 = this.A;
                if (bVar8 == null) {
                    p4.h.C("binding");
                    throw null;
                }
                bVar8.f13712a.setVisibility(0);
            }
        } else {
            b bVar9 = this.A;
            if (bVar9 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar9.f13715d.setVisibility(8);
            b bVar10 = this.A;
            if (bVar10 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar10.f13713b.setEnabled(bVar.b() instanceof d);
            b bVar11 = this.A;
            if (bVar11 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar11.f13714c.setEnabled(bVar.a() instanceof d);
            b bVar12 = this.A;
            if (bVar12 == null) {
                p4.h.C("binding");
                throw null;
            }
            bVar12.f13712a.setEnabled(bVar.c() instanceof d);
        }
        if (bVar.f()) {
            onBackPressed();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (((ja.a) this.B.a(this)).f()) {
            super.onBackPressed();
        } else {
            moveTaskToBack(true);
        }
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        TraceMachine.startTracing("AdaptRequirementsActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "AdaptRequirementsActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        IDeviceCacheADK leftDevice = inMemoryCache.getLeftDevice();
        v9.e eVar = v9.e.NOT_INITIATED;
        leftDevice.setLastKnownConnectionState(eVar);
        inMemoryCache.getRightDevice().setLastKnownConnectionState(eVar);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_app_requirements, (ViewGroup) null, false);
        int i10 = R.id.activity_app_requirements_bluetooth_services;
        Button button = (Button) g7.b.d(viewInflate, R.id.activity_app_requirements_bluetooth_services);
        if (button != null) {
            i10 = R.id.activity_app_requirements_location_permission;
            Button button2 = (Button) g7.b.d(viewInflate, R.id.activity_app_requirements_location_permission);
            if (button2 != null) {
                i10 = R.id.activity_app_requirements_location_services;
                Button button3 = (Button) g7.b.d(viewInflate, R.id.activity_app_requirements_location_services);
                if (button3 != null) {
                    i10 = R.id.activity_app_requirements_nearby_devices;
                    Button button4 = (Button) g7.b.d(viewInflate, R.id.activity_app_requirements_nearby_devices);
                    if (button4 != null) {
                        i10 = R.id.messaging_headline_message_1;
                        if (((TextView) g7.b.d(viewInflate, R.id.messaging_headline_message_1)) != null) {
                            i10 = R.id.messaging_headline_title;
                            TextView textView = (TextView) g7.b.d(viewInflate, R.id.messaging_headline_title);
                            if (textView != null) {
                                LinearLayout linearLayout = (LinearLayout) viewInflate;
                                this.A = new b(linearLayout, button, button2, button3, button4, textView);
                                setContentView(linearLayout);
                                b bVar = this.A;
                                if (bVar == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                bVar.f13713b.setOnClickListener(new r9.a(new f(this, 1), HttpStatusCodesKt.HTTP_OK));
                                b bVar2 = this.A;
                                if (bVar2 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                bVar2.f13714c.setOnClickListener(new r9.a(new View.OnClickListener() { // from class: l9.a
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i11 = AdaptRequirementsActivity.C;
                                        x.f12420a.a("Pressed: Location Services Required");
                                        Context context = view.getContext();
                                        p4.h.i(context, "it.context");
                                        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                                        intent.addFlags(268435456);
                                        intent.addFlags(1073741824);
                                        intent.addFlags(8388608);
                                        context.startActivity(intent);
                                    }
                                }, HttpStatusCodesKt.HTTP_OK));
                                b bVar3 = this.A;
                                if (bVar3 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                bVar3.f13712a.setOnClickListener(new r9.a(new o8.f(this, 3), HttpStatusCodesKt.HTTP_OK));
                                b bVar4 = this.A;
                                if (bVar4 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                bVar4.f13715d.setOnClickListener(new r9.a(new j0(this, 5), HttpStatusCodesKt.HTTP_OK));
                                l0(this.B.a(this));
                                b bVar5 = this.A;
                                if (bVar5 == null) {
                                    p4.h.C("binding");
                                    throw null;
                                }
                                a0.q(bVar5.f13716e, true);
                                TraceMachine.exitMethod();
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr) {
        p4.h.j(strArr, "permissions");
        p4.h.j(iArr, "grantResults");
        super.onRequestPermissionsResult(i10, strArr, iArr);
        int i11 = 0;
        if (i10 == 23) {
            int length = strArr.length;
            while (i11 < length) {
                String str = strArr[i11];
                if (iArr[i11] != -1) {
                    l0(this.B.a(this));
                } else if (!shouldShowRequestPermissionRationale(str)) {
                    h9.b.f8314a.e(this);
                }
                i11++;
            }
            return;
        }
        if (i10 != 34) {
            return;
        }
        int length2 = strArr.length;
        while (i11 < length2) {
            String str2 = strArr[i11];
            if (iArr[i11] != -1) {
                l0(this.B.a(this));
            } else if (!shouldShowRequestPermissionRationale(str2)) {
                h9.b.f8314a.e(this);
            }
            i11++;
        }
    }

    @Override // androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        l0(this.B.a(this));
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
