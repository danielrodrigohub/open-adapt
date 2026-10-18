package com.nike.android.telemetry.internal.database;

import android.content.Context;
import android.content.Intent;
import androidx.room.MultiInstanceInvalidationService;
import p4.h;
import y0.a0;
import y0.d0;

/* JADX INFO: compiled from: TelemetryDatabase.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class TelemetryDatabase extends d0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final a f5921m = new a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static volatile TelemetryDatabase f5922n;

    /* JADX INFO: compiled from: TelemetryDatabase.kt */
    public static final class a {
        public final TelemetryDatabase a(Context context, String str) {
            h.j(context, "context");
            h.j(str, "libraryName");
            TelemetryDatabase telemetryDatabase = TelemetryDatabase.f5922n;
            if (telemetryDatabase == null) {
                synchronized (this) {
                    telemetryDatabase = TelemetryDatabase.f5922n;
                    if (telemetryDatabase == null) {
                        d0.a aVarA = a0.a(context, TelemetryDatabase.class, str + "-nike-telemetry");
                        aVarA.f18175i = aVarA.f18168b != null ? new Intent(aVarA.f18169c, (Class<?>) MultiInstanceInvalidationService.class) : null;
                        aVarA.f18174h = true;
                        d0 d0VarB = aVarA.b();
                        TelemetryDatabase.f5922n = (TelemetryDatabase) d0VarB;
                        telemetryDatabase = (TelemetryDatabase) d0VarB;
                    }
                }
            }
            return telemetryDatabase;
        }
    }

    public abstract ib.a r();
}
