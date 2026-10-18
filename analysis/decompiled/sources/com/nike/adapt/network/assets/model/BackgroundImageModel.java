package com.nike.adapt.network.assets.model;

import a1.f;
import f7.b;
import p4.h;

/* JADX INFO: compiled from: BackgroundImageModel.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BackgroundImageModel {

    @b("background_gradient_images")
    private final GradientImages gradientImages;
    private final int model_version;
    private final String shoe_identifier;
    private final String shoe_name;

    public BackgroundImageModel(int i10, String str, String str2, GradientImages gradientImages) {
        h.j(str, "shoe_identifier");
        h.j(str2, "shoe_name");
        this.model_version = i10;
        this.shoe_identifier = str;
        this.shoe_name = str2;
        this.gradientImages = gradientImages;
    }

    public static /* synthetic */ BackgroundImageModel copy$default(BackgroundImageModel backgroundImageModel, int i10, String str, String str2, GradientImages gradientImages, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = backgroundImageModel.model_version;
        }
        if ((i11 & 2) != 0) {
            str = backgroundImageModel.shoe_identifier;
        }
        if ((i11 & 4) != 0) {
            str2 = backgroundImageModel.shoe_name;
        }
        if ((i11 & 8) != 0) {
            gradientImages = backgroundImageModel.gradientImages;
        }
        return backgroundImageModel.copy(i10, str, str2, gradientImages);
    }

    public final int component1() {
        return this.model_version;
    }

    public final String component2() {
        return this.shoe_identifier;
    }

    public final String component3() {
        return this.shoe_name;
    }

    public final GradientImages component4() {
        return this.gradientImages;
    }

    public final BackgroundImageModel copy(int i10, String str, String str2, GradientImages gradientImages) {
        h.j(str, "shoe_identifier");
        h.j(str2, "shoe_name");
        return new BackgroundImageModel(i10, str, str2, gradientImages);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BackgroundImageModel)) {
            return false;
        }
        BackgroundImageModel backgroundImageModel = (BackgroundImageModel) obj;
        return this.model_version == backgroundImageModel.model_version && h.c(this.shoe_identifier, backgroundImageModel.shoe_identifier) && h.c(this.shoe_name, backgroundImageModel.shoe_name) && h.c(this.gradientImages, backgroundImageModel.gradientImages);
    }

    public final GradientImages getGradientImages() {
        return this.gradientImages;
    }

    public final int getModel_version() {
        return this.model_version;
    }

    public final String getShoe_identifier() {
        return this.shoe_identifier;
    }

    public final String getShoe_name() {
        return this.shoe_name;
    }

    public int hashCode() {
        int iC = f.c(this.shoe_name, f.c(this.shoe_identifier, Integer.hashCode(this.model_version) * 31, 31), 31);
        GradientImages gradientImages = this.gradientImages;
        return iC + (gradientImages == null ? 0 : gradientImages.hashCode());
    }

    public String toString() {
        return "BackgroundImageModel(model_version=" + this.model_version + ", shoe_identifier=" + this.shoe_identifier + ", shoe_name=" + this.shoe_name + ", gradientImages=" + this.gradientImages + ")";
    }
}
