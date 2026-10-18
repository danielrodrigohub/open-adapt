package com.nike.adapt.adk;

import androidx.lifecycle.i;
import ea.m;
import i8.d;
import p4.h;
import p8.l;
import p8.v;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public interface IDeviceController {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final IDeviceController create(i iVar, d dVar) {
            h.j(dVar, "eventUUID");
            return new DeviceController(iVar, dVar);
        }
    }

    void deleteDisconnectedShoes(m mVar);

    void requestFitCalibrate(v vVar);

    void requestModeTo(l lVar);

    void requestTo(Shoe shoe, l lVar);

    void subscribe(m mVar);

    void unsubscribe();

    void updatePair(m mVar);
}
