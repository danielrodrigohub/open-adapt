.class public final Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;
.super Ljava/lang/Object;
.source "AspectRatioFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public h:F

.field public i:F

.field public j:Z

.field public k:Z

.field public final synthetic l:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;->l:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;->k:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$b;->l:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 3
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->i:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout$a;->a()V

    return-void
.end method
