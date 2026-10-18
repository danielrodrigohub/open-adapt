package androidx.media;

import android.media.AudioAttributes;
import i1.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(a aVar) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        audioAttributesImplApi26.f2251a = (AudioAttributes) aVar.m(audioAttributesImplApi26.f2251a, 1);
        audioAttributesImplApi26.f2252b = aVar.k(audioAttributesImplApi26.f2252b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.w(audioAttributesImplApi26.f2251a, 1);
        aVar.u(audioAttributesImplApi26.f2252b, 2);
    }
}
