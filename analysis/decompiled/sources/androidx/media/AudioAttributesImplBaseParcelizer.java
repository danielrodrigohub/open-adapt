package androidx.media;

import i1.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(a aVar) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f2253a = aVar.k(audioAttributesImplBase.f2253a, 1);
        audioAttributesImplBase.f2254b = aVar.k(audioAttributesImplBase.f2254b, 2);
        audioAttributesImplBase.f2255c = aVar.k(audioAttributesImplBase.f2255c, 3);
        audioAttributesImplBase.f2256d = aVar.k(audioAttributesImplBase.f2256d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, a aVar) {
        Objects.requireNonNull(aVar);
        aVar.u(audioAttributesImplBase.f2253a, 1);
        aVar.u(audioAttributesImplBase.f2254b, 2);
        aVar.u(audioAttributesImplBase.f2255c, 3);
        aVar.u(audioAttributesImplBase.f2256d, 4);
    }
}
