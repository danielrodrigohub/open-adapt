package com.nike.adapt.adk.model;

import a0.d;
import androidx.lifecycle.o;
import rd.h;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'AURORA_GREEN' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:399)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:364)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:349)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:315)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:288)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: ShoeColor.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ShoeColor {
    private static final /* synthetic */ ShoeColor[] $VALUES;
    public static final ShoeColor AURORA_GREEN;
    public static final ShoeColor BRIGHT_CRIMSON;
    public static final Companion Companion;
    public static final ShoeColor ELECTRIC_GREEN;
    public static final ShoeColor GREEN_SPARK;
    public static final ShoeColor GREEN_SPARK_OPTI_YELLOW;
    public static final ShoeColor GREEN_SPARK_WHITE;
    public static final ShoeColor HERO_BLUE;
    public static final ShoeColor HERO_BLUE_PINK_BLAST;
    public static final ShoeColor OPTI_YELLOW;
    public static final ShoeColor PINK_BLAST;
    public static final ShoeColor RACER_BLUE;
    public static final ShoeColor RACER_BLUE_AURORA_GREEN;
    public static final ShoeColor RACER_BLUE_ELECTRIC_GREEN;
    public static final ShoeColor RACER_BLUE_OPTI_YELLOW;
    public static final ShoeColor RED_ORBIT;
    public static final ShoeColor RED_ORBIT_OPTI_YELLOW;
    public static final ShoeColor RED_ORBIT_RACER_BLUE;
    public static final ShoeColor RED_ORBIT_WHITE;
    public static final ShoeColor TOTAL_ORANGE;
    public static final ShoeColor VIVID_PURPLE;
    public static final ShoeColor VIVID_PURPLE_AURORA_GREEN;
    public static final ShoeColor VIVID_PURPLE_OPTI_YELLOW;
    public static final ShoeColor VIVID_PURPLE_WHITE;
    public static final ShoeColor WHITE;
    private final LightColor leftLightColor;
    private final LightColor rightLightColor;

    /* JADX INFO: compiled from: ShoeColor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final ShoeColor valueOf(AdaptShoeColor adaptShoeColor) {
            p4.h.j(adaptShoeColor, "adaptShoeColor");
            ShoeColor[] shoeColorArrValues = ShoeColor.values();
            ShoeColor shoeColor = ShoeColor.HERO_BLUE;
            for (ShoeColor shoeColor2 : shoeColorArrValues) {
                if (shoeColor2.getLeftLightColor().getAdaptColorPreset() == adaptShoeColor.getLeftAdaptPreset() && shoeColor2.getRightLightColor().getAdaptColorPreset() == adaptShoeColor.getRightAdaptPreset()) {
                    return shoeColor2;
                }
            }
            return shoeColor;
        }
    }

    private static final /* synthetic */ ShoeColor[] $values() {
        return new ShoeColor[]{AURORA_GREEN, HERO_BLUE, RACER_BLUE, VIVID_PURPLE, PINK_BLAST, RED_ORBIT, BRIGHT_CRIMSON, TOTAL_ORANGE, OPTI_YELLOW, ELECTRIC_GREEN, GREEN_SPARK, WHITE, RACER_BLUE_OPTI_YELLOW, RACER_BLUE_ELECTRIC_GREEN, RACER_BLUE_AURORA_GREEN, VIVID_PURPLE_OPTI_YELLOW, VIVID_PURPLE_WHITE, VIVID_PURPLE_AURORA_GREEN, RED_ORBIT_RACER_BLUE, RED_ORBIT_OPTI_YELLOW, RED_ORBIT_WHITE, GREEN_SPARK_OPTI_YELLOW, GREEN_SPARK_WHITE, HERO_BLUE_PINK_BLAST};
    }

    static {
        LightColor lightColor = LightColor.AURORA_GREEN;
        AURORA_GREEN = new ShoeColor("AURORA_GREEN", 0, lightColor, lightColor);
        LightColor lightColor2 = LightColor.HERO_BLUE;
        HERO_BLUE = new ShoeColor("HERO_BLUE", 1, lightColor2, lightColor2);
        LightColor lightColor3 = LightColor.RACER_BLUE;
        RACER_BLUE = new ShoeColor("RACER_BLUE", 2, lightColor3, lightColor3);
        LightColor lightColor4 = LightColor.VIVID_PURPLE;
        VIVID_PURPLE = new ShoeColor("VIVID_PURPLE", 3, lightColor4, lightColor4);
        LightColor lightColor5 = LightColor.PINK_BLAST;
        PINK_BLAST = new ShoeColor("PINK_BLAST", 4, lightColor5, lightColor5);
        LightColor lightColor6 = LightColor.RED_ORBIT;
        RED_ORBIT = new ShoeColor("RED_ORBIT", 5, lightColor6, lightColor6);
        LightColor lightColor7 = LightColor.BRIGHT_CRIMSON;
        BRIGHT_CRIMSON = new ShoeColor("BRIGHT_CRIMSON", 6, lightColor7, lightColor7);
        LightColor lightColor8 = LightColor.TOTAL_ORANGE;
        TOTAL_ORANGE = new ShoeColor("TOTAL_ORANGE", 7, lightColor8, lightColor8);
        LightColor lightColor9 = LightColor.OPTIC_YELLOW;
        OPTI_YELLOW = new ShoeColor("OPTI_YELLOW", 8, lightColor9, lightColor9);
        LightColor lightColor10 = LightColor.ELECTRIC_GREEN;
        ELECTRIC_GREEN = new ShoeColor("ELECTRIC_GREEN", 9, lightColor10, lightColor10);
        LightColor lightColor11 = LightColor.GREEN_SPARK;
        GREEN_SPARK = new ShoeColor("GREEN_SPARK", 10, lightColor11, lightColor11);
        LightColor lightColor12 = LightColor.WHITE;
        WHITE = new ShoeColor("WHITE", 11, lightColor12, lightColor12);
        RACER_BLUE_OPTI_YELLOW = new ShoeColor("RACER_BLUE_OPTI_YELLOW", 12, lightColor3, lightColor9);
        RACER_BLUE_ELECTRIC_GREEN = new ShoeColor("RACER_BLUE_ELECTRIC_GREEN", 13, lightColor3, lightColor10);
        RACER_BLUE_AURORA_GREEN = new ShoeColor("RACER_BLUE_AURORA_GREEN", 14, lightColor3, lightColor);
        VIVID_PURPLE_OPTI_YELLOW = new ShoeColor("VIVID_PURPLE_OPTI_YELLOW", 15, lightColor4, lightColor9);
        VIVID_PURPLE_WHITE = new ShoeColor("VIVID_PURPLE_WHITE", 16, lightColor4, lightColor12);
        VIVID_PURPLE_AURORA_GREEN = new ShoeColor("VIVID_PURPLE_AURORA_GREEN", 17, lightColor4, lightColor);
        RED_ORBIT_RACER_BLUE = new ShoeColor("RED_ORBIT_RACER_BLUE", 18, lightColor6, lightColor3);
        RED_ORBIT_OPTI_YELLOW = new ShoeColor("RED_ORBIT_OPTI_YELLOW", 19, lightColor6, lightColor9);
        RED_ORBIT_WHITE = new ShoeColor("RED_ORBIT_WHITE", 20, lightColor6, lightColor12);
        GREEN_SPARK_OPTI_YELLOW = new ShoeColor("GREEN_SPARK_OPTI_YELLOW", 21, lightColor11, lightColor9);
        GREEN_SPARK_WHITE = new ShoeColor("GREEN_SPARK_WHITE", 22, lightColor11, lightColor12);
        HERO_BLUE_PINK_BLAST = new ShoeColor("HERO_BLUE_PINK_BLAST", 23, lightColor2, lightColor5);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    private ShoeColor(String str, int i10, LightColor lightColor, LightColor lightColor2) {
        super(str, i10);
        this.leftLightColor = lightColor;
        this.rightLightColor = lightColor2;
    }

    public static ShoeColor valueOf(String str) {
        return (ShoeColor) Enum.valueOf(ShoeColor.class, str);
    }

    public static ShoeColor[] values() {
        return (ShoeColor[]) $VALUES.clone();
    }

    public final LightColor getLeftLightColor() {
        return this.leftLightColor;
    }

    public final LightColor getLightColor() {
        return this.leftLightColor;
    }

    public final ShoeColor getNext(boolean z10) {
        int length = values().length;
        for (int i10 = 1; i10 < length; i10++) {
            ShoeColor shoeColor = values()[(ordinal() + i10) % values().length];
            if (z10 || !shoeColor.isDuo()) {
                return shoeColor;
            }
        }
        return this;
    }

    public final LightColor getRightLightColor() {
        return this.rightLightColor;
    }

    public final String getTitle() {
        return isDuo() ? d.c(o.r(this.leftLightColor.getTitle()), " / ", o.r(this.rightLightColor.getTitle())) : o.r(this.leftLightColor.getTitle());
    }

    public final boolean isDuo() {
        return this.rightLightColor != this.leftLightColor;
    }
}
