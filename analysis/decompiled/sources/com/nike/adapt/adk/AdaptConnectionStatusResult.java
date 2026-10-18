package com.nike.adapt.adk;

import android.os.Parcelable;
import ea.m;
import i8.b;
import i8.d;
import rd.h;

/* JADX INFO: compiled from: AdaptRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdaptConnectionStatusResult implements b, Parcelable {
    private final m device;
    private final d eventUUID;
    private final Shoe shoe;

    private AdaptConnectionStatusResult(d dVar, Shoe shoe, m mVar) {
        this.eventUUID = dVar;
        this.shoe = shoe;
        this.device = mVar;
    }

    public /* synthetic */ AdaptConnectionStatusResult(d dVar, Shoe shoe, m mVar, h hVar) {
        this(dVar, shoe, mVar);
    }

    public final m getDevice() {
        return this.device;
    }

    public d getEventUUID() {
        return this.eventUUID;
    }

    public final Shoe getShoe() {
        return this.shoe;
    }
}
