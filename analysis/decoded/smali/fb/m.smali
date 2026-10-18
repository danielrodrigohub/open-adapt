.class public final Lfb/m;
.super Ljava/lang/Object;
.source "FirmwareTelemetry.kt"


# instance fields
.field public final a:Lea/m;

.field public final b:Leb/e;

.field public volatile c:Ljava/lang/String;

.field public volatile d:Ljava/lang/String;

.field public volatile e:Ljava/lang/String;

.field public volatile f:I

.field public volatile g:I

.field public volatile h:I

.field public volatile i:J

.field public final j:Lfa/c;

.field public volatile k:Lfa/d;

.field public final l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lea/m;)V
    .locals 11

    .line 1
    sget-object v0, Leb/f;->a:Leb/f;

    const-string v1, "randomUUID().toString()"

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 6
    new-instance v7, Lfa/c;

    .line 7
    sget-object v8, Lfb/c;->i:Lfb/c$a;

    .line 8
    sget-object v8, Lfb/c;->j:Lfb/c;

    .line 9
    new-instance v9, Lfa/n$c;

    invoke-direct {v9, v8}, Lfa/n$c;-><init>(Lfb/c;)V

    .line 10
    sget-object v10, Lfa/k$r;->h:Lfa/k$r;

    .line 11
    invoke-direct {v7, v8, v9, v10}, Lfa/c;-><init>(Lfb/c;Lfa/n;Lfa/k;)V

    .line 12
    new-instance v8, Lfa/d;

    invoke-direct {v8, v7, v7}, Lfa/d;-><init>(Lfa/c;Lfa/c;)V

    const-string v9, "fwTelemetryState"

    .line 13
    invoke-static {v1, v9}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lfb/m;->a:Lea/m;

    .line 16
    iput-object v0, p0, Lfb/m;->b:Leb/e;

    .line 17
    iput-object v2, p0, Lfb/m;->c:Ljava/lang/String;

    .line 18
    iput-object v3, p0, Lfb/m;->d:Ljava/lang/String;

    .line 19
    iput-object v4, p0, Lfb/m;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lfb/m;->f:I

    .line 21
    iput p1, p0, Lfb/m;->g:I

    .line 22
    iput v1, p0, Lfb/m;->h:I

    .line 23
    iput-wide v5, p0, Lfb/m;->i:J

    .line 24
    iput-object v7, p0, Lfb/m;->j:Lfa/c;

    .line 25
    iput-object v8, p0, Lfb/m;->k:Lfa/d;

    .line 26
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb/m;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lw9/u1;Lfa/d;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lfb/m;->k:Lfa/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shoe"

    .line 2
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lfa/d;->h:Lfa/c;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lfa/d;->i:Lfa/c;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lfa/d;->h:Lfa/c;

    goto :goto_1

    :cond_1
    iget-object p2, p2, Lfa/d;->i:Lfa/c;

    .line 5
    :goto_1
    invoke-static {v0, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 6
    iget-object v1, v0, Lfa/c;->j:Lfa/k;

    .line 7
    invoke-interface {v1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object v1

    sget-object v4, Lfa/k$c0;->s:Lfa/k$c0;

    if-eq v1, v4, :cond_3

    .line 8
    iget-object p2, p2, Lfa/c;->j:Lfa/k;

    .line 9
    instance-of v1, p2, Lfa/k$b0;

    if-eqz v1, :cond_4

    .line 10
    iget-object v0, v0, Lfa/c;->j:Lfa/k;

    .line 11
    instance-of v0, v0, Lfa/k$b0;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    check-cast p2, Lfa/k$b0;

    .line 14
    iget p1, p2, Lfa/k$b0;->h:F

    float-to-int p1, p1

    .line 15
    iget v0, p0, Lfb/m;->f:I

    if-eq p1, v0, :cond_3

    .line 16
    iget p1, p2, Lfa/k$b0;->h:F

    float-to-int p1, p1

    .line 17
    iput p1, p0, Lfb/m;->f:I

    goto :goto_2

    .line 18
    :cond_2
    check-cast p2, Lfa/k$b0;

    .line 19
    iget p1, p2, Lfa/k$b0;->h:F

    float-to-int p1, p1

    .line 20
    iget v0, p0, Lfb/m;->g:I

    if-eq p1, v0, :cond_3

    .line 21
    iget p1, p2, Lfa/k$b0;->h:F

    float-to-int p1, p1

    .line 22
    iput p1, p0, Lfb/m;->g:I

    goto :goto_2

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    return v2
.end method

.method public final b(Lw9/u1;Lfa/d;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw9/u1;",
            "Lfa/d;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lfa/d;->h:Lfa/c;

    .line 2
    iget-object v1, v0, Lfa/c;->h:Lfb/c;

    .line 3
    iget-object v1, v1, Lfb/c;->h:Ljava/lang/String;

    .line 4
    new-instance v2, Lfd/e;

    const-string v3, "FW_VERSION_CURRENT_LEFT"

    invoke-direct {v2, v3, v1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p2, Lfa/d;->i:Lfa/c;

    .line 6
    iget-object v1, v1, Lfa/c;->h:Lfb/c;

    .line 7
    iget-object v1, v1, Lfb/c;->h:Ljava/lang/String;

    .line 8
    new-instance v3, Lfd/e;

    const-string v4, "FW_VERSION_CURRENT_RIGHT"

    invoke-direct {v3, v4, v1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iget-object v0, v0, Lfa/c;->i:Lfa/n;

    .line 10
    invoke-virtual {v0}, Lfa/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lfd/e;

    const-string v4, "FW_VERSION_TARGET_LEFT"

    invoke-direct {v1, v4, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    iget-object v0, p2, Lfa/d;->i:Lfa/c;

    .line 13
    iget-object v0, v0, Lfa/c;->i:Lfa/n;

    .line 14
    invoke-virtual {v0}, Lfa/n;->b()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v4, Lfd/e;

    const-string v5, "FW_VERSION_TARGET_RIGHT"

    invoke-direct {v4, v5, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lfb/m;->a:Lea/m;

    .line 17
    iget-object v5, v0, Lea/m;->k:Lea/b;

    .line 18
    iget-object v5, v5, Lea/b;->j:Ljava/lang/String;

    .line 19
    new-instance v6, Lfd/e;

    const-string v7, "LEFT_IDENTIFIER"

    invoke-direct {v6, v7, v5}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 21
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    .line 22
    new-instance v5, Lfd/e;

    const-string v7, "RIGHT_IDENTIFIER"

    invoke-direct {v5, v7, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lfb/m;->e:Ljava/lang/String;

    .line 24
    new-instance v7, Lfd/e;

    const-string v8, "FW_UPGRADE_UUID"

    invoke-direct {v7, v8, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lfb/m;->i:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 26
    new-instance v8, Lfd/e;

    const-string v9, "FW_DURATION_MILLIS"

    invoke-direct {v8, v9, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lfb/m;->a:Lea/m;

    .line 28
    iget-object v9, v0, Lea/m;->k:Lea/b;

    .line 29
    iget-object v9, v9, Lea/b;->j:Ljava/lang/String;

    .line 30
    iget-object v0, v0, Lea/m;->l:Lea/b;

    .line 31
    iget-object v0, v0, Lea/b;->j:Ljava/lang/String;

    const-string v10, ","

    .line 32
    invoke-static {v9, v10, v0}, La0/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    new-instance v9, Lfd/e;

    const-string v10, "PAIR_IDENTIFIERS"

    invoke-direct {v9, v10, v0}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 34
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lfb/m;->a:Lea/m;

    .line 35
    iget-object v10, v10, Lea/m;->k:Lea/b;

    goto :goto_0

    .line 36
    :cond_0
    iget-object v10, p0, Lfb/m;->a:Lea/m;

    .line 37
    iget-object v10, v10, Lea/m;->l:Lea/b;

    .line 38
    :goto_0
    iget-object v10, v10, Lea/b;->j:Ljava/lang/String;

    .line 39
    new-instance v11, Lfd/e;

    const-string v12, "CURRENT_IDENTIFIER"

    invoke-direct {v11, v12, v10}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object v11, v0

    :goto_1
    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result v10

    if-eqz v10, :cond_2

    sget-object v10, Lw9/u1;->k:Lw9/u1;

    goto :goto_2

    :cond_2
    sget-object v10, Lw9/u1;->j:Lw9/u1;

    goto :goto_2

    :cond_3
    move-object v10, v0

    :goto_2
    if-eqz v10, :cond_4

    .line 41
    invoke-virtual {p0, v10, p2}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object p2

    .line 42
    new-instance v10, Lfd/e;

    const-string v12, "FW_UPGRADE_TELEMETRY_OTHER"

    invoke-direct {v10, v12, p2}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    move-object v10, v0

    :goto_3
    if-eqz p1, :cond_6

    .line 43
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lfb/m;->c:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lfb/m;->d:Ljava/lang/String;

    .line 44
    :goto_4
    new-instance v0, Lfd/e;

    const-string p2, "FW_UPGRADE_LE_UUID"

    invoke-direct {v0, p2, p1}, Lfd/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6
    const/16 p1, 0x9

    new-array p1, p1, [Lfd/e;

    const/4 p2, 0x0

    aput-object v2, p1, p2

    const/4 p2, 0x1

    aput-object v3, p1, p2

    const/4 p2, 0x2

    aput-object v1, p1, p2

    const/4 p2, 0x3

    aput-object v4, p1, p2

    const/4 p2, 0x4

    aput-object v6, p1, p2

    const/4 p2, 0x5

    aput-object v5, p1, p2

    const/4 p2, 0x6

    aput-object v7, p1, p2

    const/4 p2, 0x7

    aput-object v8, p1, p2

    const/16 p2, 0x8

    aput-object v9, p1, p2

    .line 45
    invoke-static {p1}, Lgd/z;->A([Lfd/e;)Ljava/util/Map;

    move-result-object p1

    if-eqz v11, :cond_7

    .line 46
    iget-object p2, v11, Lfd/e;->h:Ljava/lang/Object;

    .line 47
    iget-object v1, v11, Lfd/e;->i:Ljava/lang/Object;

    .line 48
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz v10, :cond_8

    .line 49
    iget-object p2, v10, Lfd/e;->h:Ljava/lang/Object;

    .line 50
    iget-object v1, v10, Lfd/e;->i:Ljava/lang/Object;

    .line 51
    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    if-eqz v0, :cond_9

    .line 52
    iget-object p2, v0, Lfd/e;->h:Ljava/lang/Object;

    .line 53
    iget-object v0, v0, Lfd/e;->i:Ljava/lang/Object;

    .line 54
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-object p1
.end method

.method public final c(Lw9/u1;Lfa/d;)Ljava/lang/String;
    .locals 1

    const-string v0, "shoe"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p2, Lfa/d;->h:Lfa/c;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p2, Lfa/d;->i:Lfa/c;

    .line 4
    :goto_0
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 5
    instance-of p2, p1, Lfa/k$o;

    if-eqz p2, :cond_1

    const-string p1, "FW_TELEMETRY_START"

    goto/16 :goto_1

    .line 6
    :cond_1
    instance-of p2, p1, Lfa/k$a;

    if-eqz p2, :cond_2

    const-string p1, "FW_ALREADY_UP_TO_DATE"

    goto/16 :goto_1

    .line 7
    :cond_2
    instance-of p2, p1, Lfa/k$x;

    if-eqz p2, :cond_3

    check-cast p1, Lfa/k$x;

    .line 8
    iget-object p1, p1, Lfa/k$x;->h:Ljava/lang/String;

    const-string p2, "FW_UPGRADE_FAIL"

    .line 9
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 10
    :cond_3
    instance-of p2, p1, Lfa/k$m;

    if-eqz p2, :cond_4

    const-string p1, "FW_FLASH_FAIL"

    goto/16 :goto_1

    .line 11
    :cond_4
    instance-of p2, p1, Lfa/k$n;

    if-eqz p2, :cond_5

    const-string p1, "FW_FLASH_SUCCESS"

    goto/16 :goto_1

    .line 12
    :cond_5
    instance-of p2, p1, Lfa/k$y;

    if-eqz p2, :cond_6

    const-string p1, "FW_UPGRADE_COMPLETE"

    goto/16 :goto_1

    .line 13
    :cond_6
    instance-of p2, p1, Lfa/k$r;

    if-eqz p2, :cond_7

    const-string p1, "FW_NO_UPGRADE_IN_PROCESS"

    goto/16 :goto_1

    .line 14
    :cond_7
    instance-of p2, p1, Lfa/k$c;

    if-eqz p2, :cond_8

    const-string p1, "FW_CHECK_UPDATE_STATUS"

    goto/16 :goto_1

    .line 15
    :cond_8
    instance-of p2, p1, Lfa/k$t;

    if-eqz p2, :cond_9

    const-string p1, "FW_READY_TO_FLASH"

    goto/16 :goto_1

    .line 16
    :cond_9
    instance-of p2, p1, Lfa/k$u;

    if-eqz p2, :cond_a

    const-string p1, "FW_RECONNECTED"

    goto/16 :goto_1

    .line 17
    :cond_a
    instance-of p2, p1, Lfa/k$b0;

    if-eqz p2, :cond_b

    check-cast p1, Lfa/k$b0;

    .line 18
    iget p1, p1, Lfa/k$b0;->h:F

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FW_UPLOAD_PROGRESS"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " + "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 20
    :cond_b
    instance-of p2, p1, Lfa/k$s;

    if-eqz p2, :cond_c

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FW_LE_POST_UPLOAD_SLOT_CHECK"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 21
    :cond_c
    instance-of p2, p1, Lfa/k$b;

    if-eqz p2, :cond_d

    const-string p1, "FW_BATTERY_TOO_LOW"

    goto/16 :goto_1

    .line 22
    :cond_d
    instance-of p2, p1, Lfa/k$d;

    if-eqz p2, :cond_e

    const-string p1, "FW_STATUS_CHECK_ERROR"

    goto/16 :goto_1

    .line 23
    :cond_e
    instance-of p2, p1, Lfa/k$h;

    if-eqz p2, :cond_f

    const-string p1, "FW_CONNECTION_LOST"

    goto/16 :goto_1

    .line 24
    :cond_f
    instance-of p2, p1, Lfa/k$j;

    if-eqz p2, :cond_10

    const-string p1, "FW_DOWNLOAD_COMPLETE"

    goto/16 :goto_1

    .line 25
    :cond_10
    instance-of p2, p1, Lfa/k$k;

    if-eqz p2, :cond_11

    const-string p1, "FW_DOWNLOAD_FAIL"

    goto/16 :goto_1

    .line 26
    :cond_11
    instance-of p2, p1, Lfa/k$l;

    if-eqz p2, :cond_12

    const-string p1, "FW_DOWNLOAD_START"

    goto/16 :goto_1

    .line 27
    :cond_12
    instance-of p2, p1, Lfa/k$p;

    if-eqz p2, :cond_13

    const-string p1, "FW_MD5_FAIL"

    goto/16 :goto_1

    .line 28
    :cond_13
    instance-of p2, p1, Lfa/k$q;

    if-eqz p2, :cond_14

    const-string p1, "FW_MD5_PASS"

    goto/16 :goto_1

    .line 29
    :cond_14
    instance-of p2, p1, Lfa/k$v;

    if-eqz p2, :cond_15

    const-string p1, "FW_UP_TO_DATE"

    goto :goto_1

    .line 30
    :cond_15
    instance-of p2, p1, Lfa/k$w;

    if-eqz p2, :cond_16

    const-string p1, "FW_UPGRADE_AVAILABLE"

    goto :goto_1

    .line 31
    :cond_16
    instance-of p2, p1, Lfa/k$z;

    if-eqz p2, :cond_17

    const-string p1, "FW_UPLOAD_COMPLETE"

    goto :goto_1

    .line 32
    :cond_17
    instance-of p2, p1, Lfa/k$a0$b;

    if-eqz p2, :cond_18

    check-cast p1, Lfa/k$a0$b;

    .line 33
    iget-object p1, p1, Lfa/k$a0$b;->i:Ljava/lang/String;

    const-string p2, "FW_UPLOAD_STOPPED"

    .line 34
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 35
    :cond_18
    instance-of p2, p1, Lfa/k$a0$a;

    if-eqz p2, :cond_19

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FW_LE_UP_LOAD_SLOT_CHECK_FAIL"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 36
    :cond_19
    instance-of p2, p1, Lfa/k$a0$c;

    if-eqz p2, :cond_1a

    const-string p1, "FW_UPLOAD_USER_CANCEL"

    goto :goto_1

    .line 37
    :cond_1a
    instance-of p2, p1, Lfa/k$g;

    if-eqz p2, :cond_1b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FW_CHECK_UPGRADE_SLOTS"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 38
    :cond_1b
    instance-of p2, p1, Lfa/k$e;

    if-eqz p2, :cond_1c

    const-string p1, "FW_UPGRADE_SLOT_CHECK_ALREADY_STAGED"

    goto :goto_1

    .line 39
    :cond_1c
    instance-of p1, p1, Lfa/k$f;

    if-eqz p1, :cond_1d

    const-string p1, "FW_UPGRADE_SLOT_CHECK_UPLOAD_REQUIRED"

    :goto_1
    return-object p1

    :cond_1d
    new-instance p1, Lj2/a;

    invoke-direct {p1}, Lj2/a;-><init>()V

    throw p1
.end method

.method public final d(Lw9/u1;Lfa/d;)V
    .locals 8

    .line 1
    iget-object v0, p2, Lfa/d;->i:Lfa/c;

    .line 2
    iget-object v0, v0, Lfa/c;->j:Lfa/k;

    .line 3
    instance-of v0, v0, Lfa/k$r;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p2, Lfa/d;->h:Lfa/c;

    .line 5
    iget-object v0, v0, Lfa/c;->j:Lfa/k;

    .line 6
    instance-of v0, v0, Lfa/k$r;

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "FW_TELEMETRY"

    const-string v3, "Attempting to log states when upgrade not started"

    invoke-static/range {v1 .. v6}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget v0, p0, Lfb/m;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9
    invoke-static {}, Ld3/e;->j()Lfb/e;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "FW_TELEMETRY"

    const-string v4, "Attempting to log states when upgrade has already been marked completed"

    invoke-static/range {v2 .. v7}, Lv9/d$a;->b(Lv9/d;Ljava/lang/String;Ljava/lang/String;Lv9/m;ILjava/lang/Object;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    sget-object p1, Lw9/u1;->j:Lw9/u1;

    .line 12
    invoke-virtual {p0, p1, p2}, Lfb/m;->a(Lw9/u1;Lfa/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {p0, p1, p2}, Lfb/m;->f(Lw9/u1;Lfa/d;)V

    .line 14
    :cond_3
    sget-object p1, Lw9/u1;->k:Lw9/u1;

    .line 15
    invoke-virtual {p0, p1, p2}, Lfb/m;->a(Lw9/u1;Lfa/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 16
    :cond_4
    sget-object p1, Lw9/u1;->k:Lw9/u1;

    .line 17
    invoke-virtual {p0, p1, p2}, Lfb/m;->a(Lw9/u1;Lfa/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 18
    :cond_5
    sget-object p1, Lw9/u1;->j:Lw9/u1;

    .line 19
    invoke-virtual {p0, p1, p2}, Lfb/m;->a(Lw9/u1;Lfa/d;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 20
    :goto_0
    invoke-virtual {p0, p1, p2}, Lfb/m;->f(Lw9/u1;Lfa/d;)V

    .line 21
    :cond_6
    :goto_1
    iget-object p1, p2, Lfa/d;->h:Lfa/c;

    .line 22
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 23
    invoke-interface {p1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p1

    invoke-virtual {p1}, Lfa/k$c0;->b()Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_9

    .line 24
    iget-object p1, p2, Lfa/d;->i:Lfa/c;

    .line 25
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 26
    invoke-interface {p1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p1

    invoke-virtual {p1}, Lfa/k$c0;->b()Z

    move-result p1

    if-nez p1, :cond_9

    .line 27
    iget-object p1, p2, Lfa/d;->h:Lfa/c;

    .line 28
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 29
    invoke-interface {p1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v3, Lfa/k$c0;->o:Lfa/k$c0;

    if-ne p1, v3, :cond_7

    move p1, v0

    goto :goto_2

    :cond_7
    move p1, v2

    :goto_2
    if-eqz p1, :cond_f

    .line 31
    iget-object p1, p2, Lfa/d;->i:Lfa/c;

    .line 32
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 33
    invoke-interface {p1}, Lfa/k;->h()Lfa/k$c0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne p1, v3, :cond_8

    move p1, v0

    goto :goto_3

    :cond_8
    move p1, v2

    :goto_3
    if-eqz p1, :cond_f

    .line 34
    :cond_9
    iput v1, p0, Lfb/m;->h:I

    .line 35
    iget-object p1, p2, Lfa/d;->h:Lfa/c;

    .line 36
    iget-object p1, p1, Lfa/c;->j:Lfa/k;

    .line 37
    instance-of v1, p1, Lfa/k$a;

    if-nez v1, :cond_b

    .line 38
    instance-of v3, p1, Lfa/k$y;

    if-eqz v3, :cond_a

    goto :goto_4

    :cond_a
    move v3, v2

    goto :goto_5

    :cond_b
    :goto_4
    move v3, v0

    :goto_5
    if-nez v1, :cond_d

    .line 39
    instance-of p1, p1, Lfa/k$y;

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    move v0, v2

    :cond_d
    :goto_6
    const/4 p1, 0x0

    .line 40
    invoke-virtual {p0, p1, p2}, Lfb/m;->b(Lw9/u1;Lfa/d;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "FW_UPGRADE_TELEMETRY"

    if-eqz v0, :cond_e

    if-eqz v3, :cond_e

    const-string v0, "FW_UPGRADE_OVERALL_SUCCESSFUL"

    .line 41
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_e
    const-string v0, "FW_UPGRADE_OVERALL_FAILED"

    .line 42
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :goto_7
    sget-object v0, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {p0, v0, p2}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FW_STATE_LEFT"

    .line 44
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lw9/u1;->k:Lw9/u1;

    invoke-virtual {p0, v0, p2}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "FW_STATE_RIGHT"

    .line 46
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, p1}, Lfb/m;->e(Ljava/util/Map;)V

    :cond_f
    return-void
.end method

.method public final e(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lfb/m;->b:Leb/e;

    const/4 v1, 0x1

    new-array v1, v1, [Leb/g;

    new-instance v2, Leb/c;

    new-instance v3, Lfb/m$a;

    invoke-direct {v3, p1}, Lfb/m$a;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v3}, Leb/c;-><init>(Leb/d;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    invoke-interface {v0, v1}, Leb/e;->a([Leb/g;)V

    return-void
.end method

.method public final f(Lw9/u1;Lfa/d;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lw9/u1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p2, Lfa/d;->h:Lfa/c;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p2, Lfa/d;->i:Lfa/c;

    .line 4
    :goto_0
    iget-object v1, p0, Lfb/m;->k:Lfa/d;

    .line 5
    iget-object v2, v1, Lfa/d;->h:Lfa/c;

    iget-object v1, v1, Lfa/d;->i:Lfa/c;

    const-string v3, "leftFirmwareUpdate"

    .line 6
    invoke-static {v2, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rightFirmwareUpdate"

    invoke-static {v1, v3}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lfa/d;

    invoke-direct {v3, v2, v1}, Lfa/d;-><init>(Lfa/c;Lfa/c;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lfb/m;->b(Lw9/u1;Lfa/d;)Ljava/util/Map;

    move-result-object v1

    .line 8
    invoke-virtual {p0, p1, p2}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FW_UPGRADE_TELEMETRY"

    .line 9
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, v0, Lfa/c;->j:Lfa/k;

    .line 11
    instance-of p2, p1, Lfa/f;

    if-eqz p2, :cond_1

    .line 12
    move-object p2, p1

    check-cast p2, Lfa/f;

    invoke-interface {p2}, Lfa/f;->getBattery()Lba/e;

    move-result-object v0

    .line 13
    iget v0, v0, Lba/e;->h:I

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "BATTERY_PERCENT"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {p2}, Lfa/f;->getBattery()Lba/e;

    move-result-object p2

    .line 16
    iget-object p2, p2, Lba/e;->i:Lba/e$b;

    .line 17
    iget-object p2, p2, Lba/e$b;->h:Ljava/lang/String;

    const-string v0, "BATTERY_STATE"

    .line 18
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "BATTERY_THRESHOLD"

    const-string v0, "30"

    .line 19
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_1
    instance-of p2, p1, Lfa/o;

    if-eqz p2, :cond_2

    .line 21
    move-object p2, p1

    check-cast p2, Lfa/o;

    .line 22
    invoke-interface {p2}, Lfa/o;->y()Lfa/l$d;

    move-result-object v0

    .line 23
    iget-object v0, v0, Lfa/l$d;->h:Lfa/l$c;

    .line 24
    invoke-virtual {v0}, Lfa/l$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FW_MCU_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-interface {p2}, Lfa/o;->p()Lfa/l$a;

    move-result-object v0

    .line 26
    iget-object v0, v0, Lfa/l$a;->h:Lfa/l$c;

    .line 27
    invoke-virtual {v0}, Lfa/l$c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FW_BLE_STATE"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    invoke-interface {p2}, Lfa/o;->o()Lfa/l$b;

    move-result-object p2

    .line 29
    iget-object p2, p2, Lfa/l$b;->h:Lfa/l$c;

    .line 30
    invoke-virtual {p2}, Lfa/l$c;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FW_CAPSENSE_STATE"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_2
    instance-of p2, p1, Lfa/h;

    if-eqz p2, :cond_3

    .line 32
    move-object p2, p1

    check-cast p2, Lfa/h;

    invoke-interface {p2}, Lfa/h;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FW_ERROR_MESSAGE"

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_3
    instance-of p1, p1, Lfa/k$h;

    if-eqz p1, :cond_4

    .line 34
    sget-object p1, Lw9/u1;->j:Lw9/u1;

    invoke-virtual {p0, p1, v3}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FW_STATE_LEFT"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p1, Lw9/u1;->k:Lw9/u1;

    invoke-virtual {p0, p1, v3}, Lfb/m;->c(Lw9/u1;Lfa/d;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FW_STATE_RIGHT"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_4
    invoke-virtual {p0, v1}, Lfb/m;->e(Ljava/util/Map;)V

    return-void
.end method

.method public final g(Ljava/util/Map;Lw9/u1;Lea/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lw9/u1;",
            "Lea/m;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "CURRENT_IDENTIFIER"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lgd/z;->F(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 3
    iget-object v1, p3, Lea/m;->k:Lea/b;

    .line 4
    iget-object v1, v1, Lea/b;->j:Ljava/lang/String;

    .line 5
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0, p2}, Lfb/m;->e(Ljava/util/Map;)V

    .line 7
    invoke-static {p1}, Lgd/z;->F(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object p2, p3, Lea/m;->l:Lea/b;

    .line 9
    iget-object p2, p2, Lea/b;->j:Ljava/lang/String;

    .line 10
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p1}, Lfb/m;->e(Ljava/util/Map;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p3, Lea/m;->l:Lea/b;

    .line 13
    iget-object p2, p2, Lea/b;->j:Ljava/lang/String;

    .line 14
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0, p1}, Lfb/m;->e(Ljava/util/Map;)V

    goto :goto_0

    .line 16
    :cond_2
    iget-object p2, p3, Lea/m;->k:Lea/b;

    .line 17
    iget-object p2, p2, Lea/b;->j:Ljava/lang/String;

    .line 18
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0, p1}, Lfb/m;->e(Ljava/util/Map;)V

    :goto_0
    return-void
.end method
