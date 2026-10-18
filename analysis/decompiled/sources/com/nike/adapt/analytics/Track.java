package com.nike.adapt.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.LinkedHashMap;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: Track.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Track implements Parcelable {
    public static final Parcelable.Creator<Track> CREATOR = new Creator();
    private final Map<String, Object> data;
    private final String event;

    /* JADX INFO: compiled from: Track.kt */
    public static final class Creator implements Parcelable.Creator<Track> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Track createFromParcel(Parcel parcel) {
            LinkedHashMap linkedHashMap;
            h.j(parcel, "parcel");
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                linkedHashMap = null;
            } else {
                int i10 = parcel.readInt();
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(i10);
                for (int i11 = 0; i11 != i10; i11++) {
                    linkedHashMap2.put(parcel.readString(), parcel.readValue(Track.class.getClassLoader()));
                }
                linkedHashMap = linkedHashMap2;
            }
            return new Track(string, linkedHashMap);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final Track[] newArray(int i10) {
            return new Track[i10];
        }
    }

    public Track(String str, Map<String, ? extends Object> map) {
        h.j(str, "event");
        this.event = str;
        this.data = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Track copy$default(Track track, String str, Map map, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = track.event;
        }
        if ((i10 & 2) != 0) {
            map = track.data;
        }
        return track.copy(str, map);
    }

    public final String component1() {
        return this.event;
    }

    public final Map<String, Object> component2() {
        return this.data;
    }

    public final Track copy(String str, Map<String, ? extends Object> map) {
        h.j(str, "event");
        return new Track(str, map);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Track)) {
            return false;
        }
        Track track = (Track) obj;
        return h.c(this.event, track.event) && h.c(this.data, track.data);
    }

    public final Map<String, Object> getData() {
        return this.data;
    }

    public final String getEvent() {
        return this.event;
    }

    public int hashCode() {
        int iHashCode = this.event.hashCode() * 31;
        Map<String, Object> map = this.data;
        return iHashCode + (map == null ? 0 : map.hashCode());
    }

    public String toString() {
        return "Track(event=" + this.event + ", data=" + this.data + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.event);
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

    public /* synthetic */ Track(String str, Map map, int i10, rd.h hVar) {
        this(str, (i10 & 2) != 0 ? null : map);
    }
}
