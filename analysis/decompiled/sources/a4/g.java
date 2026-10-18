package a4;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import e4.p;
import e4.r;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements t6.d, p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ g f289a = new g();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ g f290b = new g();

    public static int[] b() {
        return q.g.b(8);
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "lace_to_percent_response_result";
        }
        if (i10 == 2) {
            return "lace_get_percent_response_result";
        }
        if (i10 == 3) {
            return "led_color_set_response_result";
        }
        if (i10 == 4) {
            return "led_color_get_response_result";
        }
        if (i10 == 5) {
            return "lace_notification_response_result";
        }
        if (i10 == 6) {
            return "connection_update_response_result";
        }
        if (i10 == 7) {
            return "battery_notification_response_result";
        }
        if (i10 == 8) {
            return "battery_get_response_result";
        }
        throw null;
    }

    public static int d(List list, int i10, int i11) {
        return (list.hashCode() + i10) * i11;
    }

    public static StringBuilder e(String str, String str2, String str3) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        return sb2;
    }

    public static void f(String str, String str2, String str3) {
        m5.p.g(str3, str + str2);
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "RUNNING";
        }
        if (i10 == 2) {
            return "STOPPED";
        }
        if (i10 == 3) {
            return "QUEUED";
        }
        if (i10 == 4) {
            return "INTERRUPTED";
        }
        if (i10 == 5) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "MERGE";
        }
        if (i10 == 2) {
            return "ADD";
        }
        if (i10 == 3) {
            return "SUBTRACT";
        }
        if (i10 == 4) {
            return "INTERSECT";
        }
        return i10 == 5 ? "EXCLUDE_INTERSECTIONS" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String i(int i10) {
        if (i10 == 1) {
            return "RUNNING";
        }
        if (i10 == 2) {
            return "STOPPED";
        }
        if (i10 == 3) {
            return "QUEUED";
        }
        if (i10 == 4) {
            return "INTERRUPTED";
        }
        return i10 == 5 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int j(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("RUNNING")) {
            return 1;
        }
        if (str.equals("STOPPED")) {
            return 2;
        }
        if (str.equals("QUEUED")) {
            return 3;
        }
        if (str.equals("INTERRUPTED")) {
            return 4;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 5;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.CustomAnimation.RunningState.".concat(str));
    }

    @Override // e4.p
    public List a(String str, boolean z10, boolean z11) {
        return r.e(str, z10, z11);
    }

    @Override // t6.d
    public Object apply(Object obj) {
        l lVar = (l) obj;
        int i10 = h.f291y;
        return lVar;
    }
}
