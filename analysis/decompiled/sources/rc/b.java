package rc;

/* JADX INFO: compiled from: FirmwareUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public enum b {
    MCU_IMAGE_UPDATE(0),
    BLE_IMAGE_UPDATE(2),
    CS_IMAGE_UPDATE(4),
    MCU_IMAGE_GOLD(1),
    BLE_IMAGE_GOLD(3),
    CS_IMAGE_GOLD(5),
    UNKNOWN(-1);


    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14755h;

    b(int i10) {
        this.f14755h = i10;
    }
}
