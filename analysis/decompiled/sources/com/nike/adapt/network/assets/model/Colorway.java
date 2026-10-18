package com.nike.adapt.network.assets.model;

import a1.f;
import a4.g;
import androidx.fragment.app.r0;
import f7.b;
import fa.m;
import java.util.List;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Colorway {

    @b("assets_angled")
    private final Map<String, String> assetsAngled;

    @b("assets_profile")
    private final Map<String, String> assetsProfile;

    @b("color_name")
    private final String colorName;

    @b("colorway_version")
    private final int colorwayVersion;

    @b("identifier")
    private final String identifier;

    @b("shoe_identifier")
    private final String shoeIdentifier;

    @b("shoe_lighting_color")
    private final ShoeLightingColor shoeLightingColor;

    @b("shoe_name")
    private final String shoeName;

    @b("style_code")
    private final List<String> styleCodes;

    public Colorway(Map<String, String> map, Map<String, String> map2, String str, int i10, String str2, ShoeLightingColor shoeLightingColor, String str3, List<String> list, String str4) {
        h.j(map, "assetsAngled");
        h.j(map2, "assetsProfile");
        h.j(str, "colorName");
        h.j(str2, "shoeIdentifier");
        h.j(shoeLightingColor, "shoeLightingColor");
        h.j(str3, "shoeName");
        h.j(list, "styleCodes");
        h.j(str4, "identifier");
        this.assetsAngled = map;
        this.assetsProfile = map2;
        this.colorName = str;
        this.colorwayVersion = i10;
        this.shoeIdentifier = str2;
        this.shoeLightingColor = shoeLightingColor;
        this.shoeName = str3;
        this.styleCodes = list;
        this.identifier = str4;
    }

    public final Map<String, String> component1() {
        return this.assetsAngled;
    }

    public final Map<String, String> component2() {
        return this.assetsProfile;
    }

    public final String component3() {
        return this.colorName;
    }

    public final int component4() {
        return this.colorwayVersion;
    }

    public final String component5() {
        return this.shoeIdentifier;
    }

    public final ShoeLightingColor component6() {
        return this.shoeLightingColor;
    }

    public final String component7() {
        return this.shoeName;
    }

    public final List<String> component8() {
        return this.styleCodes;
    }

    public final String component9() {
        return this.identifier;
    }

    public final Colorway copy(Map<String, String> map, Map<String, String> map2, String str, int i10, String str2, ShoeLightingColor shoeLightingColor, String str3, List<String> list, String str4) {
        h.j(map, "assetsAngled");
        h.j(map2, "assetsProfile");
        h.j(str, "colorName");
        h.j(str2, "shoeIdentifier");
        h.j(shoeLightingColor, "shoeLightingColor");
        h.j(str3, "shoeName");
        h.j(list, "styleCodes");
        h.j(str4, "identifier");
        return new Colorway(map, map2, str, i10, str2, shoeLightingColor, str3, list, str4);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Colorway)) {
            return false;
        }
        Colorway colorway = (Colorway) obj;
        return h.c(this.assetsAngled, colorway.assetsAngled) && h.c(this.assetsProfile, colorway.assetsProfile) && h.c(this.colorName, colorway.colorName) && this.colorwayVersion == colorway.colorwayVersion && h.c(this.shoeIdentifier, colorway.shoeIdentifier) && h.c(this.shoeLightingColor, colorway.shoeLightingColor) && h.c(this.shoeName, colorway.shoeName) && h.c(this.styleCodes, colorway.styleCodes) && h.c(this.identifier, colorway.identifier);
    }

    public final Map<String, String> getAssetsAngled() {
        return this.assetsAngled;
    }

    public final Map<String, String> getAssetsProfile() {
        return this.assetsProfile;
    }

    public final String getColorName() {
        return this.colorName;
    }

    public final int getColorwayVersion() {
        return this.colorwayVersion;
    }

    public final String getIdentifier() {
        return this.identifier;
    }

    public final String getShoeIdentifier() {
        return this.shoeIdentifier;
    }

    public final ShoeLightingColor getShoeLightingColor() {
        return this.shoeLightingColor;
    }

    public final String getShoeName() {
        return this.shoeName;
    }

    public final List<String> getStyleCodes() {
        return this.styleCodes;
    }

    public int hashCode() {
        return this.identifier.hashCode() + g.d(this.styleCodes, f.c(this.shoeName, (this.shoeLightingColor.hashCode() + f.c(this.shoeIdentifier, r0.e(this.colorwayVersion, f.c(this.colorName, m.d(this.assetsProfile, this.assetsAngled.hashCode() * 31, 31), 31), 31), 31)) * 31, 31), 31);
    }

    public String toString() {
        Map<String, String> map = this.assetsAngled;
        Map<String, String> map2 = this.assetsProfile;
        String str = this.colorName;
        int i10 = this.colorwayVersion;
        String str2 = this.shoeIdentifier;
        ShoeLightingColor shoeLightingColor = this.shoeLightingColor;
        String str3 = this.shoeName;
        List<String> list = this.styleCodes;
        String str4 = this.identifier;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Colorway(assetsAngled=");
        sb2.append(map);
        sb2.append(", assetsProfile=");
        sb2.append(map2);
        sb2.append(", colorName=");
        sb2.append(str);
        sb2.append(", colorwayVersion=");
        sb2.append(i10);
        sb2.append(", shoeIdentifier=");
        sb2.append(str2);
        sb2.append(", shoeLightingColor=");
        sb2.append(shoeLightingColor);
        sb2.append(", shoeName=");
        sb2.append(str3);
        sb2.append(", styleCodes=");
        sb2.append(list);
        sb2.append(", identifier=");
        return f.d(sb2, str4, ")");
    }
}
