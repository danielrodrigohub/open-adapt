package com.nike.adapt.network.assets.model;

import a4.g;
import f7.b;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ColorwayV1 {

    @b("asset_base_url")
    private final String assetBaseUrl;

    @b("models")
    private final List<BackgroundImageModel> backgroundImageModel;

    @b("colorways")
    private final List<Colorway> colorways;

    public ColorwayV1(String str, List<Colorway> list, List<BackgroundImageModel> list2) {
        h.j(str, "assetBaseUrl");
        h.j(list, "colorways");
        h.j(list2, "backgroundImageModel");
        this.assetBaseUrl = str;
        this.colorways = list;
        this.backgroundImageModel = list2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ ColorwayV1 copy$default(ColorwayV1 colorwayV1, String str, List list, List list2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = colorwayV1.assetBaseUrl;
        }
        if ((i10 & 2) != 0) {
            list = colorwayV1.colorways;
        }
        if ((i10 & 4) != 0) {
            list2 = colorwayV1.backgroundImageModel;
        }
        return colorwayV1.copy(str, list, list2);
    }

    public final String component1() {
        return this.assetBaseUrl;
    }

    public final List<Colorway> component2() {
        return this.colorways;
    }

    public final List<BackgroundImageModel> component3() {
        return this.backgroundImageModel;
    }

    public final ColorwayV1 copy(String str, List<Colorway> list, List<BackgroundImageModel> list2) {
        h.j(str, "assetBaseUrl");
        h.j(list, "colorways");
        h.j(list2, "backgroundImageModel");
        return new ColorwayV1(str, list, list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ColorwayV1)) {
            return false;
        }
        ColorwayV1 colorwayV1 = (ColorwayV1) obj;
        return h.c(this.assetBaseUrl, colorwayV1.assetBaseUrl) && h.c(this.colorways, colorwayV1.colorways) && h.c(this.backgroundImageModel, colorwayV1.backgroundImageModel);
    }

    public final String getAssetBaseUrl() {
        return this.assetBaseUrl;
    }

    public final List<BackgroundImageModel> getBackgroundImageModel() {
        return this.backgroundImageModel;
    }

    public final List<Colorway> getColorways() {
        return this.colorways;
    }

    public int hashCode() {
        return this.backgroundImageModel.hashCode() + g.d(this.colorways, this.assetBaseUrl.hashCode() * 31, 31);
    }

    public String toString() {
        return "ColorwayV1(assetBaseUrl=" + this.assetBaseUrl + ", colorways=" + this.colorways + ", backgroundImageModel=" + this.backgroundImageModel + ")";
    }
}
