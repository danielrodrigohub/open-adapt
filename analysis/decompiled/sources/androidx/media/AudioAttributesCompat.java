package androidx.media;

import android.util.SparseIntArray;
import i1.c;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesCompat implements c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f2249b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f2250a;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f2250a;
        if (audioAttributesImpl == null) {
            return audioAttributesCompat.f2250a == null;
        }
        return audioAttributesImpl.equals(audioAttributesCompat.f2250a);
    }

    public final int hashCode() {
        return this.f2250a.hashCode();
    }

    public final String toString() {
        return this.f2250a.toString();
    }
}
