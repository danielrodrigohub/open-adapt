package v7;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.R;

/* JADX INFO: compiled from: SettingsNavigation.kt */
/* JADX INFO: loaded from: classes.dex */
public enum n implements Parcelable {
    ABOUT_THIS_VERSION(R.string.adapt_settings_about_version_title),
    MODEL_INFO(R.string.adapt_shoe_preferences_model_info_title),
    FIRMWARE_VERSION(R.string.adapt_shoe_preferences_firmware_version_title);

    public static final Parcelable.Creator<n> CREATOR = new Parcelable.Creator<n>() { // from class: v7.n.a
        @Override // android.os.Parcelable.Creator
        public final n createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return n.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final n[] newArray(int i10) {
            return new n[i10];
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16439h;

    n(int i10) {
        this.f16439h = i10;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeString(name());
    }
}
