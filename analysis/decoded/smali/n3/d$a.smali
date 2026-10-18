.class public final Ln3/d$a;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final synthetic b:Ln3/d;


# direct methods
.method public constructor <init>(Ln3/d;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/d$a;->b:Ln3/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ln3/d$a;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 2

    iget-object v0, p0, Ln3/d$a;->a:Landroid/os/Handler;

    new-instance v1, Ln3/c;

    invoke-direct {v1, p0, p1}, Ln3/c;-><init>(Ln3/d$a;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
