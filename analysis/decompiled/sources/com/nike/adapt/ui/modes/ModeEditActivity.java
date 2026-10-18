package com.nike.adapt.ui.modes;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.SnapshotListUpdated;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import ea.e;
import ea.m;
import fe.k;
import gd.n;
import gd.p;
import j0.a0;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import o7.f;
import o7.x;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import q7.d;
import rd.b0;
import u8.c;
import u8.g;
import u8.q;

/* JADX INFO: compiled from: ModeEditActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ModeEditActivity extends p8.a {
    public static final /* synthetic */ int P = 0;
    public d I;
    public IDeviceController J;
    public IAdaptRequester K;
    public e9.d L;
    public m N;
    public List<e> M = p.f8070h;
    public final List<g> O = o.e(new q(this, new a(), 0, 28), new c(R.id.activity_edit_mode, this));

    /* JADX INFO: compiled from: ModeEditActivity.kt */
    public static final class NonScrollableLayoutManager extends LinearLayoutManager {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NonScrollableLayoutManager(Context context) {
            super(context);
            h.j(context, "context");
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.m
        public final boolean h() {
            return false;
        }
    }

    /* JADX INFO: compiled from: ModeEditActivity.kt */
    public static final class a extends rd.o implements qd.a<fd.o> {
        public a() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            ModeEditActivity.this.onBackPressed();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class b<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(((e) t10).f6632m, ((e) t11).f6632m);
        }
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.O;
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1) {
            m mVar = intent != null ? (m) intent.getParcelableExtra("PARAM_MODE_UPDATED") : null;
            if (mVar != null) {
                e9.d dVar = this.L;
                if (dVar == null) {
                    h.C("modeEditAdapter");
                    throw null;
                }
                List listW = h.w(mVar);
                ArrayList arrayList = new ArrayList();
                for (Object obj : listW) {
                    if (!((e) obj).f6629j) {
                        arrayList.add(obj);
                    }
                }
                dVar.n(b0.a(arrayList));
            }
        }
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
        m device = adaptConnectionStatusResult.getDevice();
        this.N = device;
        if (device == null) {
            h.C("adaptKitPairedDevices");
            throw null;
        }
        List listW = h.w(device);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW) {
            if (((e) obj).f6629j) {
                arrayList.add(obj);
            }
        }
        this.M = arrayList;
        e9.d dVar = this.L;
        if (dVar == null) {
            h.C("modeEditAdapter");
            throw null;
        }
        List listI0 = n.i0(listW, new b());
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : listI0) {
            if (!((e) obj2).f6629j) {
                arrayList2.add(obj2);
            }
        }
        dVar.n(b0.a(arrayList2));
    }

    @k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        boolean z10;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        if (!(deviceControllerResult instanceof SnapshotListUpdated)) {
            if (deviceControllerResult instanceof StopAnimationNotificationResult) {
                p7.b bVar = p7.b.f13281a;
                d dVar = this.I;
                if (dVar == null) {
                    h.C("binding");
                    throw null;
                }
                FrameLayout frameLayout = dVar.f13744a;
                h.i(frameLayout, "binding.root");
                p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                return;
            }
            return;
        }
        m device = ((SnapshotListUpdated) deviceControllerResult).getDevice();
        this.N = device;
        if (device == null) {
            h.C("adaptKitPairedDevices");
            throw null;
        }
        List listW = h.w(device);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listW) {
            if (((e) obj).f6629j) {
                arrayList.add(obj);
            }
        }
        this.M = arrayList;
        e9.d dVar2 = this.L;
        if (dVar2 == null) {
            h.C("modeEditAdapter");
            throw null;
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = listW.iterator();
        while (true) {
            z10 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (true ^ ((e) next).f6629j) {
                arrayList2.add(next);
            }
        }
        dVar2.n(b0.a(arrayList2));
        e9.d dVar3 = this.L;
        if (dVar3 == null) {
            h.C("modeEditAdapter");
            throw null;
        }
        List<e> list = dVar3.f6565g;
        if (list != null && !list.isEmpty()) {
            z10 = false;
        }
        if (z10) {
            p0();
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_edit_mode, (ViewGroup) null, false);
        FrameLayout frameLayout = (FrameLayout) viewInflate;
        int i10 = R.id.activity_edit_mode_done;
        if (((TextView) g7.b.d(viewInflate, R.id.activity_edit_mode_done)) != null) {
            i10 = R.id.activity_edit_mode_done_container;
            FrameLayout frameLayout2 = (FrameLayout) g7.b.d(viewInflate, R.id.activity_edit_mode_done_container);
            if (frameLayout2 != null) {
                i10 = R.id.activity_mode_edit_recycle_view;
                RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.activity_mode_edit_recycle_view);
                if (recyclerView != null) {
                    i10 = R.id.messaging_headline_message_1_edit;
                    if (((TextView) g7.b.d(viewInflate, R.id.messaging_headline_message_1_edit)) != null) {
                        i10 = R.id.messaging_headline_title_edit;
                        TextView textView = (TextView) g7.b.d(viewInflate, R.id.messaging_headline_title_edit);
                        if (textView != null) {
                            this.I = new d(frameLayout, frameLayout, frameLayout2, recyclerView, textView);
                            setContentView(frameLayout);
                            p7.b bVar = p7.b.f13281a;
                            d dVar = this.I;
                            if (dVar == null) {
                                h.C("binding");
                                throw null;
                            }
                            FrameLayout frameLayout3 = dVar.f13745b;
                            h.i(frameLayout3, "binding.activityEditMode");
                            int i11 = 2;
                            p7.b.f13281a.e(frameLayout3, InMemoryCache.INSTANCE.getActiveLightPack());
                            this.K = ((f) o.m()).a(this, this.B, c9.f.f4260h, new c9.e(this));
                            this.J = ((f) o.m()).b(this, this.B);
                            this.L = new e9.d(this);
                            d dVar2 = this.I;
                            if (dVar2 == null) {
                                h.C("binding");
                                throw null;
                            }
                            dVar2.f13747d.setLayoutManager(new NonScrollableLayoutManager(this));
                            d dVar3 = this.I;
                            if (dVar3 == null) {
                                h.C("binding");
                                throw null;
                            }
                            RecyclerView recyclerView2 = dVar3.f13747d;
                            e9.d dVar4 = this.L;
                            if (dVar4 == null) {
                                h.C("modeEditAdapter");
                                throw null;
                            }
                            recyclerView2.setAdapter(dVar4);
                            d dVar5 = this.I;
                            if (dVar5 == null) {
                                h.C("binding");
                                throw null;
                            }
                            dVar5.f13746c.setOnClickListener(new w8.b(this, i11));
                            d dVar6 = this.I;
                            if (dVar6 != null) {
                                a0.q(dVar6.f13748e, true);
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
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    public final void p0() {
        m mVarA;
        x.f12420a.a("Pressed: Mode Edit Save");
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = this.M.iterator();
        while (it.hasNext()) {
            arrayList.add((e) it.next());
        }
        e9.d dVar = this.L;
        if (dVar == null) {
            h.C("modeEditAdapter");
            throw null;
        }
        List<e> list = dVar.f6565g;
        if (list != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    o.L();
                    throw null;
                }
                arrayList.add(e.a((e) obj, null, Integer.valueOf(i10), 31));
                i10 = i11;
            }
        }
        e9.d dVar2 = this.L;
        if (dVar2 == null) {
            h.C("modeEditAdapter");
            throw null;
        }
        List<e> list2 = dVar2.f6565g;
        if (list2 != null) {
            n.l0(list2);
            m mVar = this.N;
            if (mVar == null) {
                h.C("adaptKitPairedDevices");
                throw null;
            }
            mVarA = m.a(mVar, null, false, null, null, null, null, arrayList, 0L, false, 8063);
        } else {
            mVarA = null;
        }
        IDeviceController iDeviceController = this.J;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.updatePair(mVarA);
        Intent intent = new Intent();
        intent.putExtra("PARAM_MODE_UPDATED", mVarA);
        setResult(-1, intent);
        onBackPressed();
    }
}
