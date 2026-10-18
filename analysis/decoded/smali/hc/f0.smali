.class public final Lhc/f0;
.super Ljava/lang/Object;
.source "CoreRFConstants.kt"


# static fields
.field public static a:Ljava/util/UUID;

.field public static b:Ljava/util/UUID;

.field public static c:Ljava/util/UUID;

.field public static d:Ljava/util/UUID;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;

.field public static final i:Ljava/lang/String;

.field public static final j:Ljava/lang/String;

.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;

.field public static final m:Ljava/lang/String;

.field public static final n:Ljava/lang/String;

.field public static final o:Ljava/lang/String;

.field public static final p:Ljava/lang/String;

.field public static final q:Ljava/lang/String;

.field public static final r:Ljava/lang/String;

.field public static final s:Ljava/lang/String;

.field public static final t:Ljava/lang/String;

.field public static final u:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 1
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"00002902-0000-1000-8000-00805f9b34fb\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lhc/f0;->a:Ljava/util/UUID;

    const-string v0, "1A2328AF-3D0B-4B04-A2AA-973C239D3904"

    .line 2
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"1A2328AF-3D0B-4B04-A2AA-973C239D3904\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lhc/f0;->b:Ljava/util/UUID;

    const-string v0, "226BAEA6-1543-40C2-8EAE-A69B02171B08"

    .line 3
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"226BAEA6-1543-40C2-8EAE-A69B02171B08\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lhc/f0;->c:Ljava/util/UUID;

    const-string v0, "30C4142F-B083-42CF-865A-D5B91801BCD7"

    .line 4
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"30C4142F-B083-42CF-865A-D5B91801BCD7\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lhc/f0;->d:Ljava/util/UUID;

    const-string v0, "4D287912-0ADA-45FE-BAFD-010EAF817CD3"

    .line 5
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"4D287912-0ADA-45FE-BAFD-010EAF817CD3\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "2E0E6143-BCAD-4DB4-A4F0-7C8224AB5AB7"

    .line 6
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"2E0E6143-BCAD-4DB4-A4F0-7C8224AB5AB7\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0000180F-0000-1000-8000-00805f9b34fb"

    .line 7
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"0000180F-0000-1000-8000-00805f9b34fb\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    .line 8
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const-string v1, "fromString(\"00002A19-0000-1000-8000-00805f9b34fb\")"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.nike.corerf.update.notification"

    .line 9
    sput-object v0, Lhc/f0;->e:Ljava/lang/String;

    const-string v1, "com.nike.corerf.device.id"

    .line 10
    sput-object v1, Lhc/f0;->f:Ljava/lang/String;

    const-string v1, ".servo_complete"

    .line 11
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    sput-object v1, Lhc/f0;->g:Ljava/lang/String;

    const-string v1, ".key_exchange"

    .line 13
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    sput-object v1, Lhc/f0;->h:Ljava/lang/String;

    const-string v1, ".user_animation_stopped"

    .line 15
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 16
    sput-object v1, Lhc/f0;->i:Ljava/lang/String;

    const-string v1, ".custom_animation_stopped"

    .line 17
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    sput-object v1, Lhc/f0;->j:Ljava/lang/String;

    const-string v1, ".battery"

    .line 19
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    sput-object v1, Lhc/f0;->k:Ljava/lang/String;

    const-string v1, ".session_ended"

    .line 21
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    sput-object v1, Lhc/f0;->l:Ljava/lang/String;

    const-string v1, ".session_data"

    .line 23
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    sput-object v1, Lhc/f0;->m:Ljava/lang/String;

    const-string v1, ".session_aggregate_data"

    .line 25
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    sput-object v1, Lhc/f0;->n:Ljava/lang/String;

    const-string v1, ".session_raw_data"

    .line 27
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    sput-object v1, Lhc/f0;->o:Ljava/lang/String;

    const-string v1, ".session_capsense_data"

    .line 29
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 30
    sput-object v1, Lhc/f0;->p:Ljava/lang/String;

    const-string v1, ".session_temperature_data"

    .line 31
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    sput-object v1, Lhc/f0;->q:Ljava/lang/String;

    const-string v1, ".auto_fit_session_activity_classification"

    .line 33
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    sput-object v1, Lhc/f0;->r:Ljava/lang/String;

    const-string v1, ".auto_fit_session_state_classification"

    .line 35
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    sput-object v1, Lhc/f0;->s:Ljava/lang/String;

    const-string v1, ".gesture_event"

    .line 37
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38
    sput-object v1, Lhc/f0;->t:Ljava/lang/String;

    const-string v1, ".debug_text"

    .line 39
    invoke-static {v0, v1}, Landroidx/recyclerview/widget/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    sput-object v0, Lhc/f0;->u:Ljava/lang/String;

    return-void
.end method
