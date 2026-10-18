package androidx.media;

import android.media.AudioAttributes;
import i1.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(a aVar) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        audioAttributesImplApi21.f2251a = (AudioAttributes) aVar.m(audioAttributesImplApi21.f2251a, 1);
        audioAttributesImplApi21.f2252b = aVar.k(audioAttributesImplApi21.f2252b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.w(audioAttributesImplApi21.f2251a, 1);
        aVar.u(audioAttributesImplApi21.f2252b, 2);
    }
}
