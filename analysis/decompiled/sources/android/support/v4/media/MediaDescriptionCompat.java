package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final CharSequence f623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CharSequence f624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CharSequence f625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Bitmap f626l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Uri f627m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final Bundle f628n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Uri f629o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public MediaDescription f630p;

    public class a implements Parcelable.Creator<MediaDescriptionCompat> {
        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    public static class b {
        public static MediaDescription a(MediaDescription.Builder builder) {
            return builder.build();
        }

        public static MediaDescription.Builder b() {
            return new MediaDescription.Builder();
        }

        public static CharSequence c(MediaDescription mediaDescription) {
            return mediaDescription.getDescription();
        }

        public static Bundle d(MediaDescription mediaDescription) {
            return mediaDescription.getExtras();
        }

        public static Bitmap e(MediaDescription mediaDescription) {
            return mediaDescription.getIconBitmap();
        }

        public static Uri f(MediaDescription mediaDescription) {
            return mediaDescription.getIconUri();
        }

        public static String g(MediaDescription mediaDescription) {
            return mediaDescription.getMediaId();
        }

        public static CharSequence h(MediaDescription mediaDescription) {
            return mediaDescription.getSubtitle();
        }

        public static CharSequence i(MediaDescription mediaDescription) {
            return mediaDescription.getTitle();
        }

        public static void j(MediaDescription.Builder builder, CharSequence charSequence) {
            builder.setDescription(charSequence);
        }

        public static void k(MediaDescription.Builder builder, Bundle bundle) {
            builder.setExtras(bundle);
        }

        public static void l(MediaDescription.Builder builder, Bitmap bitmap) {
            builder.setIconBitmap(bitmap);
        }

        public static void m(MediaDescription.Builder builder, Uri uri) {
            builder.setIconUri(uri);
        }

        public static void n(MediaDescription.Builder builder, String str) {
            builder.setMediaId(str);
        }

        public static void o(MediaDescription.Builder builder, CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        public static void p(MediaDescription.Builder builder, CharSequence charSequence) {
            builder.setTitle(charSequence);
        }
    }

    public static class c {
        public static Uri a(MediaDescription mediaDescription) {
            return mediaDescription.getMediaUri();
        }

        public static void b(MediaDescription.Builder builder, Uri uri) {
            builder.setMediaUri(uri);
        }
    }

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f622h = str;
        this.f623i = charSequence;
        this.f624j = charSequence2;
        this.f625k = charSequence3;
        this.f626l = bitmap;
        this.f627m = uri;
        this.f628n = bundle;
        this.f629o = uri2;
    }

    public static MediaDescriptionCompat a(Object obj) {
        Bundle bundle;
        if (obj == null) {
            return null;
        }
        MediaDescription mediaDescription = (MediaDescription) obj;
        String strG = b.g(mediaDescription);
        CharSequence charSequenceI = b.i(mediaDescription);
        CharSequence charSequenceH = b.h(mediaDescription);
        CharSequence charSequenceC = b.c(mediaDescription);
        Bitmap bitmapE = b.e(mediaDescription);
        Uri uriF = b.f(mediaDescription);
        Bundle bundleD = b.d(mediaDescription);
        if (bundleD != null) {
            bundleD = MediaSessionCompat.b(bundleD);
        }
        Uri uriA = bundleD != null ? (Uri) bundleD.getParcelable("android.support.v4.media.description.MEDIA_URI") : null;
        if (uriA == null) {
            bundle = bundleD;
        } else if (bundleD.containsKey("android.support.v4.media.description.NULL_BUNDLE_FLAG") && bundleD.size() == 2) {
            bundle = null;
        } else {
            bundleD.remove("android.support.v4.media.description.MEDIA_URI");
            bundleD.remove("android.support.v4.media.description.NULL_BUNDLE_FLAG");
            bundle = bundleD;
        }
        if (uriA == null) {
            uriA = c.a(mediaDescription);
        }
        MediaDescriptionCompat mediaDescriptionCompat = new MediaDescriptionCompat(strG, charSequenceI, charSequenceH, charSequenceC, bitmapE, uriF, bundle, uriA);
        mediaDescriptionCompat.f630p = mediaDescription;
        return mediaDescriptionCompat;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f623i) + ", " + ((Object) this.f624j) + ", " + ((Object) this.f625k);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        MediaDescription mediaDescriptionA = this.f630p;
        if (mediaDescriptionA == null) {
            MediaDescription.Builder builderB = b.b();
            b.n(builderB, this.f622h);
            b.p(builderB, this.f623i);
            b.o(builderB, this.f624j);
            b.j(builderB, this.f625k);
            b.l(builderB, this.f626l);
            b.m(builderB, this.f627m);
            b.k(builderB, this.f628n);
            c.b(builderB, this.f629o);
            mediaDescriptionA = b.a(builderB);
            this.f630p = mediaDescriptionA;
        }
        mediaDescriptionA.writeToParcel(parcel, i10);
    }
}
