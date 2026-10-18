package com.nike.adapt.service;

import android.app.Application;
import android.content.SharedPreferences;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.AdaptMarshallerKt;
import com.nike.adapt.adk.FirmwareBatteryTooLowResult;
import com.nike.adapt.adk.FirmwareCompletedResult;
import com.nike.adapt.adk.FirmwareConnectionLostResult;
import com.nike.adapt.adk.FirmwareFailureResult;
import com.nike.adapt.adk.FirmwareFetchingDataResult;
import com.nike.adapt.adk.FirmwareFlashingResult;
import com.nike.adapt.adk.FirmwareInProgressResult;
import com.nike.adapt.adk.FirmwareNoUpdateAvailableResult;
import com.nike.adapt.adk.FirmwareNotStartedResult;
import com.nike.adapt.adk.FirmwareReconnectingResult;
import com.nike.adapt.analytics.TrackManager;
import fa.d;
import fa.i;
import fa.k;
import h8.c;
import java.util.Objects;
import java.util.Timer;
import n8.n;
import o7.x;
import p4.h;
import qd.l;
import rd.o;

/* JADX INFO: compiled from: FirmwareUpdateService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends o implements l<d, fd.o> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirmwareUpdateService f5703h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(FirmwareUpdateService firmwareUpdateService) {
        super(1);
        this.f5703h = firmwareUpdateService;
    }

    @Override // qd.l
    public final fd.o invoke(d dVar) {
        d dVar2 = dVar;
        h.j(dVar2, "it");
        i iVar = dVar2.f7140k;
        if (iVar instanceof i.a) {
            FirmwareUpdateService.b(this.f5703h, iVar.toString());
            Application application = this.f5703h.getApplication();
            h.h(application, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
            ((BigfootApplication) application).f5650k = null;
            FirmwareUpdateService.c(this.f5703h, FirmwareBatteryTooLowResult.INSTANCE);
        } else if (iVar instanceof i.b) {
            x.f12420a.a("FirmwareUpdateCrumb " + this.f5703h.f5689h + " handleComplete");
            FirmwareUpdateService firmwareUpdateService = this.f5703h;
            firmwareUpdateService.d(new a(firmwareUpdateService));
            Application application2 = this.f5703h.getApplication();
            h.h(application2, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
            ((BigfootApplication) application2).f5650k = null;
            FirmwareUpdateService.c(this.f5703h, FirmwareCompletedResult.INSTANCE);
        } else if (iVar instanceof i.c) {
            FirmwareUpdateService.a(this.f5703h, "FW_CONNECTION_LOST_ERROR");
            FirmwareUpdateService.b(this.f5703h, iVar.toString());
            Application application3 = this.f5703h.getApplication();
            h.h(application3, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
            ((BigfootApplication) application3).f5650k = null;
            FirmwareUpdateService.c(this.f5703h, FirmwareConnectionLostResult.INSTANCE);
        } else if (iVar instanceof i.d) {
            if ((dVar2.f7137h.f7136j instanceof k.m) || (dVar2.f7138i.f7136j instanceof k.m)) {
                FirmwareUpdateService.a(this.f5703h, "FW_FLASH_ERROR");
            } else {
                FirmwareUpdateService.a(this.f5703h, "FW_PROGRESS_ERROR");
            }
            FirmwareUpdateService.b(this.f5703h, iVar.toString());
            Application application4 = this.f5703h.getApplication();
            h.h(application4, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
            ((BigfootApplication) application4).f5650k = null;
            FirmwareUpdateService.c(this.f5703h, new FirmwareFailureResult(AdaptMarshallerKt.parseTo(dVar2.f7139j.f7136j)));
        } else if (iVar instanceof i.e) {
            FirmwareUpdateService firmwareUpdateService2 = this.f5703h;
            firmwareUpdateService2.f5697p = 0.0f;
            firmwareUpdateService2.f(1);
            FirmwareUpdateService.c(this.f5703h, FirmwareFetchingDataResult.INSTANCE);
        } else if (iVar instanceof i.f) {
            c cVar = c.f8298b;
            long jCurrentTimeMillis = System.currentTimeMillis();
            SharedPreferences.Editor editorEdit = cVar.m0().edit();
            h.i(editorEdit, "editor");
            editorEdit.putLong("PREF_TIMER_FOR_RESTART_FROM_FLASH", jCurrentTimeMillis + ((long) 120000));
            editorEdit.apply();
            TrackManager.INSTANCE.softwareFlashSuccess();
            x.f12420a.a("ADK_FW_UPDATE_COMPLETE");
            FirmwareUpdateService firmwareUpdateService3 = this.f5703h;
            firmwareUpdateService3.f5691j.B(FirmwareUpdateService.a(firmwareUpdateService3, null));
            this.f5703h.f5697p = 100.0f;
            s7.b.f15149a.a(FirmwareFlashingResult.INSTANCE);
        } else if (iVar instanceof i.g) {
            FirmwareUpdateService firmwareUpdateService4 = this.f5703h;
            i.g gVar = (i.g) iVar;
            firmwareUpdateService4.f5697p = gVar.f7170h;
            firmwareUpdateService4.f(1);
            FirmwareUpdateService.c(this.f5703h, new FirmwareInProgressResult(gVar.f7170h));
        } else if (iVar instanceof i.h) {
            FirmwareUpdateService.b(this.f5703h, iVar.toString());
            Application application5 = this.f5703h.getApplication();
            h.h(application5, "null cannot be cast to non-null type com.nike.adapt.BigfootApplication");
            ((BigfootApplication) application5).f5650k = null;
            FirmwareUpdateService.c(this.f5703h, FirmwareNoUpdateAvailableResult.INSTANCE);
        } else if (iVar instanceof i.C0132i) {
            FirmwareUpdateService.c(this.f5703h, FirmwareNotStartedResult.INSTANCE);
        } else if (iVar instanceof i.j) {
            FirmwareUpdateService firmwareUpdateService5 = this.f5703h;
            FirmwareUpdateService.a aVar = FirmwareUpdateService.f5688s;
            firmwareUpdateService5.e();
            this.f5703h.f(2);
            FirmwareUpdateService firmwareUpdateService6 = this.f5703h;
            Objects.requireNonNull(firmwareUpdateService6);
            x.f12420a.a("FirmwareUpdateCrumb " + firmwareUpdateService6.f5689h + " startRequestConnectionTimer");
            Timer timer = firmwareUpdateService6.f5694m;
            if (timer != null) {
                timer.cancel();
            }
            firmwareUpdateService6.f5694m = null;
            Timer timer2 = new Timer("fw_upgrade_connection_timer");
            timer2.schedule(new n(firmwareUpdateService6), 30000L);
            firmwareUpdateService6.f5694m = timer2;
            FirmwareUpdateService.c(this.f5703h, FirmwareReconnectingResult.INSTANCE);
        }
        return fd.o.f7408a;
    }
}
