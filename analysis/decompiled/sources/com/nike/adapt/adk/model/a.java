package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.ArrayList;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ String a(int i10) {
        if (i10 == 1) {
            return "lace_to_percent";
        }
        if (i10 == 2) {
            return "lace_get_percent";
        }
        if (i10 == 3) {
            return "led_set_color";
        }
        if (i10 == 4) {
            return "led_get_color";
        }
        if (i10 == 5) {
            return "battery_get";
        }
        if (i10 == 6) {
            return "blink";
        }
        throw null;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "MCU";
        }
        if (i10 == 2) {
            return "BLE";
        }
        if (i10 == 3) {
            return "CAPSENSE";
        }
        throw null;
    }

    public static int c(Parcelable.Creator creator, Parcel parcel, ArrayList arrayList, int i10, int i11) {
        arrayList.add(creator.createFromParcel(parcel));
        return i10 + i11;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "NOT_SET";
        }
        if (i10 == 2) {
            return "TIMEOUT";
        }
        if (i10 == 3) {
            return "CANCELED";
        }
        if (i10 == 4) {
            return "BATTERY_OVERTEMP";
        }
        if (i10 == 5) {
            return "CRITICAL_BATTERY";
        }
        if (i10 == 6) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "BEGIN_ARRAY";
        }
        if (i10 == 2) {
            return "END_ARRAY";
        }
        if (i10 == 3) {
            return "BEGIN_OBJECT";
        }
        if (i10 == 4) {
            return "END_OBJECT";
        }
        if (i10 == 5) {
            return "NAME";
        }
        if (i10 == 6) {
            return "STRING";
        }
        if (i10 == 7) {
            return "NUMBER";
        }
        if (i10 == 8) {
            return "BOOLEAN";
        }
        if (i10 == 9) {
            return "NULL";
        }
        return i10 == 10 ? "END_DOCUMENT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "NOT_SET";
        }
        if (i10 == 2) {
            return "TIMEOUT";
        }
        if (i10 == 3) {
            return "CANCELED";
        }
        if (i10 == 4) {
            return "BATTERY_OVERTEMP";
        }
        if (i10 == 5) {
            return "CRITICAL_BATTERY";
        }
        return i10 == 6 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "INVARIANT";
        }
        if (i10 == 2) {
            return "IN";
        }
        return i10 == 3 ? "OUT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int h(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("NOT_SET")) {
            return 1;
        }
        if (str.equals("TIMEOUT")) {
            return 2;
        }
        if (str.equals("CANCELED")) {
            return 3;
        }
        if (str.equals("BATTERY_OVERTEMP")) {
            return 4;
        }
        if (str.equals("CRITICAL_BATTERY")) {
            return 5;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 6;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.CustomAnimation.EndingState.".concat(str));
    }
}
