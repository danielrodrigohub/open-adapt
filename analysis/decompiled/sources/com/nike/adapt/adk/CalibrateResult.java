package com.nike.adapt.adk;

import ba.a0;
import ba.b0;
import ba.l0;
import ba.q;
import ba.v;
import ba.z;
import rd.h;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public enum CalibrateResult {
    MOVING_TO_ZERO_FIT,
    COMPLETED_FIT,
    MOVING_TO_MAXIMUM_FIT,
    MAXIMUM_FOUND_FIT,
    CALIBRATE_TIMEOUT,
    NOT_REQUIRED;

    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final CalibrateResult valueOf(v vVar) {
            p4.h.j(vVar, "result");
            if (vVar instanceof b0) {
                return CalibrateResult.MOVING_TO_ZERO_FIT;
            }
            if (vVar instanceof q) {
                return CalibrateResult.COMPLETED_FIT;
            }
            if (vVar instanceof a0) {
                return CalibrateResult.MOVING_TO_MAXIMUM_FIT;
            }
            if (vVar instanceof z) {
                return CalibrateResult.MAXIMUM_FOUND_FIT;
            }
            return vVar instanceof l0 ? CalibrateResult.CALIBRATE_TIMEOUT : CalibrateResult.NOT_REQUIRED;
        }
    }
}
