package kc;

import androidx.appcompat.widget.o;

/* JADX INFO: compiled from: FileTransferError.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends Throwable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f9786h;

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class a extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, boolean z10, boolean z11, String str2) {
            super("CORE_RF_FILE_TRANSFER_ERROR_FAILED_COMPLETE_STATUS status: " + str2, z11, z10, str);
            p4.h.j(str, "deviceId");
            p4.h.j(str2, "status");
        }
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class b extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String str, boolean z10, boolean z11) {
            super("CORE_RF_FILE_TRANSFER_ERROR_NAK_ON_PUBLISH", z11, z10, str);
            p4.h.j(str, "deviceId");
        }
    }

    /* JADX INFO: renamed from: kc.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class C0190c extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0190c(String str, boolean z10, boolean z11) {
            super("CORE_RF_FILE_TRANSFER_ERROR_NAK_ON_PULL", z11, z10, str);
            p4.h.j(str, "deviceId");
        }
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class d extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, boolean z10, boolean z11) {
            super("CORE_RF_FILE_TRANSFER_ERROR_NO_IMAGE_STATS", z11, z10, str);
            p4.h.j(str, "deviceId");
        }
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static abstract class e extends c {

        /* JADX INFO: compiled from: FileTransferError.kt */
        public static final class a extends e {

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final int f9787i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final int f9788j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final int f9789k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(String str, int i10, int i11, int i12, boolean z10) {
                super("CORE_RF_FILE_TRANSFER_ERROR_CRC_MISMATCH_" + com.nike.adapt.adk.model.a.b(i10) + " expected: " + i11 + " actual: " + i12, z10, str);
                p4.h.j(str, "deviceId");
                o.d(i10, "slot");
                this.f9787i = i10;
                this.f9788j = i11;
                this.f9789k = i12;
            }

            @Override // kc.c.e
            public final int a() {
                return this.f9787i;
            }
        }

        /* JADX INFO: compiled from: FileTransferError.kt */
        public static final class b extends e {

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final int f9790i;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str, int i10, String str2, boolean z10) {
                super("CORE_RF_FILE_TRANSFER_ERROR_STATUS_NOT_READY_" + com.nike.adapt.adk.model.a.b(i10) + " status: " + str2, z10, str);
                p4.h.j(str, "deviceId");
                o.d(i10, "slot");
                p4.h.j(str2, "status");
                this.f9790i = i10;
            }

            @Override // kc.c.e
            public final int a() {
                return this.f9790i;
            }
        }

        /* JADX INFO: renamed from: kc.c$e$c, reason: collision with other inner class name */
        /* JADX INFO: compiled from: FileTransferError.kt */
        public static final class C0191c extends e {

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final int f9791i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final String f9792j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final String f9793k;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0191c(String str, int i10, String str2, String str3, boolean z10) {
                super("CORE_RF_FILE_TRANSFER_ERROR_VERSION_MISMATCH_" + com.nike.adapt.adk.model.a.b(i10) + " expected: " + str2 + " actual: " + str3, z10, str);
                p4.h.j(str, "deviceId");
                o.d(i10, "slot");
                p4.h.j(str2, "expected");
                this.f9791i = i10;
                this.f9792j = str2;
                this.f9793k = str3;
            }

            @Override // kc.c.e
            public final int a() {
                return this.f9791i;
            }
        }

        public e(String str, boolean z10, String str2) {
            super(str, true, z10, str2);
        }

        public abstract int a();
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class f extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, boolean z10, boolean z11, String str2) {
            super("CORE_RF_FILE_TRANSFER_ERROR_FAILED_COMPLETE_STATUS status: " + str2, z11, z10, str);
            p4.h.j(str, "deviceId");
            p4.h.j(str2, "status");
        }
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class g extends c {
        public g(boolean z10) {
            super("CORE_RF_FILE_TRANSFER_ERROR_TRANSFER_ALREADY_IN_FLIGHT", true, z10, "FirmwareTransferAlreadyInProgress");
        }
    }

    /* JADX INFO: compiled from: FileTransferError.kt */
    public static final class h extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str) {
            super("Transfer Canceled", false, false, str);
            p4.h.j(str, "deviceId");
        }
    }

    public c(String str, boolean z10, boolean z11, String str2) {
        StringBuilder sb2 = new StringBuilder();
        String str3 = "";
        sb2.append(z10 ? "FIRMWARE_" : "");
        sb2.append(str);
        if (z10) {
            str3 = " isGoldSlot: " + z11;
        }
        sb2.append(str3);
        sb2.append(" for deviceId: ");
        sb2.append(str2);
        this.f9786h = sb2.toString();
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.f9786h;
    }
}
