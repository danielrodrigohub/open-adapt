package com.nike.adapt.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: Viewed.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Viewed implements Parcelable {
    public static final Parcelable.Creator<Viewed> CREATOR = new Creator();
    private final Map<String, Object> data;
    private final String name;

    /* JADX INFO: compiled from: Viewed.kt */
    public static final class Creator implements Parcelable.Creator<Viewed> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Viewed createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            h.j(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i10 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readValue(Viewed.class.getClassLoader()));
                }
                linkedHashMap = linkedHashMap2;
            }
            return new Viewed(string, linkedHashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Viewed[] newArray(int i10) {
            return new Viewed[i10];
        }
    }

    public Viewed(String str, Map<String, ? extends Object> map) {
        h.j(str, "name");
        this.name = str;
        this.data = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Viewed copy$default(Viewed viewed, String str, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = viewed.name;
        }
        if ((i10 & 2) != 0) {
            map = viewed.data;
        }
        return viewed.copy(str, map);
    }

    public final String component1() {
        return this.name;
    }

    public final Map<String, Object> component2() {
        return this.data;
    }

    public final Viewed copy(String str, Map<String, ? extends Object> map) {
        h.j(str, "name");
        return new Viewed(str, map);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Viewed)) {
            return false;
        }
        Viewed viewed = (Viewed) obj;
        return h.c(this.name, viewed.name) && h.c(this.data, viewed.data);
    }

    public final Map<String, Object> getData() {
        return this.data;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int iHashCode = this.name.hashCode() * 31;
        Map<String, Object> map = this.data;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public String toString() {
        return "Viewed(name=" + this.name + ", data=" + this.data + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.name);
        Map<String, Object> map = this.data;
        if (map == null) {
            parcel.writeInt(0);
            return;
        }
        parcel.writeInt(1);
        parcel.writeInt(map.size());
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeValue(entry.getValue());
        }
    }

    public /* synthetic */ Viewed(String str, Map map, int i10, rd.h hVar) {
        this(str, (i10 & 2) != 0 ? null : map);
    }
}
