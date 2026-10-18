package t9;

import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.GetAutoLaceResult;
import com.nike.adapt.adk.GetBatteryPercentResult;
import com.nike.adapt.adk.SetLedResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.Battery;
import p4.h;

/* JADX INFO: compiled from: PairResultTracker.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f15570a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f15571b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Battery f15572c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Battery f15573d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Boolean f15574e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Boolean f15575f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AdaptDeviceColor f15576g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AdaptDeviceColor f15577h;

    /* JADX INFO: compiled from: PairResultTracker.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15578a;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            f15578a = iArr;
        }
    }

    public final boolean a() {
        return (this.f15575f == null || this.f15574e == null) ? false : true;
    }

    public final boolean b() {
        return (this.f15572c == null || this.f15573d == null) ? false : true;
    }

    public final boolean c() {
        Boolean bool = this.f15575f;
        Boolean bool2 = Boolean.TRUE;
        return h.c(bool, bool2) || h.c(this.f15574e, bool2);
    }

    public final void d(DeviceControllerResult deviceControllerResult) {
        h.j(deviceControllerResult, "result");
        if (deviceControllerResult instanceof GetAutoLaceResult) {
            GetAutoLaceResult getAutoLaceResult = (GetAutoLaceResult) deviceControllerResult;
            int i10 = a.f15578a[getAutoLaceResult.getShoe().ordinal()];
            if (i10 == 1) {
                this.f15570a = getAutoLaceResult.getPercent();
                return;
            }
            if (i10 == 2) {
                this.f15571b = getAutoLaceResult.getPercent();
                return;
            } else {
                if (i10 != 3) {
                    return;
                }
                this.f15570a = getAutoLaceResult.getPercent();
                this.f15571b = getAutoLaceResult.getPercent();
                return;
            }
        }
        if (deviceControllerResult instanceof GetBatteryPercentResult) {
            GetBatteryPercentResult getBatteryPercentResult = (GetBatteryPercentResult) deviceControllerResult;
            int i11 = a.f15578a[getBatteryPercentResult.getShoe().ordinal()];
            if (i11 == 1) {
                this.f15572c = getBatteryPercentResult.getBattery();
                return;
            }
            if (i11 == 2) {
                this.f15573d = getBatteryPercentResult.getBattery();
                return;
            } else {
                if (i11 != 3) {
                    return;
                }
                this.f15572c = getBatteryPercentResult.getBattery();
                this.f15573d = getBatteryPercentResult.getBattery();
                return;
            }
        }
        if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            int i12 = a.f15578a[getAnimationResult.getShoe().ordinal()];
            if (i12 == 1) {
                this.f15575f = Boolean.valueOf(getAnimationResult.getAnimation().isRunning());
                return;
            }
            if (i12 == 2) {
                this.f15574e = Boolean.valueOf(getAnimationResult.getAnimation().isRunning());
                return;
            } else {
                if (i12 != 3) {
                    return;
                }
                this.f15575f = Boolean.valueOf(getAnimationResult.getAnimation().isRunning());
                this.f15574e = Boolean.valueOf(getAnimationResult.getAnimation().isRunning());
                return;
            }
        }
        if (deviceControllerResult instanceof SetLedResult) {
            SetLedResult setLedResult = (SetLedResult) deviceControllerResult;
            int i13 = a.f15578a[setLedResult.getShoe().ordinal()];
            if (i13 == 1) {
                this.f15576g = setLedResult.getShoeLed();
                return;
            }
            if (i13 == 2) {
                this.f15577h = setLedResult.getShoeLed();
            } else {
                if (i13 != 3) {
                    return;
                }
                this.f15576g = setLedResult.getShoeLed();
                this.f15577h = setLedResult.getShoeLed();
            }
        }
    }
}
