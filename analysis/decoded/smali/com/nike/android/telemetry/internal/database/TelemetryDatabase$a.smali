.class public final Lcom/nike/android/telemetry/internal/database/TelemetryDatabase$a;
.super Ljava/lang/Object;
.source "TelemetryDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "libraryName"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->n:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    if-nez v0, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->n:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "-nike-telemetry"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, p2}, Ly0/a0;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ly0/d0$a;

    move-result-object p1

    .line 7
    iget-object p2, p1, Ly0/d0$a;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p1, Ly0/d0$a;->c:Landroid/content/Context;

    const-class v1, Landroidx/room/MultiInstanceInvalidationService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    iput-object p2, p1, Ly0/d0$a;->i:Landroid/content/Intent;

    const/4 p2, 0x1

    .line 9
    iput-boolean p2, p1, Ly0/d0$a;->h:Z

    .line 10
    invoke-virtual {p1}, Ly0/d0$a;->b()Ly0/d0;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    .line 11
    sput-object p2, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;->n:Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;

    .line 12
    check-cast p1, Lcom/nike/android/telemetry/internal/database/TelemetryDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 13
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    monitor-exit p0

    throw p1

    :cond_2
    :goto_3
    return-object v0
.end method
