package v7;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.R;

/* JADX INFO: compiled from: SettingsNavigation.kt */
/* JADX INFO: loaded from: classes.dex */
public enum m implements Parcelable {
    FAQS(R.string.adapt_support_faqs_title),
    SUBMIT_FEEDBACK(R.string.adapt_submit_feedback_title),
    PRIVACY_POLICY(R.string.adapt_privacy_policy_title),
    TERMS_OF_USE(R.string.adapt_terms_of_use_title),
    LEARN_MORE(R.string.adapt_welcome_learn_more_button_title),
    DECOMMISSION(R.string.adapt_decommission_notice_title);

    public static final Parcelable.Creator<m> CREATOR = new Parcelable.Creator<m>() { // from class: v7.m.a
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return m.valueOf(parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f16434h;

    m(int i10) {
        this.f16434h = i10;
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
