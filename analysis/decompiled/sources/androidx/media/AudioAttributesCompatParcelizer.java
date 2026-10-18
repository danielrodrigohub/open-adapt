package androidx.media;

import i1.a;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(a aVar) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        Object objO = audioAttributesCompat.f2250a;
        if (aVar.i(1)) {
            objO = aVar.o();
        }
        audioAttributesCompat.f2250a = (AudioAttributesImpl) objO;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, a aVar) {
        Objects.requireNonNull(aVar);
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f2250a;
        aVar.p(1);
        aVar.y(audioAttributesImpl);
    }
}
