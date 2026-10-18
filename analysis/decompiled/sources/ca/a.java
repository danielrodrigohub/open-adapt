package ca;

import android.content.SharedPreferences;
import android.os.Parcel;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import h8.c;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p4.h;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ String a(int i10) {
        if (i10 == 1) {
            return "ON_CHARGER";
        }
        if (i10 == 2) {
            return "OFF_CHARGER";
        }
        if (i10 == 3) {
            return "ON_CHARGING";
        }
        if (i10 == 4) {
            return "CHARGING_ERROR";
        }
        if (i10 == 5) {
            return "ERROR";
        }
        throw null;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "ENABLED";
        }
        if (i10 == 2) {
            return "DISABLED";
        }
        throw null;
    }

    public static int c(int i10, int i11, int i12, int i13) {
        return ((i10 * i11) / i12) + i13;
    }

    public static Iterator d(List list, Parcel parcel) {
        parcel.writeInt(list.size());
        return list.iterator();
    }

    public static void e(int i10, HashMap map, String str, int i11, String str2, int i12, String str3, int i13, String str4) {
        map.put(str, Integer.valueOf(i10));
        map.put(str2, Integer.valueOf(i11));
        map.put(str3, Integer.valueOf(i12));
        map.put(str4, Integer.valueOf(i13));
    }

    public static void f(c cVar, String str, String str2, boolean z10) {
        SharedPreferences.Editor editorEdit = cVar.m0().edit();
        h.i(editorEdit, str);
        editorEdit.putBoolean(str2, z10);
        editorEdit.apply();
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "ENABLED";
        }
        if (i10 == 2) {
            return "DISABLED";
        }
        throw null;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "ENABLED";
        }
        return i10 == 2 ? "DISABLED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String i(int i10) {
        if (i10 == 1) {
            return "ON_CHARGER";
        }
        if (i10 == 2) {
            return "OFF_CHARGER";
        }
        if (i10 == 3) {
            return "ON_CHARGING";
        }
        if (i10 == 4) {
            return "CHARGING_ERROR";
        }
        return i10 == 5 ? "ERROR" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int j(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("ENABLED")) {
            return 1;
        }
        if (str.equals("DISABLED")) {
            return 2;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.autoadapt.AutoAdaptSessionState.".concat(str));
    }
}
