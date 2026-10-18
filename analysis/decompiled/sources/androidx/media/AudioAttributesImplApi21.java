package androidx.media;

import a0.b;
import android.media.AudioAttributes;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21 implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public AudioAttributes f2251a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2252b = -1;

    public final boolean equals(Object obj) {
        if (obj instanceof AudioAttributesImplApi21) {
            return this.f2251a.equals(((AudioAttributesImplApi21) obj).f2251a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2251a.hashCode();
    }

    public final String toString() {
        StringBuilder sbC = b.c("AudioAttributesCompat: audioattributes=");
        sbC.append(this.f2251a);
        return sbC.toString();
    }
}
