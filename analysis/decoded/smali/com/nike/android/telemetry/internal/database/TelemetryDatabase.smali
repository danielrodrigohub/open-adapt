.class public abstract Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
.super Ly0/d0;
.source "TelemetryDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;
    }
.end annotation


# static fields
.field public static final m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;

.field public static volatile n:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;

    invoke-direct {v0}, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;-><init>()V

    sput-object v0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->m:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly0/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract r()Lib/a;
.end method
