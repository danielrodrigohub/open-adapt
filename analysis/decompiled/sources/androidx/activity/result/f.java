package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: IntentSenderRequest.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class f implements Parcelable {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final IntentSender f728h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Intent f729i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f730j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f731k;

    /* JADX INFO: compiled from: IntentSenderRequest.java */
    public class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            return new f(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    public f(IntentSender intentSender, Intent intent, int i10, int i11) {
        this.f728h = intentSender;
        this.f729i = intent;
        this.f730j = i10;
        this.f731k = i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f728h, i10);
        parcel.writeParcelable(this.f729i, i10);
        parcel.writeInt(this.f730j);
        parcel.writeInt(this.f731k);
    }

    public f(Parcel parcel) {
        this.f728h = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f729i = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f730j = parcel.readInt();
        this.f731k = parcel.readInt();
    }
}
