package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ActivityResult.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0015a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Intent f714i;

    /* JADX INFO: renamed from: androidx.activity.result.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityResult.java */
    public class C0015a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(int i10, Intent intent) {
        this.f713h = i10;
        this.f714i = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        String strValueOf;
        StringBuilder sbC = a0.b.c("ActivityResult{resultCode=");
        int i10 = this.f713h;
        if (i10 != -1) {
            strValueOf = i10 != 0 ? String.valueOf(i10) : "RESULT_CANCELED";
        } else {
            strValueOf = "RESULT_OK";
        }
        sbC.append(strValueOf);
        sbC.append(", data=");
        sbC.append(this.f714i);
        sbC.append('}');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f713h);
        parcel.writeInt(this.f714i == null ? 0 : 1);
        Intent intent = this.f714i;
        if (intent != null) {
            intent.writeToParcel(parcel, i10);
        }
    }

    public a(Parcel parcel) {
        this.f713h = parcel.readInt();
        this.f714i = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
