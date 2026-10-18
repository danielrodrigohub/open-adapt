package android.support.v4.media.session;

import a0.b;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f645h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f646i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f647j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final float f648k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f649l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f650m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CharSequence f651n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final long f652o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public List<CustomAction> f653p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final long f654q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final Bundle f655r;

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final String f656h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final CharSequence f657i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f658j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final Bundle f659k;

        public class a implements Parcelable.Creator<CustomAction> {
            @Override // android.os.Parcelable.Creator
            public final CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final CustomAction[] newArray(int i10) {
                return new CustomAction[i10];
            }
        }

        public CustomAction(Parcel parcel) {
            this.f656h = parcel.readString();
            this.f657i = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f658j = parcel.readInt();
            this.f659k = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            StringBuilder sbC = b.c("Action:mName='");
            sbC.append((Object) this.f657i);
            sbC.append(", mIcon=");
            sbC.append(this.f658j);
            sbC.append(", mExtras=");
            sbC.append(this.f659k);
            return sbC.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeString(this.f656h);
            TextUtils.writeToParcel(this.f657i, parcel, i10);
            parcel.writeInt(this.f658j);
            parcel.writeBundle(this.f659k);
        }
    }

    public class a implements Parcelable.Creator<PlaybackStateCompat> {
        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final PlaybackStateCompat[] newArray(int i10) {
            return new PlaybackStateCompat[i10];
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f645h = parcel.readInt();
        this.f646i = parcel.readLong();
        this.f648k = parcel.readFloat();
        this.f652o = parcel.readLong();
        this.f647j = parcel.readLong();
        this.f649l = parcel.readLong();
        this.f651n = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f653p = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f654q = parcel.readLong();
        this.f655r = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f650m = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "PlaybackState {state=" + this.f645h + ", position=" + this.f646i + ", buffered position=" + this.f647j + ", speed=" + this.f648k + ", updated=" + this.f652o + ", actions=" + this.f649l + ", error code=" + this.f650m + ", error message=" + this.f651n + ", custom actions=" + this.f653p + ", active item id=" + this.f654q + "}";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f645h);
        parcel.writeLong(this.f646i);
        parcel.writeFloat(this.f648k);
        parcel.writeLong(this.f652o);
        parcel.writeLong(this.f647j);
        parcel.writeLong(this.f649l);
        TextUtils.writeToParcel(this.f651n, parcel, i10);
        parcel.writeTypedList(this.f653p);
        parcel.writeLong(this.f654q);
        parcel.writeBundle(this.f655r);
        parcel.writeInt(this.f650m);
    }
}
