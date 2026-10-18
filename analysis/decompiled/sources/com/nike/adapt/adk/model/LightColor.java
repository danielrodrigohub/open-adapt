package com.nike.adapt.adk.model;

import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptMarshaller;
import rd.h;

/* JADX INFO: compiled from: LightColor.kt */
/* JADX INFO: loaded from: classes.dex */
public enum LightColor {
    AURORA_GREEN(AdaptMarshaller.AdaptPreset.AURORA_GREEN, R.drawable.ic_led_light_home_aurora_green, R.drawable.ic_led_light_aurora_green, R.drawable.ic_led_light_aurora_green_animated, R.color.aurora_green_palette, R.color.aurora_green_dynamic, R.string.color_aurora_green),
    HERO_BLUE(AdaptMarshaller.AdaptPreset.HERO_BLUE, R.drawable.ic_led_light_home_hero_blue, R.drawable.ic_led_light_hero_blue, R.drawable.ic_led_light_hero_blue_animated, R.color.hero_blue_palette, R.color.hero_blue_dynamic, R.string.color_hero_blue),
    RACER_BLUE(AdaptMarshaller.AdaptPreset.RACER_BLUE, R.drawable.ic_led_light_home_racer_blue, R.drawable.ic_led_light_racer_blue, R.drawable.ic_led_light_racer_blue_animated, R.color.racer_blue_palette, R.color.racer_blue_dynamic, R.string.color_racer_blue),
    VIVID_PURPLE(AdaptMarshaller.AdaptPreset.VIVID_PURPLE, R.drawable.ic_led_light_home_vivid_purple, R.drawable.ic_led_light_vivid_purple, R.drawable.ic_led_light_vivid_purple_animated, R.color.vivid_purple_palette, R.color.vivid_purple_dynamic, R.string.color_vivid_purple),
    PINK_BLAST(AdaptMarshaller.AdaptPreset.PINK_BLAST, R.drawable.ic_led_light_home_pink_blast, R.drawable.ic_led_light_pink_blast, R.drawable.ic_led_light_pink_blast_animated, R.color.pink_blast_palette, R.color.pink_blast_dynamic, R.string.color_pink_blast),
    RED_ORBIT(AdaptMarshaller.AdaptPreset.RED_ORBIT, R.drawable.ic_led_light_home_red_orbit, R.drawable.ic_led_light_red_orbit, R.drawable.ic_led_light_red_orbit_animated, R.color.red_orbit_palette, R.color.red_orbit_dynamic, R.string.color_red_orbit),
    BRIGHT_CRIMSON(AdaptMarshaller.AdaptPreset.BRIGHT_CRIMSON, R.drawable.ic_led_light_home_bright_crimson, R.drawable.ic_led_light_bright_crimson, R.drawable.ic_led_light_bright_crimson_animated, R.color.bright_crimson_palette, R.color.bright_crimson_dynamic, R.string.color_bright_crimson),
    TOTAL_ORANGE(AdaptMarshaller.AdaptPreset.TOTAL_ORANGE, R.drawable.ic_led_light_home_total_orange, R.drawable.ic_led_light_total_orange, R.drawable.ic_led_light_total_orange_animated, R.color.total_orange_palette, R.color.total_orange_dynamic, R.string.color_total_orange),
    OPTIC_YELLOW(AdaptMarshaller.AdaptPreset.OPTIC_YELLOW, R.drawable.ic_led_light_home_optic_yellow, R.drawable.ic_led_light_optic_yellow, R.drawable.ic_led_light_optic_yellow_animated, R.color.opti_yellow_palette, R.color.opti_yellow_dynamic, R.string.color_optic_yellow),
    ELECTRIC_GREEN(AdaptMarshaller.AdaptPreset.ELECTRIC_GREEN, R.drawable.ic_led_light_home_electric_green, R.drawable.ic_led_light_electric_green, R.drawable.ic_led_light_electric_green_animated, R.color.electric_green_palette, R.color.electric_green_dynamic, R.string.color_electric_green),
    GREEN_SPARK(AdaptMarshaller.AdaptPreset.GREEN_SPARK, R.drawable.ic_led_light_home_green_spark, R.drawable.ic_led_light_green_spark, R.drawable.ic_led_light_green_spark_animated, R.color.green_spark_palette, R.color.green_spark_dynamic, R.string.color_green_spark),
    WHITE(AdaptMarshaller.AdaptPreset.WHITE, R.drawable.ic_led_light_home_white, R.drawable.ic_led_light_white, R.drawable.ic_led_light_white_animated, R.color.white_palette, R.color.white_dynamic, R.string.color_white);

    public static final Companion Companion = new Companion(null);
    private final AdaptMarshaller.AdaptPreset adaptColorPreset;
    private final int blue;
    private final int dynamicHex;
    private final int green;
    private final int ledLightHomeIcon;
    private final int ledLightIcon;
    private final int ledLightIconAnimated;
    private final int paletteHex;
    private final int red;
    private final int title;

    /* JADX INFO: compiled from: LightColor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final LightColor valueOf(AdaptMarshaller.AdaptPreset adaptPreset) {
            LightColor[] lightColorArrValues = LightColor.values();
            LightColor lightColor = LightColor.HERO_BLUE;
            for (LightColor lightColor2 : lightColorArrValues) {
                if (lightColor2.getAdaptColorPreset() == adaptPreset) {
                    return lightColor2;
                }
            }
            return lightColor;
        }
    }

    LightColor(AdaptMarshaller.AdaptPreset adaptPreset, int i10, int i11, int i12, int i13, int i14, int i15) {
        this.adaptColorPreset = adaptPreset;
        this.ledLightHomeIcon = i10;
        this.ledLightIcon = i11;
        this.ledLightIconAnimated = i12;
        this.paletteHex = i13;
        this.dynamicHex = i14;
        this.title = i15;
        this.red = adaptPreset.getRed();
        this.green = adaptPreset.getGreen();
        this.blue = adaptPreset.getBlue();
    }

    public final AdaptMarshaller.AdaptPreset getAdaptColorPreset() {
        return this.adaptColorPreset;
    }

    public final int getBlue() {
        return this.blue;
    }

    public final int getDynamicHex() {
        return this.dynamicHex;
    }

    public final int getGreen() {
        return this.green;
    }

    public final int getLedLightHomeIcon() {
        return this.ledLightHomeIcon;
    }

    public final int getLedLightIcon() {
        return this.ledLightIcon;
    }

    public final int getLedLightIconAnimated() {
        return this.ledLightIconAnimated;
    }

    public final int getPaletteHex() {
        return this.paletteHex;
    }

    public final int getRed() {
        return this.red;
    }

    public final int getTitle() {
        return this.title;
    }
}
