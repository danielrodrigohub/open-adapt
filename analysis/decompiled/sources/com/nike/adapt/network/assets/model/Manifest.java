package com.nike.adapt.network.assets.model;

import f7.b;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: Manifest.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Manifest {

    @b("files")
    private final List<AssetFile> assetFiles;

    @b("configuration")
    private final Configuration configuration;

    /* JADX WARN: Multi-variable type inference failed */
    public Manifest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public Manifest(Configuration configuration, List<AssetFile> list) {
        this.configuration = configuration;
        this.assetFiles = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Manifest copy$default(Manifest manifest, Configuration configuration, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            configuration = manifest.configuration;
        }
        if ((i10 & 2) != 0) {
            list = manifest.assetFiles;
        }
        return manifest.copy(configuration, list);
    }

    public final Configuration component1() {
        return this.configuration;
    }

    public final List<AssetFile> component2() {
        return this.assetFiles;
    }

    public final Manifest copy(Configuration configuration, List<AssetFile> list) {
        return new Manifest(configuration, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Manifest)) {
            return false;
        }
        Manifest manifest = (Manifest) obj;
        return h.c(this.configuration, manifest.configuration) && h.c(this.assetFiles, manifest.assetFiles);
    }

    public final List<AssetFile> getAssetFiles() {
        return this.assetFiles;
    }

    public final Configuration getConfiguration() {
        return this.configuration;
    }

    public int hashCode() {
        Configuration configuration = this.configuration;
        int iHashCode = (configuration == null ? 0 : configuration.hashCode()) * 31;
        List<AssetFile> list = this.assetFiles;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        return "Manifest(configuration=" + this.configuration + ", assetFiles=" + this.assetFiles + ")";
    }

    public /* synthetic */ Manifest(Configuration configuration, List list, int i10, rd.h hVar) {
        this((i10 & 1) != 0 ? null : configuration, (i10 & 2) != 0 ? null : list);
    }
}
