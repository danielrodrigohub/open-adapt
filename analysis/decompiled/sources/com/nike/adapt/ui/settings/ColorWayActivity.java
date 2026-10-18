package com.nike.adapt.ui.settings;

import a0.d;
import android.content.Intent;
import android.os.Bundle;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.network.assets.model.Colorway;
import com.nike.adapt.network.assets.model.ColorwayV1;
import com.nike.adapt.network.assets.model.Configuration;
import com.nike.adapt.network.assets.model.Manifest;
import com.nike.adapt.network.assets.model.Settings;
import ea.m;
import fe.k;
import g7.b;
import gd.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import o7.f;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.a;
import q7.e2;
import q7.k0;
import s9.p;
import s9.q;
import s9.r;

/* JADX INFO: compiled from: ColorWayActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ColorWayActivity extends a {
    public k0 I;
    public List<p.a> J;
    public m K;
    public IDeviceController L;
    public IAdaptRequester M;
    public int N = -1;

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
        IDeviceController iDeviceController = this.L;
        if (iDeviceController == null) {
            h.C("deviceController");
            throw null;
        }
        iDeviceController.subscribe(adaptConnectionStatusResult.getDevice());
        this.K = adaptConnectionStatusResult.getDevice();
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        String str;
        int i10 = this.N;
        if (i10 != -1) {
            List<p.a> list = this.J;
            if (list == null) {
                h.C("supportedColorWayList");
                throw null;
            }
            str = list.get(i10).f15225b;
        } else {
            str = "";
        }
        if (this.N != -1) {
            m mVar = this.K;
            if (mVar == null) {
                h.C("adaptKitPairedDevices");
                throw null;
            }
            if (!h.c(mVar.f6670n, str)) {
                m mVar2 = this.K;
                if (mVar2 == null) {
                    h.C("adaptKitPairedDevices");
                    throw null;
                }
                m mVarA = m.a(mVar2, null, false, null, null, null, str, null, 0L, false, 8127);
                this.K = mVarA;
                IDeviceController iDeviceController = this.L;
                if (iDeviceController == null) {
                    h.C("deviceController");
                    throw null;
                }
                iDeviceController.updatePair(mVarA);
                TrackManager.INSTANCE.multipairColorWayColorSelected(str);
                Intent intent = new Intent();
                m mVar3 = this.K;
                if (mVar3 == null) {
                    h.C("adaptKitPairedDevices");
                    throw null;
                }
                setResult(-1, intent.putExtra("PARAM_MODE_UPDATED", mVar3));
            }
        }
        super.onBackPressed();
        overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
    }

    /* JADX WARN: Code duplicated, block: B:68:0x01a6  */
    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        List<p.a> list;
        boolean zContains;
        Configuration configuration;
        Settings settings;
        ColorwayV1 colorwayV1;
        boolean zC;
        super.onCreate(bundle);
        boolean z10 = false;
        View viewInflate = getLayoutInflater().inflate(R.layout.color_way_activity, (ViewGroup) null, false);
        int i10 = R.id.color_way_activity_recycle_view;
        RecyclerView recyclerView = (RecyclerView) b.d(viewInflate, R.id.color_way_activity_recycle_view);
        if (recyclerView != null) {
            i10 = R.id.view_toolbar;
            View viewD = b.d(viewInflate, R.id.view_toolbar);
            if (viewD != null) {
                e2.a(viewD);
                ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                this.I = new k0(constraintLayout, recyclerView);
                setContentView(constraintLayout);
                CharSequence charSequenceR = o.r(R.string.adapt_myshoes_shoecolor_headline);
                View viewFindViewById = findViewById(R.id.bgf_toolbar);
                h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                k0((Toolbar) viewFindViewById);
                f.a aVarI0 = i0();
                if (aVarI0 != null) {
                    aVarI0.o(charSequenceR);
                    aVarI0.m(true);
                }
                this.M = ((f) o.m()).a(this, this.B, m9.b.f10835h, new m9.a(this));
                this.L = ((f) o.m()).b(this, this.B);
                Bundle extras = getIntent().getExtras();
                String string = extras != null ? extras.getString("selected_color_way") : null;
                p pVar = p.f15222a;
                r rVar = r.JORDAN_2;
                r rVar2 = r.JORDAN;
                ArrayList arrayList = new ArrayList();
                r rVarK = pVar.k(string);
                String strI = pVar.i(rVarK);
                if (strI != null) {
                    Manifest manifest = InMemoryCache.INSTANCE.getManifest();
                    if (manifest != null && (configuration = manifest.getConfiguration()) != null && (settings = configuration.getSettings()) != null && (colorwayV1 = settings.getColorwayV1()) != null) {
                        List<Colorway> colorways = colorwayV1.getColorways();
                        ArrayList<Colorway> arrayList2 = new ArrayList();
                        for (Object obj : colorways) {
                            Colorway colorway = (Colorway) obj;
                            if (rVarK != null) {
                                if ((rVarK == rVar2 || rVarK == rVar) ? true : z10) {
                                    z10 = true;
                                }
                            }
                            if (z10) {
                                String shoeIdentifier = colorway.getShoeIdentifier();
                                p pVar2 = p.f15222a;
                                zC = h.c(shoeIdentifier, pVar2.i(rVar2)) || h.c(colorway.getShoeIdentifier(), pVar2.i(rVar));
                            } else {
                                zC = h.c(colorway.getShoeIdentifier(), strI);
                            }
                            if (zC) {
                                arrayList2.add(obj);
                            }
                            z10 = false;
                        }
                        for (Colorway colorway2 : arrayList2) {
                            h.j(colorway2, "colorway");
                            String str = (String) n.a0(colorway2.getStyleCodes());
                            if (str != null) {
                                arrayList.add(new p.a(colorway2.getColorName(), d.c(colorway2.getShoeIdentifier(), "-", str), colorway2.getIdentifier()));
                            }
                        }
                    }
                    int size = arrayList.size();
                    list = arrayList;
                    if (size > 1) {
                        gd.k.V(arrayList, new q());
                        list = arrayList;
                    }
                } else {
                    list = gd.p.f8070h;
                }
                this.J = list;
                Iterator<p.a> it = list.iterator();
                int i11 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i11 = -1;
                        break;
                    }
                    p.a next = it.next();
                    p pVar3 = p.f15222a;
                    Colorway colorwayC = pVar3.c(next.f15225b);
                    Colorway colorwayC2 = pVar3.c(string);
                    if (colorwayC == null || colorwayC2 == null) {
                        zContains = false;
                    } else {
                        Iterator<T> it2 = colorwayC.getStyleCodes().iterator();
                        if (it2.hasNext()) {
                            zContains = colorwayC2.getStyleCodes().contains((String) it2.next());
                        } else {
                            zContains = false;
                        }
                    }
                    if (zContains) {
                        break;
                    } else {
                        i11++;
                    }
                }
                this.N = i11;
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(1);
                k0 k0Var = this.I;
                if (k0Var == null) {
                    h.C("binding");
                    throw null;
                }
                k0Var.f13898a.setLayoutManager(linearLayoutManager);
                List<p.a> list2 = this.J;
                if (list2 == null) {
                    h.C("supportedColorWayList");
                    throw null;
                }
                m9.d dVar = new m9.d(this, list2, this.N);
                k0 k0Var2 = this.I;
                if (k0Var2 != null) {
                    k0Var2.f13898a.setAdapter(dVar);
                    return;
                } else {
                    h.C("binding");
                    throw null;
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
}
