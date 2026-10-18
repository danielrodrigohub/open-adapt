package com.nike.adapt.network.assets.model;

import f7.b;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AssetFile {

    @b("name")
    private final String name;

    @b("version")
    private final String version;

    public AssetFile(String str, String str2) {
        h.j(str, "name");
        h.j(str2, "version");
        this.name = str;
        this.version = str2;
    }

    public static /* synthetic */ AssetFile copy$default(AssetFile assetFile, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = assetFile.name;
        }
        if ((i10 & 2) != 0) {
            str2 = assetFile.version;
        }
        return assetFile.copy(str, str2);
    }

    public final String component1() {
        return this.name;
    }

    public final String component2() {
        return this.version;
    }

    public final AssetFile copy(String str, String str2) {
        h.j(str, "name");
        h.j(str2, "version");
        return new AssetFile(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetFile)) {
            return false;
        }
        AssetFile assetFile = (AssetFile) obj;
        return h.c(this.name, assetFile.name) && h.c(this.version, assetFile.version);
    }

    public final String getName() {
        return this.name;
    }

    public final String getVersion() {
        return this.version;
    }

    public int hashCode() {
        return this.version.hashCode() + (this.name.hashCode() * 31);
    }

    public String toString() {
        return a0.b.a("AssetFile(name=", this.name, ", version=", this.version, ")");
    }
}
