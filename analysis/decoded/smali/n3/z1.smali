.class public final Ln3/z1;
.super Ljava/lang/Object;
.source "StreamVolumeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/z1$b;,
        Ln3/z1$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/os/Handler;

.field public final c:Ln3/z1$a;

.field public final d:Landroid/media/AudioManager;

.field public e:Ln3/z1$b;

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ln3/z1$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ln3/z1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ln3/z1;->b:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Ln3/z1;->c:Ln3/z1$a;

    const-string p2, "audio"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    .line 6
    invoke-static {p2}, Lm5/a;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Ln3/z1;->d:Landroid/media/AudioManager;

    const/4 p3, 0x3

    .line 7
    iput p3, p0, Ln3/z1;->f:I

    .line 8
    invoke-static {p2, p3}, Ln3/z1;->c(Landroid/media/AudioManager;I)I

    move-result p3

    iput p3, p0, Ln3/z1;->g:I

    .line 9
    iget p3, p0, Ln3/z1;->f:I

    invoke-static {p2, p3}, Ln3/z1;->b(Landroid/media/AudioManager;I)Z

    move-result p2

    iput-boolean p2, p0, Ln3/z1;->h:Z

    .line 10
    new-instance p2, Ln3/z1$b;

    invoke-direct {p2, p0}, Ln3/z1$b;-><init>(Ln3/z1;)V

    .line 11
    new-instance p3, Landroid/content/IntentFilter;

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 12
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 13
    iput-object p2, p0, Ln3/z1;->e:Ln3/z1$b;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "StreamVolumeManager"

    const-string p3, "Error registering stream volume receiver"

    .line 14
    invoke-static {p2, p3, p1}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static b(Landroid/media/AudioManager;I)Z
    .locals 2

    .line 1
    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Ln3/z1;->c(Landroid/media/AudioManager;I)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Landroid/media/AudioManager;I)I
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve stream volume for stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StreamVolumeManager"

    invoke-static {v2, v1, v0}, Lm5/p;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    sget v0, Lm5/g0;->a:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ln3/z1;->d:Landroid/media/AudioManager;

    iget v1, p0, Ln3/z1;->f:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(I)V
    .locals 4

    .line 1
    iget v0, p0, Ln3/z1;->f:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Ln3/z1;->f:I

    .line 3
    invoke-virtual {p0}, Ln3/z1;->e()V

    .line 4
    iget-object p1, p0, Ln3/z1;->c:Ln3/z1$a;

    check-cast p1, Ln3/k0$b;

    .line 5
    iget-object v0, p1, Ln3/k0$b;->h:Ln3/k0;

    .line 6
    iget-object v0, v0, Ln3/k0;->B:Ln3/z1;

    .line 7
    new-instance v1, Ln3/o;

    .line 8
    invoke-virtual {v0}, Ln3/z1;->a()I

    move-result v2

    .line 9
    iget-object v3, v0, Ln3/z1;->d:Landroid/media/AudioManager;

    iget v0, v0, Ln3/z1;->f:I

    invoke-virtual {v3, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    const/4 v3, 0x0

    .line 10
    invoke-direct {v1, v3, v2, v0}, Ln3/o;-><init>(III)V

    .line 11
    iget-object v0, p1, Ln3/k0$b;->h:Ln3/k0;

    .line 12
    iget-object v0, v0, Ln3/k0;->g0:Ln3/o;

    .line 13
    invoke-virtual {v1, v0}, Ln3/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    iget-object p1, p1, Ln3/k0$b;->h:Ln3/k0;

    .line 15
    iput-object v1, p1, Ln3/k0;->g0:Ln3/o;

    .line 16
    iget-object p1, p1, Ln3/k0;->l:Lm5/o;

    const/16 v0, 0x1d

    .line 17
    new-instance v2, Ln3/z;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3}, Ln3/z;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, v2}, Lm5/o;->d(ILm5/o$a;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Ln3/z1;->d:Landroid/media/AudioManager;

    iget v1, p0, Ln3/z1;->f:I

    invoke-static {v0, v1}, Ln3/z1;->c(Landroid/media/AudioManager;I)I

    move-result v0

    .line 2
    iget-object v1, p0, Ln3/z1;->d:Landroid/media/AudioManager;

    iget v2, p0, Ln3/z1;->f:I

    invoke-static {v1, v2}, Ln3/z1;->b(Landroid/media/AudioManager;I)Z

    move-result v1

    .line 3
    iget v2, p0, Ln3/z1;->g:I

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Ln3/z1;->h:Z

    if-eq v2, v1, :cond_1

    .line 4
    :cond_0
    iput v0, p0, Ln3/z1;->g:I

    .line 5
    iput-boolean v1, p0, Ln3/z1;->h:Z

    .line 6
    iget-object v2, p0, Ln3/z1;->c:Ln3/z1$a;

    check-cast v2, Ln3/k0$b;

    .line 7
    iget-object v2, v2, Ln3/k0$b;->h:Ln3/k0;

    .line 8
    iget-object v2, v2, Ln3/k0;->l:Lm5/o;

    const/16 v3, 0x1e

    .line 9
    new-instance v4, Ln3/l0;

    invoke-direct {v4, v0, v1}, Ln3/l0;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Lm5/o;->d(ILm5/o$a;)V

    :cond_1
    return-void
.end method
