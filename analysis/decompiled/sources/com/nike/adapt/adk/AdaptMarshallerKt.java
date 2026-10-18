package com.nike.adapt.adk;

import a8.b;
import a8.j;
import a8.k;
import a8.m;
import ba.d0;
import ba.e;
import ba.e0;
import ba.f;
import ba.f0;
import ba.g;
import ba.g0;
import ba.i;
import ba.i0;
import ba.k0;
import ba.n;
import ba.o;
import ba.o0;
import ba.r;
import ba.s;
import ba.t;
import ba.u;
import ba.w;
import ba.x;
import com.nike.adapt.adk.model.AdaptAnimation;
import com.nike.adapt.adk.model.AdaptAppAnimationColor;
import com.nike.adapt.adk.model.AdaptAppAnimationFrame;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptCustomAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceMode;
import com.nike.adapt.adk.model.AdaptFirmwareCheckStatuses;
import com.nike.adapt.adk.model.AdaptFirmwareStage;
import com.nike.adapt.adk.model.AdaptFirmwareStatus;
import com.nike.adapt.adk.model.AdaptFirmwareUpdateState;
import com.nike.adapt.adk.model.AdaptFirmwareVersion;
import com.nike.adapt.adk.model.AdaptGestureAction;
import com.nike.adapt.adk.model.AdaptGestureClassification;
import com.nike.adapt.adk.model.AdaptGestureConfiguration;
import com.nike.adapt.adk.model.AdaptGestureNotification;
import com.nike.adapt.adk.model.Battery;
import com.nike.adapt.adk.model.BatteryState;
import com.nike.adapt.presenter.profile.AdaptUser;
import ea.d;
import fb.c;
import ga.a;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import p4.h;
import qd.l;

