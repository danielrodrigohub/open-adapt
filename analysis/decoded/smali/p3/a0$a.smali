.class public final Lp3/a0$a;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lp3/q$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lp3/a0;


# direct methods
.method public constructor <init>(Lp3/a0;)V
    .locals 0

    iput-object p1, p0, Lp3/a0$a;->a:Lp3/a0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 1
    invoke-static {v0, v1, p1}, Lm5/p;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lp3/a0$a;->a:Lp3/a0;

    .line 3
    iget-object v0, v0, Lp3/a0;->N0:Lp3/p$a;

    .line 4
    iget-object v1, v0, Lp3/p$a;->a:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    new-instance v2, Lp3/g;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lp3/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
