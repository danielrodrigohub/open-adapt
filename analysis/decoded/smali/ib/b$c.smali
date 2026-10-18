.class public final Lib/b$c;
.super Ly0/p;
.source "TelemetryDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/b;-><init>(Ly0/d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly0/p<",
        "Lkb/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lib/b;


# direct methods
.method public constructor <init>(Lib/b;Ly0/d0;)V
    .locals 0

    iput-object p1, p0, Lib/b$c;->d:Lib/b;

    invoke-direct {p0, p2}, Ly0/p;-><init>(Ly0/d0;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "UPDATE OR REPLACE `nike_telemetry` SET `id` = ?,`timestamp` = ?,`message` = ?,`event_type` = ?,`session_id` = ?,`app_id` = ?,`app_version` = ?,`device_model` = ?,`os_version` = ?,`library_id` = ?,`library_version` = ?,`timezone` = ?,`user_id` = ?,`attributes` = ?,`sync_in_progress` = ?,`prompted_sync` = ?,`attempt_to_sync_count` = ?,`telemetry_uuid` = ? WHERE `id` = ?"

    return-object v0
.end method

.method public final e(Ld1/g;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lkb/a;

    .line 2
    iget-wide v0, p2, Lkb/a;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ld1/e;->K(IJ)V

    .line 4
    iget-wide v0, p2, Lkb/a;->b:J

    const/4 v2, 0x2

    .line 5
    invoke-interface {p1, v2, v0, v1}, Ld1/e;->K(IJ)V

    .line 6
    iget-object v0, p2, Lkb/a;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 7
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lib/b$c;->d:Lib/b;

    iget-object v0, v0, Lib/b;->c:Landroidx/lifecycle/m0;

    .line 10
    iget v1, p2, Lkb/a;->d:I

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "eventType"

    .line 12
    invoke-static {v1, v0}, Landroidx/appcompat/widget/o;->d(ILjava/lang/String;)V

    .line 13
    invoke-static {v1}, Lq/g;->a(I)I

    move-result v0

    const/4 v1, 0x4

    int-to-long v2, v0

    .line 14
    invoke-interface {p1, v1, v2, v3}, Ld1/e;->K(IJ)V

    .line 15
    iget-object v0, p2, Lkb/a;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_1

    .line 16
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 18
    :goto_1
    iget-object v0, p2, Lkb/a;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_2

    .line 19
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_2

    .line 20
    :cond_2
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 21
    :goto_2
    iget-object v0, p2, Lkb/a;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 22
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_3

    .line 23
    :cond_3
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 24
    :goto_3
    iget-object v0, p2, Lkb/a;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 27
    :goto_4
    iget-object v0, p2, Lkb/a;->i:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_5

    .line 28
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_5

    .line 29
    :cond_5
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 30
    :goto_5
    iget-object v0, p2, Lkb/a;->j:Ljava/lang/String;

    const/16 v1, 0xa

    if-nez v0, :cond_6

    .line 31
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_6

    .line 32
    :cond_6
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 33
    :goto_6
    iget-object v0, p2, Lkb/a;->k:Ljava/lang/String;

    const/16 v1, 0xb

    if-nez v0, :cond_7

    .line 34
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_7

    .line 35
    :cond_7
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 36
    :goto_7
    iget-object v0, p2, Lkb/a;->l:Ljava/lang/String;

    const/16 v1, 0xc

    if-nez v0, :cond_8

    .line 37
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_8

    .line 38
    :cond_8
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 39
    :goto_8
    iget-object v0, p2, Lkb/a;->m:Ljava/lang/String;

    const/16 v1, 0xd

    if-nez v0, :cond_9

    .line 40
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_9

    .line 41
    :cond_9
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 42
    :goto_9
    iget-object v0, p0, Lib/b$c;->d:Lib/b;

    iget-object v0, v0, Lib/b;->d:Lhb/a;

    .line 43
    iget-object v1, p2, Lkb/a;->n:Ljava/util/Map;

    .line 44
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "map"

    .line 45
    invoke-static {v1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JSONObject(map).toString()"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0xe

    .line 47
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    .line 48
    iget-boolean v0, p2, Lkb/a;->o:Z

    const/16 v1, 0xf

    int-to-long v2, v0

    .line 49
    invoke-interface {p1, v1, v2, v3}, Ld1/e;->K(IJ)V

    .line 50
    iget-boolean v0, p2, Lkb/a;->p:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    .line 51
    invoke-interface {p1, v1, v2, v3}, Ld1/e;->K(IJ)V

    const/16 v0, 0x11

    .line 52
    iget v1, p2, Lkb/a;->q:I

    int-to-long v1, v1

    .line 53
    invoke-interface {p1, v0, v1, v2}, Ld1/e;->K(IJ)V

    .line 54
    iget-object v0, p2, Lkb/a;->r:Ljava/lang/String;

    const/16 v1, 0x12

    if-nez v0, :cond_a

    .line 55
    invoke-interface {p1, v1}, Ld1/e;->t(I)V

    goto :goto_a

    .line 56
    :cond_a
    invoke-interface {p1, v1, v0}, Ld1/e;->l(ILjava/lang/String;)V

    :goto_a
    const/16 v0, 0x13

    .line 57
    iget-wide v1, p2, Lkb/a;->a:J

    .line 58
    invoke-interface {p1, v0, v1, v2}, Ld1/e;->K(IJ)V

    return-void
.end method
