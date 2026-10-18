package fa;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Map;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m {
    public static /* synthetic */ int a(int i10) {
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 2;
        }
        if (i10 == 3) {
            return 4;
        }
        throw null;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "FW_IMG_PARTIAL";
        }
        if (i10 == 2) {
            return "FW_IMG_NOT_INITIALIZED";
        }
        if (i10 == 3) {
            return "FW_IMG_BLANK";
        }
        if (i10 == 4) {
            return "FW_IMG_REJECTED";
        }
        if (i10 == 5) {
            return "FW_IMG_READY";
        }
        if (i10 == 6) {
            return "FW_IMG_CURRENT";
        }
        if (i10 == 7) {
            return "FW_IMG_BAD_CHKSUM";
        }
        if (i10 == 8) {
            return "FW_IMG_UPLOADING";
        }
        if (i10 == 9) {
            return "FW_IMG_NON_FUNC";
        }
        if (i10 == 10) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "account:log in:success";
        }
        if (i10 == 2) {
            return "oidc:log in:success";
        }
        if (i10 == 3) {
            return "account:log in:sso:success";
        }
        if (i10 == 4) {
            return "oidc:log in:sso:success";
        }
        throw null;
    }

    public static int d(Map map, int i10, int i11) {
        return (map.hashCode() + i10) * i11;
    }

    public static IllegalStateException e(nc.a aVar, String str, String str2) {
        p4.h.j(aVar, str);
        return new IllegalStateException(str2);
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "GLOBAL";
        }
        if (i10 == 2) {
            return "CHINA";
        }
        throw null;
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "FW_IMG_PARTIAL";
        }
        if (i10 == 2) {
            return "FW_IMG_NOT_INITIALIZED";
        }
        if (i10 == 3) {
            return "FW_IMG_BLANK";
        }
        if (i10 == 4) {
            return "FW_IMG_REJECTED";
        }
        if (i10 == 5) {
            return "FW_IMG_READY";
        }
        if (i10 == 6) {
            return "FW_IMG_CURRENT";
        }
        if (i10 == 7) {
            return "FW_IMG_BAD_CHKSUM";
        }
        if (i10 == 8) {
            return "FW_IMG_UPLOADING";
        }
        if (i10 == 9) {
            return "FW_IMG_NON_FUNC";
        }
        return i10 == 10 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "GLOBAL";
        }
        return i10 == 2 ? "CHINA" : SafeJsonPrimitive.NULL_STRING;
    }
}
