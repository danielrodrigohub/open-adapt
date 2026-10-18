.class public final Ln5/l$c;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Ln5/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln5/l$c;->a:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Ln5/l$b$a;)V
    .locals 1

    iget-object v0, p0, Ln5/l$c;->a:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    check-cast p1, Ly0/c0;

    invoke-virtual {p1, v0}, Ly0/c0;->b(Landroid/view/Display;)V

    return-void
.end method
