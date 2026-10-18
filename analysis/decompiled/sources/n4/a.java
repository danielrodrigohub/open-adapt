package n4;

import android.os.Parcel;
import android.os.Parcelable;
import i4.b;

/* JADX INFO: compiled from: VorbisComment.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new C0215a();

    /* JADX INFO: renamed from: n4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: VorbisComment.java */
    public class C0215a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(String str, String str2) {
        super(str, str2);
    }

    public a(Parcel parcel) {
        super(parcel);
    }
}
