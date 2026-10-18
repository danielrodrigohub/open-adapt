package com.nike.adapt.adk;

import androidx.annotation.Keep;
import ba.f;
import com.nike.adapt.adk.model.AdaptColor;
import com.nike.adapt.adk.model.InvalidShoeLEDColorDetectedADK;
import com.nike.adapt.network.assets.model.ShoeLightingColor;
import okhttp3.internal.http.HttpStatusCodesKt;
import rd.h;

/* JADX INFO: compiled from: AdaptMarshaller.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public final class AdaptMarshaller {
    public static final AdaptMarshaller INSTANCE = new AdaptMarshaller();

    private AdaptMarshaller() {
    }

    /* JADX INFO: compiled from: AdaptMarshaller.kt */
    public enum AdaptPreset {
        AURORA_GREEN(0, 255, 255),
        HERO_BLUE(0, 60, 255),
        RACER_BLUE(0, 0, 255),
        VIVID_PURPLE(100, 0, HttpStatusCodesKt.HTTP_OK),
        PINK_BLAST(255, 10, 80),
        RED_ORBIT(240, 0, 8),
        BRIGHT_CRIMSON(255, 16, 3),
        TOTAL_ORANGE(255, 40, 0),
        OPTIC_YELLOW(255, 255, 0),
        ELECTRIC_GREEN(120, 240, 0),
        GREEN_SPARK(20, 240, 0),
        WHITE(255, 255, 255),
        LIGHT_OFF(0, 0, 0);

        public static final Companion Companion = new Companion(null);
        private final int blue;
        private final int green;
        private final int red;

        AdaptPreset(int i10, int i11, int i12) {
            this.red = i10;
            this.green = i11;
            this.blue = i12;
        }

        public final int getBlue() {
            return this.blue;
        }

        public final int getGreen() {
            return this.green;
        }

        public final AdaptPreset getNext() {
            int iOrdinal = ordinal() + 1;
            AdaptPreset adaptPreset = iOrdinal > values().length + (-1) ? values()[0] : values()[iOrdinal];
            return adaptPreset == LIGHT_OFF ? adaptPreset.getNext() : adaptPreset;
        }

        public final int getRed() {
            return this.red;
        }

        @Override // java.lang.Enum
        public String toString() {
            return name() + ": RGB(" + this.red + "," + this.green + "," + this.blue + ")";
        }

        /* JADX INFO: compiled from: AdaptMarshaller.kt */
        public static final class Companion {

            /* JADX INFO: compiled from: AdaptMarshaller.kt */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[f.values().length];
                    f fVar = f.BRIGHT_CRIMSON_V1;
                    iArr[6] = 1;
                    f fVar2 = f.LASER_ORANGE;
                    iArr[9] = 2;
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            private Companion() {
            }

            public /* synthetic */ Companion(h hVar) {
                this();
            }

            private final boolean inRangeOf(int i10, int i11, int i12) {
                return i11 - i12 < i10 && i10 < i11 + i12;
            }

            public static /* synthetic */ boolean inRangeOf$default(Companion companion, int i10, int i11, int i12, int i13, Object obj) {
                if ((i13 & 2) != 0) {
                    i12 = 1;
                }
                return companion.inRangeOf(i10, i11, i12);
            }

            /* JADX INFO: renamed from: parse$lambda-1, reason: not valid java name */
            private static final AdaptPreset m2parse$lambda1(f fVar) throws InvalidShoeLEDColorDetectedADK {
                int i10 = WhenMappings.$EnumSwitchMapping$0[fVar.ordinal()];
                if (i10 == 1) {
                    return AdaptPreset.BRIGHT_CRIMSON;
                }
                if (i10 == 2) {
                    return AdaptPreset.TOTAL_ORANGE;
                }
                throw new InvalidShoeLEDColorDetectedADK(fVar.f3652h, fVar.f3653i, fVar.f3654j);
            }

            /* JADX WARN: Code duplicated, block: B:17:0x004e  */
            /* JADX WARN: Code duplicated, block: B:21:? A[RETURN, SYNTHETIC] */
            public final AdaptPreset parse(f fVar) {
                p4.h.j(fVar, "shoeLedLight");
                for (AdaptPreset adaptPreset : AdaptPreset.values()) {
                    Companion companion = AdaptPreset.Companion;
                    if (inRangeOf$default(companion, adaptPreset.getRed(), fVar.f3652h, 0, 2, null) && inRangeOf$default(companion, adaptPreset.getGreen(), fVar.f3653i, 0, 2, null) && inRangeOf$default(companion, adaptPreset.getBlue(), fVar.f3654j, 0, 2, null)) {
                        if (adaptPreset == null) {
                            return m2parse$lambda1(fVar);
                        }
                        return adaptPreset;
                    }
                }
                adaptPreset = null;
                if (adaptPreset == null) {
                    return m2parse$lambda1(fVar);
                }
                return adaptPreset;
            }

            /* JADX WARN: Code duplicated, block: B:18:0x0057  */
            /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
            public final AdaptPreset parse(AdaptColor adaptColor) {
                p4.h.j(adaptColor, "color");
                AdaptPreset[] adaptPresetArrValues = AdaptPreset.values();
                AdaptPreset adaptPreset = AdaptPreset.HERO_BLUE;
                for (AdaptPreset adaptPreset2 : adaptPresetArrValues) {
                    Companion companion = AdaptPreset.Companion;
                    if (inRangeOf$default(companion, adaptPreset2.getRed(), adaptColor.getRed(), 0, 2, null) && inRangeOf$default(companion, adaptPreset2.getGreen(), adaptColor.getGreen(), 0, 2, null) && inRangeOf$default(companion, adaptPreset2.getBlue(), adaptColor.getBlue(), 0, 2, null)) {
                        if (adaptPreset2 == null) {
                            return adaptPreset;
                        }
                        return adaptPreset2;
                    }
                }
                adaptPreset2 = null;
                if (adaptPreset2 == null) {
                    return adaptPreset;
                }
                return adaptPreset2;
            }

            /* JADX WARN: Code duplicated, block: B:18:0x003d  */
            /* JADX WARN: Code duplicated, block: B:22:? A[RETURN, SYNTHETIC] */
            public final AdaptPreset parse(ShoeLightingColor shoeLightingColor) {
                p4.h.j(shoeLightingColor, "color");
                AdaptPreset[] adaptPresetArrValues = AdaptPreset.values();
                AdaptPreset adaptPreset = AdaptPreset.HERO_BLUE;
                for (AdaptPreset adaptPreset2 : adaptPresetArrValues) {
                    if (adaptPreset2.getRed() == shoeLightingColor.getRed() && adaptPreset2.getGreen() == shoeLightingColor.getGreen() && adaptPreset2.getBlue() == shoeLightingColor.getBlue()) {
                        if (adaptPreset2 == null) {
                            return adaptPreset;
                        }
                        return adaptPreset2;
                    }
                }
                adaptPreset2 = null;
                if (adaptPreset2 == null) {
                    return adaptPreset;
                }
                return adaptPreset2;
            }
        }
    }
}