/* JADX INFO: compiled from: AdaptMarshaller.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptMarshallerKt {

    /* JADX INFO: compiled from: AdaptMarshaller.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;
        public static final /* synthetic */ int[] $EnumSwitchMapping$2;

        static {
            int[] iArr = new int[e.b.values().length];
            iArr[e.b.ON_CHARGER.ordinal()] = 1;
            iArr[e.b.OFF_CHARGER.ordinal()] = 2;
            iArr[e.b.ON_CHARGING.ordinal()] = 3;
            iArr[e.b.CHARGING_ERROR.ordinal()] = 4;
            iArr[e.b.ERROR.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[g.c.values().length];
            iArr2[0] = 1;
            iArr2[1] = 2;
            iArr2[2] = 3;
            iArr2[3] = 4;
            iArr2[4] = 5;
            iArr2[5] = 6;
            $EnumSwitchMapping$1 = iArr2;
            int[] iArr3 = new int[g.d.values().length];
            iArr3[0] = 1;
            iArr3[1] = 2;
            iArr3[2] = 3;
            iArr3[3] = 4;
            $EnumSwitchMapping$2 = iArr3;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0024  */
    /* JADX WARN: Code duplicated, block: B:15:? A[RETURN, SYNTHETIC] */
    public static final <T> T firstOrDefault(T[] tArr, T t10, l<? super T, Boolean> lVar) {
        h.j(tArr, "<this>");
        h.j(lVar, "function");
        for (T t11 : tArr) {
            if (lVar.invoke(t11).booleanValue()) {
                if (t11 == null) {
                    return t10;
                }
                return t11;
            }
        }
        t11 = null;
        if (t11 == null) {
            return t10;
        }
        return t11;
    }

    public static final f getAdaptKitColorPreset(AdaptDeviceColor adaptDeviceColor) {
        h.j(adaptDeviceColor, "shoeLed");
        try {
            f fVarB = f.f3647l.b(adaptDeviceColor.getAdaptColorPreset().getRed(), adaptDeviceColor.getAdaptColorPreset().getGreen(), adaptDeviceColor.getAdaptColorPreset().getBlue());
            return fVarB == null ? f.HERO_BLUE : fVarB;
        } catch (Exception unused) {
            return f.HERO_BLUE;
        }
    }

    public static final AdaptFirmwareVersion parse(c cVar) {
        h.j(cVar, "<this>");
        return new AdaptFirmwareVersion(cVar.f7257h);
    }

    public static final List<a> parseFrom(List<? extends AdaptGestureConfiguration> list) {
        h.j(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (AdaptGestureConfiguration adaptGestureConfiguration : list) {
            if (h.c(adaptGestureConfiguration, AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE)) {
                arrayList.add(a.d.f7902k);
            } else if (h.c(adaptGestureConfiguration, AdaptGestureConfiguration.DoubleTapTraining.INSTANCE)) {
                arrayList.add(a.c.f7901k);
            } else if (h.c(adaptGestureConfiguration, AdaptGestureConfiguration.Off.INSTANCE)) {
                arrayList.add(a.g.f7916k);
            }
        }
        return arrayList;
    }

    public static final List<AdaptDeviceMode> parseModes(List<ea.e> list) {
        h.j(list, "<this>");
        ArrayList arrayList = new ArrayList();
        for (ea.e eVar : list) {
            arrayList.add(new AdaptDeviceMode(eVar.f6627h, eVar.f6628i, eVar.f6629j, eVar.f6630k, eVar.f6631l, eVar.f6632m));
        }
        return arrayList;
    }

    public static final AdaptFirmwareCheckStatuses parseTo(fa.a aVar) {
        h.j(aVar, "<this>");
        return new AdaptFirmwareCheckStatuses(parseTo(aVar.f7121a), parseTo(aVar.f7122b));
    }

    public static final f getAdaptKitColorPreset(AdaptMarshaller.AdaptPreset adaptPreset) {
        h.j(adaptPreset, "preset");
        try {
            f fVarB = f.f3647l.b(adaptPreset.getRed(), adaptPreset.getGreen(), adaptPreset.getBlue());
            return fVarB == null ? f.HERO_BLUE : fVarB;
        } catch (Exception unused) {
            return f.HERO_BLUE;
        }
    }

    public static final a8.l parseTo(i iVar) {
        h.j(iVar, "<this>");
        k0 k0Var = iVar.f3687l;
        k kVar = new k(k0Var.f3703i, k0Var.f3704j, k0Var.f3705k, k0Var.f3702h);
        n nVar = iVar.f3684i;
        b bVar = new b(nVar.f3718h, nVar.f3719i);
        o0 o0Var = iVar.f3688m;
        m mVar = new m(o0Var.f3722h, o0Var.f3724j, o0Var.f3725k, o0Var.f3723i);
        r rVar = iVar.f3685j;
        a8.c cVar = new a8.c(rVar.f3728h, rVar.f3729i, rVar.f3730j, rVar.f3731k, rVar.f3732l, rVar.f3733m, rVar.f3734n, rVar.f3735o, rVar.f3736p);
        w wVar = iVar.f3689n;
        a8.e eVar = new a8.e(wVar.f3742h, wVar.f3743i);
        i0 i0Var = iVar.f3686k;
        a8.g gVar = new a8.g(i0Var.f3691i, i0Var.f3690h, i0Var.f3693k, i0Var.f3698p, i0Var.f3694l, i0Var.f3695m, i0Var.f3692j, i0Var.f3696n, i0Var.f3697o, -1, -1, -1);
        ba.m mVar2 = iVar.f3683h;
        return new a8.l(kVar, bVar, mVar, cVar, eVar, gVar, new a8.a(mVar2.f3715o, mVar2.f3709i, mVar2.f3710j, mVar2.f3708h, mVar2.f3711k, mVar2.f3713m, mVar2.f3712l, mVar2.f3714n, mVar2.f3716p));
    }

    public static final Battery parseTo(e eVar) {
        BatteryState batteryState;
        h.j(eVar, "<this>");
        int i10 = eVar.f3631h;
        int i11 = WhenMappings.$EnumSwitchMapping$0[eVar.f3632i.ordinal()];
        if (i11 == 1) {
            batteryState = BatteryState.ON_CHARGER;
        } else if (i11 == 2) {
            batteryState = BatteryState.OFF_CHARGER;
        } else if (i11 == 3) {
            batteryState = BatteryState.ON_CHARGING;
        } else if (i11 == 4) {
            batteryState = BatteryState.CHARGING_ERROR;
        } else {
            if (i11 != 5) {
                throw new j2.a();
            }
            batteryState = BatteryState.ERROR;
        }
        return new Battery(i10, batteryState);
    }

    public static final AdaptCurrentAnimation.AnimationEndingState parseTo(g.c cVar) {
        h.j(cVar, "<this>");
        int iOrdinal = cVar.ordinal();
        if (iOrdinal == 0) {
            return AdaptCurrentAnimation.AnimationEndingState.NOT_SET;
        }
        if (iOrdinal == 1) {
            return AdaptCurrentAnimation.AnimationEndingState.TIMEOUT;
        }
        if (iOrdinal == 2) {
            return AdaptCurrentAnimation.AnimationEndingState.CANCELED;
        }
        if (iOrdinal == 3) {
            return AdaptCurrentAnimation.AnimationEndingState.BATTERY_OVERTEMP;
        }
        if (iOrdinal == 4) {
            return AdaptCurrentAnimation.AnimationEndingState.CRITICAL_BATTERY;
        }
        if (iOrdinal == 5) {
            return AdaptCurrentAnimation.AnimationEndingState.UNRECOGNIZED;
        }
        throw new j2.a();
    }

    public static final ba.a parseTo(AdaptAnimation adaptAnimation) {
        h.j(adaptAnimation, "<this>");
        return new ba.a(new d(getAdaptKitColorPreset(adaptAnimation.getColor())), new ba.d(new f0(adaptAnimation.getPrequel()), new t(adaptAnimation.getEnter()), new e0(adaptAnimation.getOn()), new u(adaptAnimation.getExit()), new d0(adaptAnimation.getOff())), new s(adaptAnimation.getDuration()), 0);
    }

    public static final AdaptFirmwareStatus parseTo(fa.b bVar) {
        h.j(bVar, "<this>");
        if (bVar instanceof fa.b.C0129b) {
            return new AdaptFirmwareStatus.UpToDate(new AdaptFirmwareVersion(bVar.getCurrentVersion().f7257h));
        }
        if (bVar instanceof fa.b.a) {
            return new AdaptFirmwareStatus.ErrorOccurred(new AdaptFirmwareVersion(bVar.getCurrentVersion().f7257h), ((fa.b.a) bVar).f7125i);
        }
        if (!(bVar instanceof fa.b.c)) {
            throw new j2.a();
        }
        AdaptFirmwareVersion adaptFirmwareVersion = new AdaptFirmwareVersion(bVar.getCurrentVersion().f7257h);
        fa.b.c cVar = (fa.b.c) bVar;
        return new AdaptFirmwareStatus.UpdateAvailable(adaptFirmwareVersion, cVar.f7128i, cVar.f7129j.f7257h, cVar.f7130k, cVar.f7131l);
    }

    public static final AdaptFirmwareStage parseTo(fa.i iVar) {
        h.j(iVar, "<this>");
        if (iVar instanceof fa.i.a) {
            return new AdaptFirmwareStage.BatteryTooLow(parseTo(((fa.i.a) iVar).f7164h));
        }
        if (iVar instanceof fa.i.b) {
            return AdaptFirmwareStage.Completed.INSTANCE;
        }
        if (iVar instanceof fa.i.c) {
            return AdaptFirmwareStage.ConnectionLost.INSTANCE;
        }
        if (iVar instanceof fa.i.d) {
            return AdaptFirmwareStage.Failure.INSTANCE;
        }
        if (iVar instanceof fa.i.e) {
            return AdaptFirmwareStage.FetchingData.INSTANCE;
        }
        if (iVar instanceof fa.i.f) {
            return AdaptFirmwareStage.Flashing.INSTANCE;
        }
        if (iVar instanceof fa.i.g) {
            return new AdaptFirmwareStage.InProgress(((fa.i.g) iVar).f7170h);
        }
        if (iVar instanceof fa.i.h) {
            return AdaptFirmwareStage.NoUpdateAvailable.INSTANCE;
        }
        if (iVar instanceof fa.i.C0132i) {
            return AdaptFirmwareStage.NotStarted.INSTANCE;
        }
        if (iVar instanceof fa.i.j) {
            return AdaptFirmwareStage.Reconnecting.INSTANCE;
        }
        throw new j2.a();
    }

    public static final AdaptFirmwareUpdateState parseTo(fa.k kVar) {
        h.j(kVar, "<this>");
        if (kVar instanceof fa.k.a) {
            return AdaptFirmwareUpdateState.AlreadyUpToDate.INSTANCE;
        }
        if (kVar instanceof fa.k.b) {
            return AdaptFirmwareUpdateState.BatteryTooLow.INSTANCE;
        }
        if (kVar instanceof fa.k.c) {
            return AdaptFirmwareUpdateState.CheckUpdateStatus.INSTANCE;
        }
        if (kVar instanceof fa.k.d) {
            return AdaptFirmwareUpdateState.CheckUpdateStatusError.INSTANCE;
        }
        if (kVar instanceof fa.k.e) {
            return AdaptFirmwareUpdateState.CheckUpgradeSlotsAlreadyStaged.INSTANCE;
        }
        if (kVar instanceof fa.k.f) {
            return AdaptFirmwareUpdateState.CheckUpgradeSlotsUploadRequired.INSTANCE;
        }
        if (kVar instanceof fa.k.g) {
            return AdaptFirmwareUpdateState.CheckingUpgradeSlots.INSTANCE;
        }
        if (kVar instanceof fa.k.h) {
            return AdaptFirmwareUpdateState.ConnectionLost.INSTANCE;
        }
        if (kVar instanceof fa.k.j) {
            return AdaptFirmwareUpdateState.DownloadComplete.INSTANCE;
        }
        if (kVar instanceof fa.k.C0135k) {
            return AdaptFirmwareUpdateState.DownloadFailed.INSTANCE;
        }
        if (kVar instanceof fa.k.l) {
            return AdaptFirmwareUpdateState.DownloadStart.INSTANCE;
        }
        if (kVar instanceof fa.k.m) {
            return AdaptFirmwareUpdateState.FlashError.INSTANCE;
        }
        if (kVar instanceof fa.k.n) {
            return AdaptFirmwareUpdateState.FlashSuccess.INSTANCE;
        }
        if (kVar instanceof fa.k.o) {
            return AdaptFirmwareUpdateState.KickoffFirmwareProcess.INSTANCE;
        }
        if (kVar instanceof fa.k.p) {
            return AdaptFirmwareUpdateState.Md5CheckFailed.INSTANCE;
        }
        if (kVar instanceof fa.k.q) {
            return AdaptFirmwareUpdateState.Md5CheckPassed.INSTANCE;
        }
        if (kVar instanceof fa.k.r) {
            return AdaptFirmwareUpdateState.NoUpgradeInProcess.INSTANCE;
        }
        if (kVar instanceof fa.k.s) {
            return AdaptFirmwareUpdateState.PostUploadSlotCheck.INSTANCE;
        }
        if (kVar instanceof fa.k.t) {
            return AdaptFirmwareUpdateState.ReadyToFlash.INSTANCE;
        }
        if (kVar instanceof fa.k.u) {
            return AdaptFirmwareUpdateState.Reconnected.INSTANCE;
        }
        if (kVar instanceof fa.k.v) {
            return AdaptFirmwareUpdateState.UpToDate.INSTANCE;
        }
        if (kVar instanceof fa.k.w) {
            return AdaptFirmwareUpdateState.UpdateAvailable.INSTANCE;
        }
        if (kVar instanceof fa.k.x) {
            return AdaptFirmwareUpdateState.UpgradeFailed.INSTANCE;
        }
        if (kVar instanceof fa.k.y) {
            return AdaptFirmwareUpdateState.UpgradeSuccessful.INSTANCE;
        }
        if (kVar instanceof fa.k.z) {
            return AdaptFirmwareUpdateState.UploadComplete.INSTANCE;
        }
        if (kVar instanceof fa.k.a0.a) {
            return AdaptFirmwareUpdateState.UploadInProgressError.SlotCheck.INSTANCE;
        }
        if (kVar instanceof fa.k.a0.b) {
            return AdaptFirmwareUpdateState.UploadInProgressError.TransferStopped.INSTANCE;
        }
        if (kVar instanceof fa.k.a0.c) {
            return AdaptFirmwareUpdateState.UploadInProgressError.UserCanceled.INSTANCE;
        }
        if (kVar instanceof fa.k.b0) {
            return AdaptFirmwareUpdateState.UploadProgress.INSTANCE;
        }
        throw new j2.a();
    }

    public static final ba.h parseTo(AdaptCustomAnimation adaptCustomAnimation, int i10) {
        h.j(adaptCustomAnimation, "<this>");
        fd.e<Float, List<ba.c>> to = parseTo(adaptCustomAnimation.getFrames());
        return new ba.h(adaptCustomAnimation.getId(), (int) (TimeUnit.SECONDS.toMillis(i10) / to.f7388h.floatValue()), to.f7389i, 0, true, true);
    }

    public static final fd.e<Float, List<ba.c>> parseTo(List<AdaptAppAnimationFrame> list) {
        h.j(list, "<this>");
        ArrayList arrayList = new ArrayList();
        float duration = 0.0f;
        for (AdaptAppAnimationFrame adaptAppAnimationFrame : list) {
            ArrayList arrayList2 = new ArrayList();
            for (AdaptAppAnimationColor adaptAppAnimationColor : adaptAppAnimationFrame.getLedColors()) {
                arrayList2.add(new ba.b(new g0(adaptAppAnimationColor.getRed$app_prodRelease()), new x(adaptAppAnimationColor.getGreen$app_prodRelease()), new o(adaptAppAnimationColor.getBlue$app_prodRelease())));
            }
            float f10 = 1000;
            ba.c cVar = new ba.c((int) (adaptAppAnimationFrame.getDuration() * f10), arrayList2);
            duration += adaptAppAnimationFrame.getDuration() * f10;
            arrayList.add(cVar);
        }
        return new fd.e<>(Float.valueOf(duration), arrayList);
    }

    public static final AdaptCurrentAnimation parseTo(g gVar) {
        h.j(gVar, "<this>");
        return new AdaptCurrentAnimation(gVar.f3658h, gVar.f3659i, parseTo(gVar.f3660j), parseTo(gVar.f3661k));
    }

    public static final AdaptCurrentAnimation.AdaptRunningState parseTo(g.d dVar) {
        h.j(dVar, "<this>");
        int iOrdinal = dVar.ordinal();
        if (iOrdinal == 0) {
            return AdaptCurrentAnimation.AdaptRunningState.RUNNING;
        }
        if (iOrdinal == 1) {
            return AdaptCurrentAnimation.AdaptRunningState.STOPPED;
        }
        if (iOrdinal == 2) {
            return AdaptCurrentAnimation.AdaptRunningState.QUEUED;
        }
        if (iOrdinal != 3) {
            return AdaptCurrentAnimation.AdaptRunningState.UNRECOGNIZED;
        }
        return AdaptCurrentAnimation.AdaptRunningState.INTERRUPTED;
    }

    public static final a8.d parseTo(i iVar, boolean z10, String str) {
        String nuid;
        h.j(iVar, "<this>");
        h.j(str, "shoeId");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US);
        Date date = new Date();
        TimeZone timeZone = TimeZone.getTimeZone("gmt");
        h.i(timeZone, "getTimeZone(\"gmt\")");
        simpleDateFormat.setTimeZone(timeZone);
        String str2 = simpleDateFormat.format(date);
        h.i(str2, "simpleDateFormat.format(date)");
        int i10 = h8.a.f8296a;
        AdaptUser adaptUserR = h8.c.f8298b.R();
        if (adaptUserR == null || (nuid = adaptUserR.getNuid()) == null) {
            nuid = "";
        }
        return parseTo(iVar, z10, str, str2, nuid);
    }

    public static final a8.d parseTo(i iVar, boolean z10, String str, String str2, String str3) {
        h.j(iVar, "<this>");
        h.j(str, "shoeId");
        h.j(str2, "timeStamp");
        h.j(str3, "nuid");
        a8.l to = parseTo(iVar);
        if (z10) {
            return new a8.i(new a8.h(str2, str3, to, str, null));
        }
        return new j(new a8.h(str2, str3, to, null, str));
    }

    public static final AdaptGestureNotification parseTo(ga.c cVar) {
        h.j(cVar, "<this>");
        return new AdaptGestureNotification(cVar.f7923h, parseTo(cVar.f7925j));
    }

    /* JADX INFO: renamed from: parseTo, reason: collision with other method in class */
    public static final List<AdaptGestureConfiguration> m3parseTo(List<? extends a> list) {
        h.j(list, "<this>");
        ArrayList arrayList = new ArrayList();
        Iterator<? extends a> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(parseTo(it.next()));
        }
        return arrayList;
    }

    public static final AdaptGestureConfiguration parseTo(a aVar) {
        h.j(aVar, "<this>");
        if (h.c(aVar, a.d.f7902k)) {
            return AdaptGestureConfiguration.DoubleTapUnlace.INSTANCE;
        }
        if (h.c(aVar, a.c.f7901k)) {
            return AdaptGestureConfiguration.DoubleTapTraining.INSTANCE;
        }
        if (h.c(aVar, a.g.f7916k)) {
            return AdaptGestureConfiguration.Off.INSTANCE;
        }
        if (aVar instanceof a.b) {
            return new AdaptGestureConfiguration.CustomGesture(AdaptGestureAction.Companion.from(aVar.f7897h), AdaptGestureClassification.Companion.from(aVar.f7898i));
        }
        throw new j2.a();
    }
}
