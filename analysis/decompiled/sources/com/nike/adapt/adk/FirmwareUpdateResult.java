package com.nike.adapt.adk;

import android.os.Parcelable;
import i8.b;
import i8.d;
import java.util.UUID;
import rd.h;

/* JADX INFO: compiled from: FirmwareUpdateResults.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class FirmwareUpdateResult implements b, Parcelable {
    private FirmwareUpdateResult() {
    }

    public /* synthetic */ FirmwareUpdateResult(h hVar) {
        this();
    }

    public d getEventUUID() {
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        return new d("FirmwareUpdateResult", uuidRandomUUID);
    }
}
