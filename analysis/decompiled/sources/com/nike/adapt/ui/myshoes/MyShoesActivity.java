package com.nike.adapt.ui.myshoes;

import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.DeviceListRepository;
import com.nike.adapt.adk.GetFirmwareVersionResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.analytics.TrackManager;
import ea.m;
import f9.b;
import f9.e;
import f9.f;
import fe.k;
import g7.c;
import h9.v0;
import java.util.ArrayList;
import java.util.Objects;
import o7.s;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.q;
import q7.e2;
import q7.r;
import t9.d;

/* JADX INFO: compiled from: MyShoesActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MyShoesActivity extends q {
    public static final /* synthetic */ int K = 0;
    public r E;
    public t9.a F = new t9.a();
    public IDeviceController G;
    public IAdaptRequester H;
    public b I;
    public boolean J;

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, android.app.Activity
    public final void onActivityResult(int i10, int i11, Intent intent) {
        super.onActivityResult(i10, i11, intent);
        if (i11 == -1) {
            this.J = true;
            IAdaptRequester iAdaptRequester = this.H;
            if (iAdaptRequester == null) {
                h.C("adaptRequester");
                throw null;
            }
            if (iAdaptRequester == null) {
                h.C("adaptRequester");
                throw null;
            }
            m mVarFindOrSetDefaultDevice = iAdaptRequester.findOrSetDefaultDevice(DeviceListRepository.getLocalDevices$default(DeviceListRepository.INSTANCE, null, 1, null));
            if (mVarFindOrSetDefaultDevice == null) {
                return;
            }
            iAdaptRequester.connect(mVarFindOrSetDefaultDevice);
        }
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.ArrayList, java.util.List<f9.f>] */
    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        this.F.b(adaptConnectionStatusResult);
        if (adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) {
            if (adaptConnectionStatusResult.getDevice() == null) {
                return;
            }
            IDeviceController iDeviceController = this.G;
            if (iDeviceController == null) {
                h.C("deviceController");
                throw null;
            }
            iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
            if (this.F.a()) {
                b bVar = this.I;
                if (bVar == null) {
                    h.C("myShoesAdapter");
                    throw null;
                }
                bVar.r(adaptConnectionStatusResult.getDevice(), InMemoryCache.INSTANCE.getHasShoeUpdates());
            }
        }
        if (adaptConnectionStatusResult.getDevice() != null) {
            b bVar2 = this.I;
            if (bVar2 == null) {
                h.C("myShoesAdapter");
                throw null;
            }
            m device = adaptConnectionStatusResult.getDevice();
            Shoe shoe = adaptConnectionStatusResult.getShoe();
            d dVarE = c.e(adaptConnectionStatusResult);
            h.j(device, "device");
            h.j(shoe, "shoe");
            ArrayList<f> arrayList = new ArrayList();
            for (f fVar : bVar2.f7093e) {
                arrayList.add(new f(m.a(fVar.f7107a, null, false, null, null, null, null, null, 0L, false, 8191), fVar.f7108b, fVar.f7109c, fVar.f7110d));
            }
            int iP = bVar2.p(arrayList, device);
            if (iP < 0 || iP > arrayList.size()) {
                return;
            }
            int i10 = b.C0127b.f7099a[shoe.ordinal()];
            if (i10 == 1) {
                f fVar2 = (f) arrayList.get(iP);
                Objects.requireNonNull(fVar2);
                fVar2.f7108b = dVarE;
            } else if (i10 == 2) {
                f fVar3 = (f) arrayList.get(iP);
                Objects.requireNonNull(fVar3);
                fVar3.f7109c = dVarE;
            } else if (i10 == 3) {
                f fVar4 = (f) arrayList.get(iP);
                Objects.requireNonNull(fVar4);
                fVar4.f7108b = dVarE;
                f fVar5 = (f) arrayList.get(iP);
                Objects.requireNonNull(fVar5);
                fVar5.f7109c = dVarE;
            }
            for (f fVar6 : arrayList) {
                if (!h.c(fVar6.f7107a, device) && dVarE == d.CONNECTED) {
                    d dVar = d.DISCONNECTED;
                    fVar6.f7108b = dVar;
                    fVar6.f7109c = dVar;
                }
            }
            gd.k.V(arrayList, hd.a.a(f9.c.f7104h, f9.d.f7105h, e.f7106h));
            bVar2.m(arrayList);
        }
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (!AdaptEventResponderKt.block(deviceControllerResult, this.B) && (deviceControllerResult instanceof GetFirmwareVersionResult)) {
            b bVar = this.I;
            if (bVar != null) {
                bVar.r(null, InMemoryCache.INSTANCE.getHasShoeUpdates());
            } else {
                h.C("myShoesAdapter");
                throw null;
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        super.onBackPressed();
        if (this.J) {
            new v0(false, 1, null).e(this);
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_my_shoes, (ViewGroup) null, false);
        int i10 = R.id.activity_my_shoes_add;
        FloatingActionButton floatingActionButton = (FloatingActionButton) g7.b.d(viewInflate, R.id.activity_my_shoes_add);
        if (floatingActionButton != null) {
            i10 = R.id.activity_my_shoes_container;
            if (((FrameLayout) g7.b.d(viewInflate, R.id.activity_my_shoes_container)) != null) {
                i10 = R.id.activity_my_shoes_recycle_view;
                RecyclerView recyclerView = (RecyclerView) g7.b.d(viewInflate, R.id.activity_my_shoes_recycle_view);
                if (recyclerView != null) {
                    i10 = R.id.view_toolbar;
                    View viewD = g7.b.d(viewInflate, R.id.view_toolbar);
                    if (viewD != null) {
                        e2.a(viewD);
                        LinearLayout linearLayout = (LinearLayout) viewInflate;
                        this.E = new r(linearLayout, floatingActionButton, recyclerView);
                        setContentView(linearLayout);
                        CharSequence charSequenceR = o.r(R.string.adapt_myshoes_index_headline);
                        View viewFindViewById = findViewById(R.id.bgf_toolbar);
                        h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                        k0((Toolbar) viewFindViewById);
                        f.a aVarI0 = i0();
                        if (aVarI0 != null) {
                            aVarI0.o(charSequenceR);
                            aVarI0.m(true);
                        }
                        this.H = ((o7.f) o.m()).a(this, this.B, s.a.C0221a.f12405h, s.a.b.f12406h);
                        this.G = ((o7.f) o.m()).b(this, this.B);
                        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                        r rVar = this.E;
                        if (rVar == null) {
                            h.C("binding");
                            throw null;
                        }
                        rVar.f13983b.setLayoutManager(linearLayoutManager);
                        b bVar = new b(this);
                        bVar.q(DeviceListRepository.getLocalDevices$default(DeviceListRepository.INSTANCE, null, 1, null));
                        this.I = bVar;
                        TrackManager.INSTANCE.multipairIconSelected(bVar.a());
                        r rVar2 = this.E;
                        if (rVar2 == null) {
                            h.C("binding");
                            throw null;
                        }
                        RecyclerView recyclerView2 = rVar2.f13983b;
                        b bVar2 = this.I;
                        if (bVar2 == null) {
                            h.C("myShoesAdapter");
                            throw null;
                        }
                        recyclerView2.setAdapter(bVar2);
                        r rVar3 = this.E;
                        if (rVar3 != null) {
                            rVar3.f13982a.setOnClickListener(new w8.c(this, 3));
                            return;
                        } else {
                            h.C("binding");
                            throw null;
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

    @Override // p8.q, androidx.fragment.app.p, android.app.Activity
    public final void onResume() {
        super.onResume();
        b bVar = this.I;
        if (bVar != null) {
            bVar.q(DeviceListRepository.getLocalDevices$default(DeviceListRepository.INSTANCE, null, 1, null));
        } else {
            h.C("myShoesAdapter");
            throw null;
        }
    }
}
